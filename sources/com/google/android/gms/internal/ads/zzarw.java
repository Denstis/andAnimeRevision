package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardItem;

/* JADX INFO: loaded from: classes.dex */
public final class zzarw extends zzaqy {
    private final String type;
    private final int zzdnv;

    public zzarw(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzarw(zzaqt zzaqtVar) {
        this(zzaqtVar != null ? zzaqtVar.type : "", zzaqtVar != null ? zzaqtVar.zzdnv : 1);
    }

    public zzarw(String str, int i2) {
        this.type = str;
        this.zzdnv = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaqv
    public final int getAmount() {
        return this.zzdnv;
    }

    @Override // com.google.android.gms.internal.ads.zzaqv
    public final String getType() {
        return this.type;
    }
}
