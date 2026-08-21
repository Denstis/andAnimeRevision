package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.OutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import java.lang.Exception;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends OutputBuffer, E extends Exception> implements Decoder<I, O, E> {
    private int availableInputBufferCount;
    private final I[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final O[] availableOutputBuffers;
    private final Thread decodeThread;
    private I dequeuedInputBuffer;
    private E exception;
    private boolean flushed;
    private final Object lock = new Object();
    private final ArrayDeque<I> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<O> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    protected SimpleDecoder(I[] iArr, O[] oArr) {
        this.availableInputBuffers = iArr;
        this.availableInputBufferCount = iArr.length;
        for (int i2 = 0; i2 < this.availableInputBufferCount; i2++) {
            ((I[]) this.availableInputBuffers)[i2] = createInputBuffer();
        }
        this.availableOutputBuffers = oArr;
        this.availableOutputBufferCount = oArr.length;
        for (int i3 = 0; i3 < this.availableOutputBufferCount; i3++) {
            ((O[]) this.availableOutputBuffers)[i3] = createOutputBuffer();
        }
        this.decodeThread = new Thread() { // from class: com.google.android.exoplayer2.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder.this.run();
            }
        };
        this.decodeThread.start();
    }

    private boolean canDecodeBuffer() {
        return !this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0;
    }

    private boolean decode() {
        synchronized (this.lock) {
            while (!this.released && !canDecodeBuffer()) {
                this.lock.wait();
            }
            if (this.released) {
                return false;
            }
            I iRemoveFirst = this.queuedInputBuffers.removeFirst();
            O[] oArr = this.availableOutputBuffers;
            int i2 = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i2;
            O o = oArr[i2];
            boolean z = this.flushed;
            this.flushed = false;
            if (iRemoveFirst.isEndOfStream()) {
                o.addFlag(4);
            } else {
                if (iRemoveFirst.isDecodeOnly()) {
                    o.addFlag(Integer.MIN_VALUE);
                }
                try {
                    this.exception = (E) decode(iRemoveFirst, o, z);
                } catch (OutOfMemoryError | RuntimeException e2) {
                    this.exception = (E) createUnexpectedDecodeException(e2);
                }
                if (this.exception != null) {
                    synchronized (this.lock) {
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                if (this.flushed) {
                    o.release();
                    releaseInputBufferInternal(iRemoveFirst);
                } else if (o.isDecodeOnly()) {
                    this.skippedOutputBufferCount++;
                    o.release();
                    releaseInputBufferInternal(iRemoveFirst);
                } else {
                    o.skippedOutputBufferCount = this.skippedOutputBufferCount;
                    this.skippedOutputBufferCount = 0;
                    this.queuedOutputBuffers.addLast(o);
                    releaseInputBufferInternal(iRemoveFirst);
                }
            }
            return true;
        }
    }

    private void maybeNotifyDecodeLoop() {
        if (canDecodeBuffer()) {
            this.lock.notify();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends java.lang.Exception */
    private void maybeThrowException() throws E {
        E e2 = this.exception;
        if (e2 != null) {
            throw e2;
        }
    }

    private void releaseInputBufferInternal(I i2) {
        i2.clear();
        I[] iArr = this.availableInputBuffers;
        int i3 = this.availableInputBufferCount;
        this.availableInputBufferCount = i3 + 1;
        iArr[i3] = i2;
    }

    private void releaseOutputBufferInternal(O o) {
        o.clear();
        O[] oArr = this.availableOutputBuffers;
        int i2 = this.availableOutputBufferCount;
        this.availableOutputBufferCount = i2 + 1;
        oArr[i2] = o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        do {
            try {
            } catch (InterruptedException e2) {
                throw new IllegalStateException(e2);
            }
        } while (decode());
    }

    protected abstract I createInputBuffer();

    protected abstract O createOutputBuffer();

    protected abstract E createUnexpectedDecodeException(Throwable th);

    protected abstract E decode(I i2, O o, boolean z);

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final I dequeueInputBuffer() {
        I i2;
        I i3;
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkState(this.dequeuedInputBuffer == null);
            if (this.availableInputBufferCount == 0) {
                i2 = null;
            } else {
                I[] iArr = this.availableInputBuffers;
                int i4 = this.availableInputBufferCount - 1;
                this.availableInputBufferCount = i4;
                i2 = iArr[i4];
            }
            this.dequeuedInputBuffer = i2;
            i3 = this.dequeuedInputBuffer;
        }
        return i3;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final O dequeueOutputBuffer() {
        synchronized (this.lock) {
            maybeThrowException();
            if (this.queuedOutputBuffers.isEmpty()) {
                return null;
            }
            return this.queuedOutputBuffers.removeFirst();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final void flush() {
        synchronized (this.lock) {
            this.flushed = true;
            this.skippedOutputBufferCount = 0;
            if (this.dequeuedInputBuffer != null) {
                releaseInputBufferInternal(this.dequeuedInputBuffer);
                this.dequeuedInputBuffer = null;
            }
            while (!this.queuedInputBuffers.isEmpty()) {
                releaseInputBufferInternal(this.queuedInputBuffers.removeFirst());
            }
            while (!this.queuedOutputBuffers.isEmpty()) {
                this.queuedOutputBuffers.removeFirst().release();
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final void queueInputBuffer(I i2) {
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkArgument(i2 == this.dequeuedInputBuffer);
            this.queuedInputBuffers.addLast(i2);
            maybeNotifyDecodeLoop();
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    protected void releaseOutputBuffer(O o) {
        synchronized (this.lock) {
            releaseOutputBufferInternal(o);
            maybeNotifyDecodeLoop();
        }
    }

    protected final void setInitialInputBufferSize(int i2) {
        Assertions.checkState(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (I i3 : this.availableInputBuffers) {
            i3.ensureSpaceForWrite(i2);
        }
    }
}
