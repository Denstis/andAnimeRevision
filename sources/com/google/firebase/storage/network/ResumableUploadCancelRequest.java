package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;

/* JADX INFO: loaded from: classes.dex */
public class ResumableUploadCancelRequest extends ResumableNetworkRequest {
    public static boolean cancelCalled = false;
    private final Uri uploadURL;

    public ResumableUploadCancelRequest(Uri uri, FirebaseApp firebaseApp, Uri uri2) {
        super(uri, firebaseApp);
        cancelCalled = true;
        this.uploadURL = uri2;
        super.setCustomHeader("X-Goog-Upload-Protocol", "resumable");
        super.setCustomHeader("X-Goog-Upload-Command", "cancel");
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "POST";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Uri getURL() {
        return this.uploadURL;
    }
}
