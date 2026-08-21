package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes.dex */
final class zzbbn implements DialogInterface.OnCancelListener {
    private final /* synthetic */ JsResult zzeeg;

    zzbbn(JsResult jsResult) {
        this.zzeeg = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zzeeg.cancel();
    }
}
