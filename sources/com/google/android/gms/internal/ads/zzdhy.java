package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhy extends zzdqw<zzdhy, zza> implements zzdsi {
    private static volatile zzdsp<zzdhy> zzdv;
    private static final zzdhy zzgvb;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;

    public static final class zza extends zzdqw.zza<zzdhy, zza> implements zzdsi {
        private zza() {
            super(zzdhy.zzgvb);
        }

        /* synthetic */ zza(zzdhx zzdhxVar) {
            this();
        }

        public final zza zzaq(zzdpm zzdpmVar) {
            zzazn();
            ((zzdhy) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzec(int i2) {
            zzazn();
            ((zzdhy) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdhy zzdhyVar = new zzdhy();
        zzgvb = zzdhyVar;
        zzdqw.zza((Class<zzdhy>) zzdhy.class, zzdhyVar);
    }

    private zzdhy() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    public static zzdhy zzap(zzdpm zzdpmVar) {
        return (zzdhy) zzdqw.zza(zzgvb, zzdpmVar);
    }

    public static zza zzaru() {
        return zzgvb.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzw(zzdpm zzdpmVar) {
        if (zzdpmVar == null) {
            throw new NullPointerException();
        }
        this.zzgub = zzdpmVar;
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdhx zzdhxVar = null;
        switch (zzdhx.zzdi[i2 - 1]) {
            case 1:
                return new zzdhy();
            case 2:
                return new zza(zzdhxVar);
            case 3:
                return zzdqw.zza(zzgvb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzgtt", "zzgub"});
            case 4:
                return zzgvb;
            case 5:
                zzdsp<zzdhy> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhy.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgvb);
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

    public final zzdpm zzaqj() {
        return this.zzgub;
    }
}
