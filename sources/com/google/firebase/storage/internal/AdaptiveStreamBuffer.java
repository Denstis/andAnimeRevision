package com.google.firebase.storage.internal;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class AdaptiveStreamBuffer {
    private static final String TAG = "AdaptiveStreamBuffer";
    private static final Runtime runtime = Runtime.getRuntime();
    private byte[] buffer;
    private final InputStream source;
    private int availableBytes = 0;
    private boolean adaptiveMode = true;
    private boolean reachedEnd = false;

    public AdaptiveStreamBuffer(InputStream inputStream, int i2) {
        this.source = inputStream;
        this.buffer = new byte[i2];
    }

    private int resize(int i2) {
        int iMax = Math.max(this.buffer.length * 2, i2);
        long jMaxMemory = runtime.maxMemory() - (runtime.totalMemory() - runtime.freeMemory());
        if (!this.adaptiveMode || iMax >= jMaxMemory) {
            Log.w(TAG, "Turning off adaptive buffer resizing to conserve memory.");
        } else {
            try {
                byte[] bArr = new byte[iMax];
                System.arraycopy(this.buffer, 0, bArr, 0, this.availableBytes);
                this.buffer = bArr;
            } catch (OutOfMemoryError unused) {
                Log.w(TAG, "Turning off adaptive buffer resizing due to low memory.");
                this.adaptiveMode = false;
            }
        }
        return this.buffer.length;
    }

    public int advance(int i2) {
        int i3 = this.availableBytes;
        if (i2 <= i3) {
            this.availableBytes = i3 - i2;
            byte[] bArr = this.buffer;
            System.arraycopy(bArr, i2, bArr, 0, this.availableBytes);
            return i2;
        }
        this.availableBytes = 0;
        int i4 = this.availableBytes;
        while (i4 < i2) {
            int iSkip = (int) this.source.skip(i2 - i4);
            if (iSkip > 0) {
                i4 += iSkip;
            } else if (iSkip != 0) {
                continue;
            } else {
                if (this.source.read() == -1) {
                    break;
                }
                i4++;
            }
        }
        return i4;
    }

    public int available() {
        return this.availableBytes;
    }

    public void close() throws IOException {
        this.source.close();
    }

    public int fill(int i2) throws IOException {
        if (i2 > this.buffer.length) {
            i2 = Math.min(i2, resize(i2));
        }
        while (true) {
            int i3 = this.availableBytes;
            if (i3 >= i2) {
                break;
            }
            int i4 = this.source.read(this.buffer, i3, i2 - i3);
            if (i4 == -1) {
                this.reachedEnd = true;
                break;
            }
            this.availableBytes += i4;
        }
        return this.availableBytes;
    }

    public byte[] get() {
        return this.buffer;
    }

    public boolean isFinished() {
        return this.reachedEnd;
    }
}
