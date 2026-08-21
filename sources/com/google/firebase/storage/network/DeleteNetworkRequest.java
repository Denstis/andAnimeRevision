package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;

/* JADX INFO: loaded from: classes.dex */
public class DeleteNetworkRequest extends NetworkRequest {
    public DeleteNetworkRequest(Uri uri, FirebaseApp firebaseApp) {
        super(uri, firebaseApp);
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "DELETE";
    }
}
