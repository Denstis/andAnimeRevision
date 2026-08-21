package com.google.firebase.storage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
import com.google.firebase.storage.network.GetNetworkRequest;
import com.google.firebase.storage.network.NetworkRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class FileDownloadTask extends StorageTask<TaskSnapshot> {
    static final int PREFERRED_CHUNK_SIZE = 262144;
    private static final String TAG = "FileDownloadTask";
    private long mBytesDownloaded;
    private final Uri mDestinationFile;
    private int mResultCode;
    private ExponentialBackoffSender mSender;
    private StorageReference mStorageRef;
    private long mTotalBytes = -1;
    private String mETagVerification = null;
    private volatile Exception mException = null;
    private long mResumeOffset = 0;

    public class TaskSnapshot extends StorageTask<TaskSnapshot>.SnapshotBase {
        private final long mBytesDownloaded;

        TaskSnapshot(Exception exc, long j2) {
            super(exc);
            this.mBytesDownloaded = j2;
        }

        public long getBytesTransferred() {
            return this.mBytesDownloaded;
        }

        public long getTotalByteCount() {
            return FileDownloadTask.this.getTotalBytes();
        }
    }

    FileDownloadTask(StorageReference storageReference, Uri uri) {
        this.mStorageRef = storageReference;
        this.mDestinationFile = uri;
        FirebaseStorage storage = this.mStorageRef.getStorage();
        this.mSender = new ExponentialBackoffSender(storage.getApp().getApplicationContext(), storage.getAuthProvider(), storage.getMaxDownloadRetryTimeMillis());
    }

    private int fillBuffer(InputStream inputStream, byte[] bArr) {
        int i2;
        int i3 = 0;
        boolean z = false;
        while (i3 != bArr.length && (i2 = inputStream.read(bArr, i3, bArr.length - i3)) != -1) {
            try {
                z = true;
                i3 += i2;
            } catch (IOException e2) {
                this.mException = e2;
            }
        }
        if (z) {
            return i3;
        }
        return -1;
    }

    private boolean isValidHttpResponseCode(int i2) {
        return i2 == 308 || (i2 >= 200 && i2 < 300);
    }

    private boolean processResponse(NetworkRequest networkRequest) throws IOException {
        FileOutputStream fileOutputStream;
        InputStream stream = networkRequest.getStream();
        if (stream == null) {
            this.mException = new IllegalStateException("Unable to open Firebase Storage stream.");
            return false;
        }
        File file = new File(this.mDestinationFile.getPath());
        if (!file.exists()) {
            if (this.mResumeOffset > 0) {
                Log.e(TAG, "The file downloading to has been deleted:" + file.getAbsolutePath());
                throw new IllegalStateException("expected a file to resume from.");
            }
            if (!file.createNewFile()) {
                Log.w(TAG, "unable to create file:" + file.getAbsolutePath());
            }
        }
        boolean z = true;
        if (this.mResumeOffset > 0) {
            Log.d(TAG, "Resuming download file " + file.getAbsolutePath() + " at " + this.mResumeOffset);
            fileOutputStream = new FileOutputStream(file, true);
        } else {
            fileOutputStream = new FileOutputStream(file);
        }
        try {
            byte[] bArr = new byte[PREFERRED_CHUNK_SIZE];
            while (z) {
                int iFillBuffer = fillBuffer(stream, bArr);
                if (iFillBuffer == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, iFillBuffer);
                this.mBytesDownloaded += (long) iFillBuffer;
                if (this.mException != null) {
                    Log.d(TAG, "Exception occurred during file download. Retrying.", this.mException);
                    this.mException = null;
                    z = false;
                }
                if (!tryChangeState(4, false)) {
                    z = false;
                }
            }
            fileOutputStream.flush();
            fileOutputStream.close();
            stream.close();
            return z;
        } catch (Throwable th) {
            fileOutputStream.flush();
            fileOutputStream.close();
            stream.close();
            throw th;
        }
    }

    long getDownloadedSizeInBytes() {
        return this.mBytesDownloaded;
    }

    @Override // com.google.firebase.storage.StorageTask
    StorageReference getStorage() {
        return this.mStorageRef;
    }

    long getTotalBytes() {
        return this.mTotalBytes;
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void onCanceled() {
        this.mSender.cancel();
        this.mException = StorageException.fromErrorStatus(Status.RESULT_CANCELED);
    }

    @Override // com.google.firebase.storage.StorageTask
    void run() {
        String str;
        if (this.mException != null) {
            tryChangeState(64, false);
            return;
        }
        if (tryChangeState(4, false)) {
            do {
                this.mBytesDownloaded = 0L;
                this.mException = null;
                this.mSender.reset();
                GetNetworkRequest getNetworkRequest = new GetNetworkRequest(this.mStorageRef.getStorageUri(), this.mStorageRef.getApp(), this.mResumeOffset);
                this.mSender.sendWithExponentialBackoff(getNetworkRequest, false);
                this.mResultCode = getNetworkRequest.getResultCode();
                this.mException = getNetworkRequest.getException() != null ? getNetworkRequest.getException() : this.mException;
                boolean zProcessResponse = isValidHttpResponseCode(this.mResultCode) && this.mException == null && getInternalState() == 4;
                if (zProcessResponse) {
                    this.mTotalBytes = getNetworkRequest.getResultingContentLength();
                    String resultString = getNetworkRequest.getResultString("ETag");
                    if (!TextUtils.isEmpty(resultString) && (str = this.mETagVerification) != null && !str.equals(resultString)) {
                        Log.w(TAG, "The file at the server has changed.  Restarting from the beginning.");
                        this.mResumeOffset = 0L;
                        this.mETagVerification = null;
                        getNetworkRequest.performRequestEnd();
                        schedule();
                        return;
                    }
                    this.mETagVerification = resultString;
                    try {
                        zProcessResponse = processResponse(getNetworkRequest);
                    } catch (IOException e2) {
                        Log.e(TAG, "Exception occurred during file write.  Aborting.", e2);
                        this.mException = e2;
                    }
                }
                getNetworkRequest.performRequestEnd();
                if (zProcessResponse && this.mException == null && getInternalState() == 4) {
                    tryChangeState(128, false);
                    return;
                }
                File file = new File(this.mDestinationFile.getPath());
                if (file.exists()) {
                    this.mResumeOffset = file.length();
                } else {
                    this.mResumeOffset = 0L;
                }
                if (getInternalState() == 8) {
                    tryChangeState(16, false);
                    return;
                }
                if (getInternalState() == 32) {
                    if (tryChangeState(256, false)) {
                        return;
                    }
                    Log.w(TAG, "Unable to change download task to final state from " + getInternalState());
                    return;
                }
            } while (this.mBytesDownloaded > 0);
            tryChangeState(64, false);
        }
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void schedule() {
        StorageTaskScheduler.getInstance().scheduleDownload(getRunnable());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.storage.StorageTask
    public TaskSnapshot snapStateImpl() {
        return new TaskSnapshot(StorageException.fromExceptionAndHttpCode(this.mException, this.mResultCode), this.mBytesDownloaded + this.mResumeOffset);
    }
}
