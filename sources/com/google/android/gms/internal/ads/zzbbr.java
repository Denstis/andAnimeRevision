package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: loaded from: classes.dex */
final class zzbbr implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeeh;

    zzbbr(JsPromptResult jsPromptResult) {
        this.zzeeh = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.zzeeh.cancel();
    }
}
