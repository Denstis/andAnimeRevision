package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdkc extends zzdqw<zzdkc, zza> implements zzdsi {
    private static volatile zzdsp<zzdkc> zzdv;
    private static final zzdkc zzgyu;
    private String zzgyt = "";

    public static final class zza extends zzdqw.zza<zzdkc, zza> implements zzdsi {
        private zza() {
            super(zzdkc.zzgyu);
        }

        /* synthetic */ zza(zzdkd zzdkdVar) {
            this();
        }
    }

    static {
        zzdkc zzdkcVar = new zzdkc();
        zzgyu = zzdkcVar;
        zzdqw.zza((Class<zzdkc>) zzdkc.class, zzdkcVar);
    }

    private zzdkc() {
    }

    public static zzdkc zzava() {
        return zzgyu;
    }

    public static zzdkc zzbq(zzdpm zzdpmVar) {
        return (zzdkc) zzdqw.zza(zzgyu, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdkd zzdkdVar = null;
        switch (zzdkd.zzdi[i2 - 1]) {
            case 1:
                return new zzdkc();
            case 2:
                return new zza(zzdkdVar);
            case 3:
                return zzdqw.zza(zzgyu, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzgyt"});
            case 4:
                return zzgyu;
            case 5:
                zzdsp<zzdkc> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdkc.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyu);
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

    public final String zzauz() {
        return this.zzgyt;
    }
}
