package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class zzapw extends zzapx {
    private final String type;
    private final int zzdnv;

    public zzapw(String str, int i2) {
        this.type = str;
        this.zzdnv = i2;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzapw)) {
            zzapw zzapwVar = (zzapw) obj;
            if (Objects.equal(this.type, zzapwVar.type) && Objects.equal(Integer.valueOf(this.zzdnv), Integer.valueOf(zzapwVar.zzdnv))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzapy
    public final int getAmount() {
        return this.zzdnv;
    }

    @Override // com.google.android.gms.internal.ads.zzapy
    public final String getType() {
        return this.type;
    }
}
