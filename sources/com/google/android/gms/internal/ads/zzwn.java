package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;

/* JADX INFO: loaded from: classes.dex */
public final class zzwn implements MuteThisAdReason {
    private final String description;
    private zzwi zzcdz;

    public zzwn(zzwi zzwiVar) {
        String description;
        this.zzcdz = zzwiVar;
        try {
            description = zzwiVar.getDescription();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            description = null;
        }
        this.description = description;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.description;
    }

    public final String toString() {
        return this.description;
    }

    public final zzwi zzow() {
        return this.zzcdz;
    }
}
