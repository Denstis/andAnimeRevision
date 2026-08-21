package com.google.android.gms.ads.mediation;

/* JADX INFO: loaded from: classes.dex */
public final class VersionInfo {
    private final int zzejg;
    private final int zzejh;
    private final int zzeji;

    public VersionInfo(int i2, int i3, int i4) {
        this.zzejg = i2;
        this.zzejh = i3;
        this.zzeji = i4;
    }

    public final int getMajorVersion() {
        return this.zzejg;
    }

    public final int getMicroVersion() {
        return this.zzeji;
    }

    public final int getMinorVersion() {
        return this.zzejh;
    }
}
