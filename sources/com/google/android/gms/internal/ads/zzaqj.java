package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;

/* JADX INFO: loaded from: classes.dex */
public final class zzaqj implements RewardItem {
    private final zzapy zzdnw;

    public zzaqj(zzapy zzapyVar) {
        this.zzdnw = zzapyVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        zzapy zzapyVar = this.zzdnw;
        if (zzapyVar == null) {
            return 0;
        }
        try {
            return zzapyVar.getAmount();
        } catch (RemoteException e2) {
            zzaxi.zzd("Could not forward getAmount to RewardItem", e2);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        zzapy zzapyVar = this.zzdnw;
        if (zzapyVar == null) {
            return null;
        }
        try {
            return zzapyVar.getType();
        } catch (RemoteException e2) {
            zzaxi.zzd("Could not forward getType to RewardItem", e2);
            return null;
        }
    }
}
