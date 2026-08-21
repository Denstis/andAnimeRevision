package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class zzavl implements Runnable {
    final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzdto;
    private final /* synthetic */ boolean zzdtp;
    private final /* synthetic */ boolean zzdtq;

    zzavl(zzavm zzavmVar, Context context, String str, boolean z, boolean z2) {
        this.val$context = context;
        this.zzdto = str;
        this.zzdtp = z;
        this.zzdtq = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.val$context);
        builder.setMessage(this.zzdto);
        builder.setTitle(this.zzdtp ? "Error" : "Info");
        if (this.zzdtq) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new zzavo(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
