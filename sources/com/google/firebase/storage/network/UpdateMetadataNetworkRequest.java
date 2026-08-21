package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class UpdateMetadataNetworkRequest extends NetworkRequest {
    private final JSONObject metadata;

    public UpdateMetadataNetworkRequest(Uri uri, FirebaseApp firebaseApp, JSONObject jSONObject) {
        super(uri, firebaseApp);
        this.metadata = jSONObject;
        setCustomHeader("X-HTTP-Method-Override", "PATCH");
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "PUT";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected JSONObject getOutputJSON() {
        return this.metadata;
    }
}
