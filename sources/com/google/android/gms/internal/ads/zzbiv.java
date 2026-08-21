package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzbiv {
    private final View view;
    private final zzbbw zzczi;
    private final zzcvu zzfde;
    private final zzbkl zzfdn;

    public zzbiv(View view, zzbbw zzbbwVar, zzbkl zzbklVar, zzcvu zzcvuVar) {
        this.view = view;
        this.zzczi = zzbbwVar;
        this.zzfdn = zzbklVar;
        this.zzfde = zzcvuVar;
    }

    public zzbob zza(Set<zzbqs<zzbog>> set) {
        return new zzbob(set);
    }

    public final zzbbw zzaeo() {
        return this.zzczi;
    }

    public final View zzaeu() {
        return this.view;
    }

    public final zzbkl zzafc() {
        return this.zzfdn;
    }

    public final zzcvu zzafd() {
        return this.zzfde;
    }
}
