package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class zzamx implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzamu zzdfn;

    zzamx(zzamu zzamuVar) {
        this.zzdfn = zzamuVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Intent intentCreateIntent = this.zzdfn.createIntent();
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zza(this.zzdfn.zzlk, intentCreateIntent);
    }
}
