package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class zzamw implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzamu zzdfn;

    zzamw(zzamu zzamuVar) {
        this.zzdfn = zzamuVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.zzdfn.zzdn("Operation denied by user.");
    }
}
