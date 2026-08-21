package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public class zzdrl {
    private static final zzdqj zzhfs = zzdqj.zzaza();
    private zzdpm zzhme;
    private volatile zzdsg zzhmf;
    private volatile zzdpm zzhmg;

    private final zzdsg zzp(zzdsg zzdsgVar) {
        if (this.zzhmf == null) {
            synchronized (this) {
                if (this.zzhmf == null) {
                    try {
                        this.zzhmf = zzdsgVar;
                        this.zzhmg = zzdpm.zzhgb;
                    } catch (zzdrg unused) {
                        this.zzhmf = zzdsgVar;
                        this.zzhmg = zzdpm.zzhgb;
                    }
                }
            }
        }
        return this.zzhmf;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdrl)) {
            return false;
        }
        zzdrl zzdrlVar = (zzdrl) obj;
        zzdsg zzdsgVar = this.zzhmf;
        zzdsg zzdsgVar2 = zzdrlVar.zzhmf;
        return (zzdsgVar == null && zzdsgVar2 == null) ? zzaxg().equals(zzdrlVar.zzaxg()) : (zzdsgVar == null || zzdsgVar2 == null) ? zzdsgVar != null ? zzdsgVar.equals(zzdrlVar.zzp(zzdsgVar.zzazs())) : zzp(zzdsgVar2.zzazs()).equals(zzdsgVar2) : zzdsgVar.equals(zzdsgVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzdpm zzaxg() {
        if (this.zzhmg != null) {
            return this.zzhmg;
        }
        synchronized (this) {
            if (this.zzhmg != null) {
                return this.zzhmg;
            }
            this.zzhmg = this.zzhmf == null ? zzdpm.zzhgb : this.zzhmf.zzaxg();
            return this.zzhmg;
        }
    }

    public final int zzazu() {
        if (this.zzhmg != null) {
            return this.zzhmg.size();
        }
        if (this.zzhmf != null) {
            return this.zzhmf.zzazu();
        }
        return 0;
    }

    public final zzdsg zzq(zzdsg zzdsgVar) {
        zzdsg zzdsgVar2 = this.zzhmf;
        this.zzhme = null;
        this.zzhmg = null;
        this.zzhmf = zzdsgVar;
        return zzdsgVar2;
    }
}
