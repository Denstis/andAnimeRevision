package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class zzavo implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzavl zzdtv;

    zzavo(zzavl zzavlVar) {
        this.zzdtv = zzavlVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zza(this.zzdtv.val$context, Uri.parse("https://support.google.com/dfo_premium/answer/7160685#push"));
    }
}
