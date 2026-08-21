package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;

/* JADX INFO: loaded from: classes.dex */
public class ResumableUploadByteRequest extends ResumableNetworkRequest {
    private final int bytesToWrite;
    private final byte[] chunk;
    private final boolean isFinal;
    private final long offset;
    private final Uri uploadURL;

    public ResumableUploadByteRequest(Uri uri, FirebaseApp firebaseApp, Uri uri2, byte[] bArr, long j2, int i2, boolean z) {
        super(uri, firebaseApp);
        if (bArr == null && i2 != -1) {
            this.mException = new IllegalArgumentException("contentType is null or empty");
        }
        if (j2 < 0) {
            this.mException = new IllegalArgumentException("offset cannot be negative");
        }
        this.bytesToWrite = i2;
        this.uploadURL = uri2;
        this.chunk = i2 <= 0 ? null : bArr;
        this.offset = j2;
        this.isFinal = z;
        super.setCustomHeader("X-Goog-Upload-Protocol", "resumable");
        super.setCustomHeader("X-Goog-Upload-Command", (!this.isFinal || this.bytesToWrite <= 0) ? this.isFinal ? "finalize" : "upload" : "upload, finalize");
        super.setCustomHeader("X-Goog-Upload-Offset", Long.toString(this.offset));
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "POST";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected byte[] getOutputRaw() {
        return this.chunk;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected int getOutputRawSize() {
        int i2 = this.bytesToWrite;
        if (i2 > 0) {
            return i2;
        }
        return 0;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Uri getURL() {
        return this.uploadURL;
    }
}
