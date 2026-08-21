package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

/* JADX INFO: loaded from: classes.dex */
public final class zzaai extends zzaag {
    private final OnCustomRenderedAdLoadedListener zzcep;

    public zzaai(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzcep = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final void zza(zzaac zzaacVar) {
        this.zzcep.onCustomRenderedAdLoaded(new zzaad(zzaacVar));
    }
}
