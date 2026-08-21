package com.google.firebase.storage;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.storage.StorageMetadata;
import com.google.firebase.storage.internal.AdaptiveStreamBuffer;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
import com.google.firebase.storage.internal.Util;
import com.google.firebase.storage.network.NetworkRequest;
import com.google.firebase.storage.network.ResumableUploadByteRequest;
import com.google.firebase.storage.network.ResumableUploadCancelRequest;
import com.google.firebase.storage.network.ResumableUploadQueryRequest;
import com.google.firebase.storage.network.ResumableUploadStartRequest;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class UploadTask extends StorageTask<TaskSnapshot> {
    private static final String APPLICATION_OCTET_STREAM = "application/octet-stream";
    private static final int MAXIMUM_CHUNK_SIZE = 33554432;
    static final int PREFERRED_CHUNK_SIZE = 262144;
    private static final String RESUMABLE_FINAL_STATUS = "final";
    private static final String TAG = "UploadTask";
    private static final String X_GOOG_UPLOAD_URL = "X-Goog-Upload-URL";
    private final InternalAuthProvider mAuthProvider;
    private final AtomicLong mBytesUploaded;
    private int mCurrentChunkSize;
    private volatile Exception mException;
    private boolean mIsStreamOwned;
    private volatile StorageMetadata mMetadata;
    private volatile int mResultCode;
    private ExponentialBackoffSender mSender;
    private volatile Exception mServerException;
    private volatile String mServerStatus;
    private final StorageReference mStorageRef;
    private final AdaptiveStreamBuffer mStreamBuffer;
    private final long mTotalByteCount;
    private volatile Uri mUploadUri;
    private final Uri mUri;

    public class TaskSnapshot extends StorageTask<TaskSnapshot>.SnapshotBase {
        private final long mBytesUploaded;
        private final StorageMetadata mMetadata;
        private final Uri mUploadUri;

        TaskSnapshot(Exception exc, long j2, Uri uri, StorageMetadata storageMetadata) {
            super(exc);
            this.mBytesUploaded = j2;
            this.mUploadUri = uri;
            this.mMetadata = storageMetadata;
        }

        public long getBytesTransferred() {
            return this.mBytesUploaded;
        }

        public StorageMetadata getMetadata() {
            return this.mMetadata;
        }

        public long getTotalByteCount() {
            return UploadTask.this.getTotalByteCount();
        }

        public Uri getUploadSessionUri() {
            return this.mUploadUri;
        }
    }

    UploadTask(StorageReference storageReference, StorageMetadata storageMetadata, Uri uri, Uri uri2) {
        long statSize;
        FileNotFoundException e2;
        InputStream bufferedInputStream;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        this.mBytesUploaded = new AtomicLong(0L);
        this.mCurrentChunkSize = PREFERRED_CHUNK_SIZE;
        InputStream inputStreamOpenInputStream = null;
        this.mUploadUri = null;
        this.mException = null;
        this.mServerException = null;
        this.mResultCode = 0;
        Preconditions.checkNotNull(storageReference);
        Preconditions.checkNotNull(uri);
        FirebaseStorage storage = storageReference.getStorage();
        this.mStorageRef = storageReference;
        this.mMetadata = storageMetadata;
        this.mAuthProvider = storage.getAuthProvider();
        this.mUri = uri;
        this.mSender = new ExponentialBackoffSender(this.mStorageRef.getApp().getApplicationContext(), this.mAuthProvider, storage.getMaxUploadRetryTimeMillis());
        long j2 = -1;
        try {
            try {
                ContentResolver contentResolver = this.mStorageRef.getStorage().getApp().getApplicationContext().getContentResolver();
                try {
                    parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(this.mUri, "r");
                } catch (IOException e3) {
                    e = e3;
                    statSize = -1;
                } catch (NullPointerException e4) {
                    e = e4;
                }
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    statSize = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (IOException e5) {
                        e = e5;
                        Log.w(TAG, "could not retrieve file size for upload " + this.mUri.toString(), e);
                    } catch (NullPointerException e6) {
                        e = e6;
                        Log.w(TAG, "NullPointerException during file size calculation.", e);
                        statSize = -1;
                    }
                } else {
                    statSize = -1;
                }
                inputStreamOpenInputStream = contentResolver.openInputStream(this.mUri);
            } catch (FileNotFoundException e7) {
                e2 = e7;
            }
        } catch (FileNotFoundException e8) {
            statSize = j2;
            e2 = e8;
        }
        if (inputStreamOpenInputStream == null) {
            bufferedInputStream = inputStreamOpenInputStream;
            j2 = statSize;
            this.mTotalByteCount = j2;
            this.mStreamBuffer = new AdaptiveStreamBuffer(bufferedInputStream, PREFERRED_CHUNK_SIZE);
            this.mIsStreamOwned = true;
            this.mUploadUri = uri2;
        }
        if (statSize == -1) {
            try {
                int iAvailable = inputStreamOpenInputStream.available();
                if (iAvailable >= 0) {
                    statSize = iAvailable;
                }
            } catch (IOException unused) {
            }
        }
        j2 = statSize;
        bufferedInputStream = new BufferedInputStream(inputStreamOpenInputStream);
        this.mTotalByteCount = j2;
        this.mStreamBuffer = new AdaptiveStreamBuffer(bufferedInputStream, PREFERRED_CHUNK_SIZE);
        this.mIsStreamOwned = true;
        this.mUploadUri = uri2;
        bufferedInputStream = inputStreamOpenInputStream;
        Log.e(TAG, "could not locate file for uploading:" + this.mUri.toString());
        this.mException = e2;
        j2 = statSize;
        this.mTotalByteCount = j2;
        this.mStreamBuffer = new AdaptiveStreamBuffer(bufferedInputStream, PREFERRED_CHUNK_SIZE);
        this.mIsStreamOwned = true;
        this.mUploadUri = uri2;
    }

    UploadTask(StorageReference storageReference, StorageMetadata storageMetadata, InputStream inputStream) {
        this.mBytesUploaded = new AtomicLong(0L);
        this.mCurrentChunkSize = PREFERRED_CHUNK_SIZE;
        this.mUploadUri = null;
        this.mException = null;
        this.mServerException = null;
        this.mResultCode = 0;
        Preconditions.checkNotNull(storageReference);
        Preconditions.checkNotNull(inputStream);
        FirebaseStorage storage = storageReference.getStorage();
        this.mTotalByteCount = -1L;
        this.mStorageRef = storageReference;
        this.mMetadata = storageMetadata;
        this.mAuthProvider = storage.getAuthProvider();
        this.mStreamBuffer = new AdaptiveStreamBuffer(inputStream, PREFERRED_CHUNK_SIZE);
        this.mIsStreamOwned = false;
        this.mUri = null;
        this.mSender = new ExponentialBackoffSender(this.mStorageRef.getApp().getApplicationContext(), this.mAuthProvider, this.mStorageRef.getStorage().getMaxUploadRetryTimeMillis());
    }

    UploadTask(StorageReference storageReference, StorageMetadata storageMetadata, byte[] bArr) {
        this.mBytesUploaded = new AtomicLong(0L);
        this.mCurrentChunkSize = PREFERRED_CHUNK_SIZE;
        this.mUploadUri = null;
        this.mException = null;
        this.mServerException = null;
        this.mResultCode = 0;
        Preconditions.checkNotNull(storageReference);
        Preconditions.checkNotNull(bArr);
        FirebaseStorage storage = storageReference.getStorage();
        this.mTotalByteCount = bArr.length;
        this.mStorageRef = storageReference;
        this.mMetadata = storageMetadata;
        this.mAuthProvider = storage.getAuthProvider();
        this.mUri = null;
        this.mStreamBuffer = new AdaptiveStreamBuffer(new ByteArrayInputStream(bArr), PREFERRED_CHUNK_SIZE);
        this.mIsStreamOwned = true;
        this.mSender = new ExponentialBackoffSender(storage.getApp().getApplicationContext(), storage.getAuthProvider(), storage.getMaxDownloadRetryTimeMillis());
    }

    private void beginResumableUpload() {
        String contentType = this.mMetadata != null ? this.mMetadata.getContentType() : null;
        if (this.mUri != null && TextUtils.isEmpty(contentType)) {
            contentType = this.mStorageRef.getStorage().getApp().getApplicationContext().getContentResolver().getType(this.mUri);
        }
        if (TextUtils.isEmpty(contentType)) {
            contentType = APPLICATION_OCTET_STREAM;
        }
        ResumableUploadStartRequest resumableUploadStartRequest = new ResumableUploadStartRequest(this.mStorageRef.getStorageUri(), this.mStorageRef.getApp(), this.mMetadata != null ? this.mMetadata.createJSONObject() : null, contentType);
        if (sendWithRetry(resumableUploadStartRequest)) {
            String resultString = resumableUploadStartRequest.getResultString(X_GOOG_UPLOAD_URL);
            if (TextUtils.isEmpty(resultString)) {
                return;
            }
            this.mUploadUri = Uri.parse(resultString);
        }
    }

    private boolean isValidHttpResponseCode(int i2) {
        return i2 == 308 || (i2 >= 200 && i2 < 300);
    }

    private boolean processResultValid(NetworkRequest networkRequest) {
        int resultCode = networkRequest.getResultCode();
        if (this.mSender.isRetryableError(resultCode)) {
            resultCode = -2;
        }
        this.mResultCode = resultCode;
        this.mServerException = networkRequest.getException();
        this.mServerStatus = networkRequest.getResultString("X-Goog-Upload-Status");
        return isValidHttpResponseCode(this.mResultCode) && this.mServerException == null;
    }

    private boolean recoverStatus(boolean z) {
        ResumableUploadQueryRequest resumableUploadQueryRequest = new ResumableUploadQueryRequest(this.mStorageRef.getStorageUri(), this.mStorageRef.getApp(), this.mUploadUri);
        if (RESUMABLE_FINAL_STATUS.equals(this.mServerStatus)) {
            return false;
        }
        if (z) {
            if (!sendWithRetry(resumableUploadQueryRequest)) {
                return false;
            }
        } else if (!send(resumableUploadQueryRequest)) {
            return false;
        }
        if (RESUMABLE_FINAL_STATUS.equals(resumableUploadQueryRequest.getResultString("X-Goog-Upload-Status"))) {
            e = new IOException("The server has terminated the upload session");
        } else {
            String resultString = resumableUploadQueryRequest.getResultString("X-Goog-Upload-Size-Received");
            long j2 = !TextUtils.isEmpty(resultString) ? Long.parseLong(resultString) : 0L;
            long j3 = this.mBytesUploaded.get();
            if (j3 > j2) {
                e = new IOException("Unexpected error. The server lost a chunk update.");
            } else {
                if (j3 >= j2) {
                    return true;
                }
                try {
                    if (this.mStreamBuffer.advance((int) r7) != j2 - j3) {
                        this.mException = new IOException("Unexpected end of stream encountered.");
                        return false;
                    }
                    if (this.mBytesUploaded.compareAndSet(j3, j2)) {
                        return true;
                    }
                    Log.e(TAG, "Somehow, the uploaded bytes changed during an uploaded.  This should nothappen");
                    this.mException = new IllegalStateException("uploaded bytes changed unexpectedly.");
                    return false;
                } catch (IOException e2) {
                    e = e2;
                    Log.e(TAG, "Unable to recover position in Stream during resumable upload", e);
                }
            }
        }
        this.mException = e;
        return false;
    }

    private boolean send(NetworkRequest networkRequest) {
        networkRequest.performRequest(Util.getCurrentAuthToken(this.mAuthProvider), this.mStorageRef.getApp().getApplicationContext());
        return processResultValid(networkRequest);
    }

    private boolean sendWithRetry(NetworkRequest networkRequest) {
        this.mSender.sendWithExponentialBackoff(networkRequest);
        return processResultValid(networkRequest);
    }

    private boolean serverStateValid() {
        if (!RESUMABLE_FINAL_STATUS.equals(this.mServerStatus)) {
            return true;
        }
        if (this.mException == null) {
            this.mException = new IOException("The server has terminated the upload session", this.mServerException);
        }
        tryChangeState(64, false);
        return false;
    }

    private boolean shouldContinue() {
        if (getInternalState() == 128) {
            return false;
        }
        if (Thread.interrupted()) {
            this.mException = new InterruptedException();
            tryChangeState(64, false);
            return false;
        }
        if (getInternalState() == 32) {
            tryChangeState(256, false);
            return false;
        }
        if (getInternalState() == 8) {
            tryChangeState(16, false);
            return false;
        }
        if (!serverStateValid()) {
            return false;
        }
        if (this.mUploadUri == null) {
            if (this.mException == null) {
                this.mException = new IllegalStateException("Unable to obtain an upload URL.");
            }
            tryChangeState(64, false);
            return false;
        }
        if (this.mException != null) {
            tryChangeState(64, false);
            return false;
        }
        if (!(this.mServerException != null || this.mResultCode < 200 || this.mResultCode >= 300) || recoverStatus(true)) {
            return true;
        }
        if (serverStateValid()) {
            tryChangeState(64, false);
        }
        return false;
    }

    private void uploadChunk() {
        try {
            this.mStreamBuffer.fill(this.mCurrentChunkSize);
            int iMin = Math.min(this.mCurrentChunkSize, this.mStreamBuffer.available());
            ResumableUploadByteRequest resumableUploadByteRequest = new ResumableUploadByteRequest(this.mStorageRef.getStorageUri(), this.mStorageRef.getApp(), this.mUploadUri, this.mStreamBuffer.get(), this.mBytesUploaded.get(), iMin, this.mStreamBuffer.isFinished());
            if (!send(resumableUploadByteRequest)) {
                this.mCurrentChunkSize = PREFERRED_CHUNK_SIZE;
                Log.d(TAG, "Resetting chunk size to " + this.mCurrentChunkSize);
                return;
            }
            this.mBytesUploaded.getAndAdd(iMin);
            if (!this.mStreamBuffer.isFinished()) {
                this.mStreamBuffer.advance(iMin);
                if (this.mCurrentChunkSize < MAXIMUM_CHUNK_SIZE) {
                    this.mCurrentChunkSize *= 2;
                    Log.d(TAG, "Increasing chunk size to " + this.mCurrentChunkSize);
                    return;
                }
                return;
            }
            try {
                this.mMetadata = new StorageMetadata.Builder(resumableUploadByteRequest.getResultBody(), this.mStorageRef).build();
                tryChangeState(4, false);
                tryChangeState(128, false);
            } catch (JSONException e2) {
                Log.e(TAG, "Unable to parse resulting metadata from upload:" + resumableUploadByteRequest.getRawResult(), e2);
                this.mException = e2;
            }
        } catch (IOException e3) {
            Log.e(TAG, "Unable to read bytes for uploading", e3);
            this.mException = e3;
        }
    }

    @Override // com.google.firebase.storage.StorageTask
    StorageReference getStorage() {
        return this.mStorageRef;
    }

    long getTotalByteCount() {
        return this.mTotalByteCount;
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void onCanceled() {
        this.mSender.cancel();
        final ResumableUploadCancelRequest resumableUploadCancelRequest = this.mUploadUri != null ? new ResumableUploadCancelRequest(this.mStorageRef.getStorageUri(), this.mStorageRef.getApp(), this.mUploadUri) : null;
        if (resumableUploadCancelRequest != null) {
            StorageTaskScheduler.getInstance().scheduleCommand(new Runnable() { // from class: com.google.firebase.storage.UploadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    resumableUploadCancelRequest.performRequest(Util.getCurrentAuthToken(UploadTask.this.mAuthProvider), UploadTask.this.mStorageRef.getApp().getApplicationContext());
                }
            });
        }
        this.mException = StorageException.fromErrorStatus(Status.RESULT_CANCELED);
        super.onCanceled();
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void resetState() {
        this.mException = null;
        this.mServerException = null;
        this.mResultCode = 0;
        this.mServerStatus = null;
    }

    @Override // com.google.firebase.storage.StorageTask
    void run() {
        this.mSender.reset();
        if (!tryChangeState(4, false)) {
            Log.d(TAG, "The upload cannot continue as it is not in a valid state.");
            return;
        }
        if (this.mStorageRef.getParent() == null) {
            this.mException = new IllegalArgumentException("Cannot upload to getRoot. You should upload to a storage location such as .getReference('image.png').putFile...");
        }
        if (this.mException != null) {
            return;
        }
        if (this.mUploadUri == null) {
            beginResumableUpload();
        } else {
            recoverStatus(false);
        }
        boolean zShouldContinue = shouldContinue();
        while (zShouldContinue) {
            uploadChunk();
            zShouldContinue = shouldContinue();
            if (zShouldContinue) {
                tryChangeState(4, false);
            }
        }
        if (!this.mIsStreamOwned || getInternalState() == 16) {
            return;
        }
        try {
            this.mStreamBuffer.close();
        } catch (IOException e2) {
            Log.e(TAG, "Unable to close stream.", e2);
        }
    }

    @Override // com.google.firebase.storage.StorageTask
    protected void schedule() {
        StorageTaskScheduler.getInstance().scheduleUpload(getRunnable());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.storage.StorageTask
    public TaskSnapshot snapStateImpl() {
        return new TaskSnapshot(StorageException.fromExceptionAndHttpCode(this.mException != null ? this.mException : this.mServerException, this.mResultCode), this.mBytesUploaded.get(), this.mUploadUri, this.mMetadata);
    }
}
