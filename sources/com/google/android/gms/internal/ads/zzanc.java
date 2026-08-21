package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class zzanc implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzana zzdge;

    zzanc(zzana zzanaVar) {
        this.zzdge = zzanaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.zzdge.zzdn("User canceled the download.");
    }
}
