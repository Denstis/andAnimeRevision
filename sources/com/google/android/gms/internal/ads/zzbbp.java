package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes.dex */
final class zzbbp implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsResult zzeeg;

    zzbbp(JsResult jsResult) {
        this.zzeeg = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.zzeeg.confirm();
    }
}
