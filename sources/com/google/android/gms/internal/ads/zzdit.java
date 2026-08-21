package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdit extends zzdqw<zzdit, zza> implements zzdsi {
    private static volatile zzdsp<zzdit> zzdv;
    private static final zzdit zzgwi;
    private int zzgtt;
    private zzdpm zzgvq;
    private zzdpm zzgvr;
    private zzdip zzgwa;

    public static final class zza extends zzdqw.zza<zzdit, zza> implements zzdsi {
        private zza() {
            super(zzdit.zzgwi);
        }

        /* synthetic */ zza(zzdiu zzdiuVar) {
            this();
        }

        public final zza zzbd(zzdpm zzdpmVar) {
            zzazn();
            ((zzdit) this.zzhkp).zzau(zzdpmVar);
            return this;
        }

        public final zza zzbe(zzdpm zzdpmVar) {
            zzazn();
            ((zzdit) this.zzhkp).zzav(zzdpmVar);
            return this;
        }

        public final zza zzc(zzdip zzdipVar) {
            zzazn();
            ((zzdit) this.zzhkp).zzb(zzdipVar);
            return this;
        }

        public final zza zzeh(int i2) {
            zzazn();
            ((zzdit) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdit zzditVar = new zzdit();
        zzgwi = zzditVar;
        zzdqw.zza((Class<zzdit>) zzdit.class, zzditVar);
    }

    private zzdit() {
        zzdpm zzdpmVar = zzdpm.zzhgb;
        this.zzgvq = zzdpmVar;
        this.zzgvr = zzdpmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    public static zza zzasy() {
        return zzgwi.zzazt();
    }

    public static zzdit zzasz() {
        return zzgwi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzau(zzdpm zzdpmVar) {
        if (zzdpmVar == null) {
            throw new NullPointerException();
        }
        this.zzgvq = zzdpmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzav(zzdpm zzdpmVar) {
        if (zzdpmVar == null) {
            throw new NullPointerException();
        }
        this.zzgvr = zzdpmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdip zzdipVar) {
        if (zzdipVar == null) {
            throw new NullPointerException();
        }
        this.zzgwa = zzdipVar;
    }

    public static zzdit zzbb(zzdpm zzdpmVar) {
        return (zzdit) zzdqw.zza(zzgwi, zzdpmVar);
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdiu zzdiuVar = null;
        switch (zzdiu.zzdi[i2 - 1]) {
            case 1:
                return new zzdit();
            case 2:
                return new zza(zzdiuVar);
            case 3:
                return zzdqw.zza(zzgwi, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzgtt", "zzgwa", "zzgvq", "zzgvr"});
            case 4:
                return zzgwi;
            case 5:
                zzdsp<zzdit> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdit.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgwi);
                            zzdv = zzcVar;
                        }
                        break;
                    }
                }
                return zzcVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final zzdpm zzasg() {
        return this.zzgvq;
    }

    public final zzdpm zzash() {
        return this.zzgvr;
    }

    public final zzdip zzaso() {
        zzdip zzdipVar = this.zzgwa;
        return zzdipVar == null ? zzdip.zzast() : zzdipVar;
    }
}
