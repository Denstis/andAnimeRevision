package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetNetworkRequest extends NetworkRequest {
    private static final String TAG = "GetNetworkRequest";

    public GetNetworkRequest(Uri uri, FirebaseApp firebaseApp, long j2) {
        super(uri, firebaseApp);
        if (j2 != 0) {
            super.setCustomHeader("Range", "bytes=" + j2 + "-");
        }
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "GET";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Map<String, String> getQueryParameters() {
        return Collections.singletonMap("alt", "media");
    }
}
