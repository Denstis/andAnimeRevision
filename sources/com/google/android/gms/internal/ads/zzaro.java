package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

/* JADX INFO: loaded from: classes.dex */
public final class zzaro implements RewardItem {
    private final zzaqv zzdoe;

    public zzaro(zzaqv zzaqvVar) {
        this.zzdoe = zzaqvVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzaqv zzaqvVar = this.zzdoe;
        if (zzaqvVar == null) {
            return 0;
        }
        try {
            return zzaqvVar.getAmount();
        } catch (RemoteException e2) {
            zzaxi.zzd("Could not forward getAmount to RewardItem", e2);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzaqv zzaqvVar = this.zzdoe;
        if (zzaqvVar == null) {
            return null;
        }
        try {
            return zzaqvVar.getType();
        } catch (RemoteException e2) {
            zzaxi.zzd("Could not forward getType to RewardItem", e2);
            return null;
        }
    }
}
