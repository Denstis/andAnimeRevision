package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(18)
public class zzauv extends zzauw {
    @Override // com.google.android.gms.internal.ads.zzaur
    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final int zzvq() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final long zzvu() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcnt)).booleanValue()) {
            return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
        }
        return -1L;
    }
}
