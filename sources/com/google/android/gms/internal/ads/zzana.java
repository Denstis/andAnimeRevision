package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.R;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzana extends zzanj {
    private final Map<String, String> zzcuv;
    private final Context zzlk;

    public zzana(zzbbw zzbbwVar, Map<String, String> map) {
        super(zzbbwVar, "storePicture");
        this.zzcuv = map;
        this.zzlk = zzbbwVar.zzxn();
    }

    public final void execute() {
        if (this.zzlk == null) {
            zzdn("Activity context is not available");
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzkj();
        if (!zzaul.zzas(this.zzlk).zzpo()) {
            zzdn("Feature is not supported by the device.");
            return;
        }
        String str = this.zzcuv.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzdn("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            String strValueOf = String.valueOf(str);
            zzdn(strValueOf.length() != 0 ? "Invalid image url: ".concat(strValueOf) : new String("Invalid image url: "));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        com.google.android.gms.ads.internal.zzq.zzkj();
        if (!zzaul.zzee(lastPathSegment)) {
            String strValueOf2 = String.valueOf(lastPathSegment);
            zzdn(strValueOf2.length() != 0 ? "Image type not recognized: ".concat(strValueOf2) : new String("Image type not recognized: "));
            return;
        }
        Resources resources = com.google.android.gms.ads.internal.zzq.zzkn().getResources();
        com.google.android.gms.ads.internal.zzq.zzkj();
        AlertDialog.Builder builderZzar = zzaul.zzar(this.zzlk);
        builderZzar.setTitle(resources != null ? resources.getString(R.string.s1) : "Save image");
        builderZzar.setMessage(resources != null ? resources.getString(R.string.s2) : "Allow Ad to store image in Picture gallery?");
        builderZzar.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzand(this, str, lastPathSegment));
        builderZzar.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzanc(this));
        builderZzar.create().show();
    }
}
