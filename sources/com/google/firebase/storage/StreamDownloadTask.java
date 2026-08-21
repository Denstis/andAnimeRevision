package com.google.firebase.storage;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
import com.google.firebase.storage.network.GetNetworkRequest;
import com.google.firebase.storage.network.NetworkRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class StreamDownloadTask extends StorageTask<TaskSnapshot> {
    static final long PREFERRED_CHUNK_SIZE = 262144;
    private static final String TAG = "StreamDownloadTask";
    private long bytesDownloaded;
    private long bytesDownloadedSnapped;
    private String eTagVerification;
    private InputStream inputStream;
    private StreamProcessor processor;
    private NetworkRequest request;
    private ExponentialBackoffSender sender;
    private StorageReference storageRef;
    private volatile Exception exception = null;
    private volatile int resultCode = 0;
    private long totalBytes = -1;

    public interface StreamProcessor {
        void doInBackground(TaskSnapshot taskSnapshot, InputStream inputStream);
    }

    static class StreamProgressWrapper extends InputStream {
        private long mDownloadedBytes;
        private Callable<InputStream> mInputStreamCallable;
        private long mLastExceptionPosition;
        private StreamDownloadTask mParentTask;
        private boolean mStreamClosed;
        private IOException mTemporaryException;
        private InputStream mWrappedStream;

        StreamProgressWrapper(Callable<InputStream> callable, StreamDownloadTask streamDownloadTask) {
            this.mParentTask = streamDownloadTask;
            this.mInputStreamCallable = callable;
        }

        private void checkCancel() throws CancelException {
            StreamDownloadTask streamDownloadTask = this.mParentTask;
            if (streamDownloadTask != null && streamDownloadTask.getInternalState() == 32) {
                throw new CancelException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean ensureStream() throws IOException {
            checkCancel();
            if (this.mTemporaryException != null) {
                try {
                    if (this.mWrappedStream != null) {
                        this.mWrappedStream.close();
                    }
                } catch (IOException unused) {
                }
                this.mWrappedStream = null;
                if (this.mLastExceptionPosition == this.mDownloadedBytes) {
                    Log.i(StreamDownloadTask.TAG, "Encountered exception during stream operation. Aborting.", this.mTemporaryException);
                    return false;
                }
                Log.i(StreamDownloadTask.TAG, "Encountered exception during stream operation. Retrying at " + this.mDownloadedBytes, this.mTemporaryException);
                this.mLastExceptionPosition = this.mDownloadedBytes;
                this.mTemporaryException = null;
            }
            if (this.mStreamClosed) {
                throw new IOException("Can't perform operation on closed stream");
            }
            if (this.mWrappedStream != null) {
                return true;
            }
            try {
                this.mWrappedStream = this.mInputStreamCallable.call();
                return true;
            } catch (Exception e2) {
                if (e2 instanceof IOException) {
                    throw ((IOException) e2);
                }
                throw new IOException("Unable to open stream", e2);
            }
        }

        private void recordDownloadedBytes(long j2) {
            StreamDownloadTask streamDownloadTask = this.mParentTask;
            if (streamDownloadTask != null) {
                streamDownloadTask.recordDownloadedBytes(j2);
            }
            this.mDownloadedBytes += j2;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            while (ensureStream()) {
                try {
                    return this.mWrappedStream.available();
                } catch (IOException e2) {
                    this.mTemporaryException = e2;
                }
            }
            throw this.mTemporaryException;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.mWrappedStream;
            if (inputStream != null) {
                inputStream.close();
            }
            this.mStreamClosed = true;
            StreamDownloadTask streamDownloadTask = this.mParentTask;
            if (streamDownloadTask != null && streamDownloadTask.request != null) {
                this.mParentTask.request.performRequestEnd();
                this.mParentTask.request = null;
            }
            checkCancel();
        }

        @Override // java.io.InputStream
        public void mark(int i2) {
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            while (ensureStream()) {
                try {
                    int i2 = this.mWrappedStream.read();
                    if (i2 != -1) {
                        recordDownloadedBytes(1L);
                    }
                    return i2;
                } catch (IOException e2) {
                    this.mTemporaryException = e2;
                }
            }
            throw this.mTemporaryException;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = 0;
            while (ensureStream()) {
                while (i3 > StreamDownloadTask.PREFERRED_CHUNK_SIZE) {
                    try {
                        int i5 = this.mWrappedStream.read(bArr, i2, 262144);
                        if (i5 == -1) {
                            if (i4 == 0) {
                                return -1;
                            }
                            return i4;
                        }
                        i4 += i5;
                        i2 += i5;
                        i3 -= i5;
                        recordDownloadedBytes(i5);
                        checkCancel();
                    } catch (IOException e2) {
                        this.mTemporaryException = e2;
                    }
                }
                if (i3 > 0) {
                    int i6 = this.mWrappedStream.read(bArr, i2, i3);
                    if (i6 == -1) {
                        if (i4 == 0) {
                            return -1;
                        }
                        return i4;
                    }
                    i2 += i6;
                    i4 += i6;
                    i3 -= i6;
                    recordDownloadedBytes(i6);
                }
                if (i3 == 0) {
                    return i4;
                }
            }
            throw this.mTemporaryException;
        }

        @Override // java.io.InputStream
        public long skip(long j2) throws IOException {
            long j3 = j2;
            long j4 = 0;
            while (ensureStream()) {
                while (j3 > StreamDownloadTask.PREFERRED_CHUNK_SIZE) {
                    try {
                        long jSkip = this.mWrappedStream.skip(StreamDownloadTask.PREFERRED_CHUNK_SIZE);
                        if (jSkip < 0) {
                            if (j4 == 0) {
                                return -1L;
                            }
                            return j4;
                        }
                        j4 += jSkip;
                        j3 -= jSkip;
                        recordDownloadedBytes(jSkip);
                        checkCancel();
                    } catch (IOException e2) {
                        this.mTemporaryException = e2;
                    }
                }
                if (j3 > 0) {
                    long jSkip2 = this.mWrappedStream.skip(j3);
                    if (jSkip2 < 0) {
                        if (j4 == 0) {
                            return -1L;
                        }
                        return j4;
                    }
                    j4 += jSkip2;
                    j3 -= jSkip2;
                    recordDownloadedBytes(jSkip2);
                }
                if (j3 == 0) {
                    return j4;
                }
            }
            throw this.mTemporaryException;
        }
    }

    public class TaskSnapshot extends StorageTask<TaskSnapshot>.SnapshotBase {
        private final long mBytesDownloaded;

        TaskSnapshot(Exception exc, long j2) {
            super(exc);
            this.mBytesDownloaded = j2;
        }

        public long getBytesTransferred() {
            return this.mBytesDownloaded;
        }

        public InputStream getStream() {
            return StreamDownloadTask.this.inputStream;
        }

        public long getTotalByteCount() {
            return StreamDownloadTask.this.getTotalBytes();
        }
    }

    StreamDownloadTask(StorageReference storageReference) {
        this.storageRef = storageReference;
        FirebaseStorage storage = this.storageRef.getStorage();
        this.sender = new ExponentialBackoffSender(storage.getApp().getApplicationContext(), storage.getAuthProvider(), storage.getMaxDownloadRetryTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InputStream createDownloadStream() throws IOException {
        String str;
        this.sender.reset();
        NetworkRequest networkRequest = this.request;
        if (networkRequest != null) {
            networkRequest.performRequestEnd();
        }
        this.request = new GetNetworkRequest(this.storageRef.getStorageUri(), this.storageRef.getApp(), this.bytesDownloaded);
        boolean z = false;
        this.sender.sendWithExponentialBackoff(this.request, false);
        this.resultCode = this.request.getResultCode();
        this.exception = this.request.getException() != null ? this.request.getException() : this.exception;
        if (isValidHttpResponseCode(this.resultCode) && this.exception == null && getInternalState() == 4) {
            z = true;
        }
        if (!z) {
            throw new IOException("Could not open resulting stream.");
        }
        String resultString = this.request.getResultString("ETag");
        if (!TextUtils.isEmpty(resultString) && (str = this.eTagVerification) != null && !str.equals(resultString)) {
            this.resultCode = 409;
            throw new IOException("The ETag on the server changed.");
        }
        this.eTagVerification = resultString;
        if (this.totalBytes == -1) {
            this.totalBytes = this.request.getResultingContentLength();
        }
        return this.request.getStream();
    }

    private boolean isValidHttpResponseCode(int i2) {
        return i2 == 308 || (i2 >= 200 && i2 < 300);
    }

    @Override // com.google.firebase.storage.StorageTask
    StorageReference getStorage() {
        return this.storageRef;
    }

    long getTotalBytes() {
        return this.totalBytes;
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void onCanceled() {
        this.sender.cancel();
        this.exception = StorageException.fromErrorStatus(Status.RESULT_CANCELED);
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void onProgress() {
        this.bytesDownloadedSnapped = this.bytesDownloaded;
    }

    @Override // com.google.firebase.storage.StorageTask, com.google.firebase.storage.ControllableTask
    public boolean pause() {
        throw new UnsupportedOperationException("this operation is not supported on StreamDownloadTask.");
    }

    void recordDownloadedBytes(long j2) {
        this.bytesDownloaded += j2;
        if (this.bytesDownloadedSnapped + PREFERRED_CHUNK_SIZE <= this.bytesDownloaded) {
            if (getInternalState() == 4) {
                tryChangeState(4, false);
            } else {
                this.bytesDownloadedSnapped = this.bytesDownloaded;
            }
        }
    }

    @Override // com.google.firebase.storage.StorageTask, com.google.firebase.storage.ControllableTask
    public boolean resume() {
        throw new UnsupportedOperationException("this operation is not supported on StreamDownloadTask.");
    }

    @Override // com.google.firebase.storage.StorageTask
    void run() {
        if (this.exception != null) {
            tryChangeState(64, false);
            return;
        }
        if (tryChangeState(4, false)) {
            StreamProgressWrapper streamProgressWrapper = new StreamProgressWrapper(new Callable<InputStream>() { // from class: com.google.firebase.storage.StreamDownloadTask.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public InputStream call() {
                    return StreamDownloadTask.this.createDownloadStream();
                }
            }, this);
            this.inputStream = new BufferedInputStream(streamProgressWrapper);
            try {
                streamProgressWrapper.ensureStream();
                if (this.processor != null) {
                    try {
                        this.processor.doInBackground(snapState(), this.inputStream);
                    } catch (Exception e2) {
                        Log.w(TAG, "Exception occurred calling doInBackground.", e2);
                        this.exception = e2;
                    }
                }
            } catch (IOException e3) {
                Log.d(TAG, "Initial opening of Stream failed", e3);
                this.exception = e3;
            }
            if (this.inputStream == null) {
                this.request.performRequestEnd();
                this.request = null;
            }
            if (this.exception == null && getInternalState() == 4) {
                tryChangeState(4, false);
                tryChangeState(128, false);
                return;
            }
            if (tryChangeState(getInternalState() == 32 ? 256 : 64, false)) {
                return;
            }
            Log.w(TAG, "Unable to change download task to final state from " + getInternalState());
        }
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void schedule() {
        StorageTaskScheduler.getInstance().scheduleDownload(getRunnable());
    }

    StreamDownloadTask setStreamProcessor(StreamProcessor streamProcessor) {
        Preconditions.checkNotNull(streamProcessor);
        Preconditions.checkState(this.processor == null);
        this.processor = streamProcessor;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.storage.StorageTask
    public TaskSnapshot snapStateImpl() {
        return new TaskSnapshot(StorageException.fromExceptionAndHttpCode(this.exception, this.resultCode), this.bytesDownloadedSnapped);
    }
}
