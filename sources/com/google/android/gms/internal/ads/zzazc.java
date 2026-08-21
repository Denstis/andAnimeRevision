package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzazc {
    private final Context zzcfz;
    private final zzazj zzdya;
    private final ViewGroup zzdyv;
    private zzayw zzdyw;

    @VisibleForTesting
    private zzazc(Context context, ViewGroup viewGroup, zzazj zzazjVar, zzayw zzaywVar) {
        this.zzcfz = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdyv = viewGroup;
        this.zzdya = zzazjVar;
        this.zzdyw = null;
    }

    public zzazc(Context context, ViewGroup viewGroup, zzbbw zzbbwVar) {
        this(context, viewGroup, zzbbwVar, null);
    }

    public final void onDestroy() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzayw zzaywVar = this.zzdyw;
        if (zzaywVar != null) {
            zzaywVar.destroy();
            this.zzdyv.removeView(this.zzdyw);
            this.zzdyw = null;
        }
    }

    public final void onPause() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzayw zzaywVar = this.zzdyw;
        if (zzaywVar != null) {
            zzaywVar.pause();
        }
    }

    public final void zza(int i2, int i3, int i4, int i5, int i6, boolean z, zzazk zzazkVar) {
        if (this.zzdyw != null) {
            return;
        }
        zzzs.zza(this.zzdya.zzxq().zzpy(), this.zzdya.zzxm(), "vpr2");
        Context context = this.zzcfz;
        zzazj zzazjVar = this.zzdya;
        this.zzdyw = new zzayw(context, zzazjVar, i6, z, zzazjVar.zzxq().zzpy(), zzazkVar);
        this.zzdyv.addView(this.zzdyw, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzdyw.zzd(i2, i3, i4, i5);
        this.zzdya.zzao(false);
    }

    public final void zze(int i2, int i3, int i4, int i5) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzayw zzaywVar = this.zzdyw;
        if (zzaywVar != null) {
            zzaywVar.zzd(i2, i3, i4, i5);
        }
    }

    public final zzayw zzxg() {
        Preconditions.checkMainThread("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzdyw;
    }
}
