package com.google.firebase.storage.network;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.FirebaseApp;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ResumableUploadStartRequest extends ResumableNetworkRequest {
    private final String contentType;
    private final JSONObject metadata;

    public ResumableUploadStartRequest(Uri uri, FirebaseApp firebaseApp, JSONObject jSONObject, String str) {
        super(uri, firebaseApp);
        this.metadata = jSONObject;
        this.contentType = str;
        if (TextUtils.isEmpty(this.contentType)) {
            this.mException = new IllegalArgumentException("mContentType is null or empty");
        }
        super.setCustomHeader("X-Goog-Upload-Protocol", "resumable");
        super.setCustomHeader("X-Goog-Upload-Command", TtmlNode.START);
        super.setCustomHeader("X-Goog-Upload-Header-Content-Type", this.contentType);
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "POST";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected JSONObject getOutputJSON() {
        return this.metadata;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Map<String, String> getQueryParameters() {
        HashMap map = new HashMap();
        map.put(AppMeasurementSdk.ConditionalUserProperty.NAME, getPathWithoutBucket());
        map.put("uploadType", "resumable");
        return map;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Uri getURL() {
        Uri.Builder builderBuildUpon = NetworkRequest.sNetworkRequestUrl.buildUpon();
        builderBuildUpon.appendPath("b");
        builderBuildUpon.appendPath(this.mGsUri.getAuthority());
        builderBuildUpon.appendPath("o");
        return builderBuildUpon.build();
    }
}
