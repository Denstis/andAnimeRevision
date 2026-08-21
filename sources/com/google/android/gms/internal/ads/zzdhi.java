package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhi extends zzdqw<zzdhi, zza> implements zzdsi {
    private static volatile zzdsp<zzdhi> zzdv;
    private static final zzdhi zzgus;
    private int zzgun;

    public static final class zza extends zzdqw.zza<zzdhi, zza> implements zzdsi {
        private zza() {
            super(zzdhi.zzgus);
        }

        /* synthetic */ zza(zzdhh zzdhhVar) {
            this();
        }
    }

    static {
        zzdhi zzdhiVar = new zzdhi();
        zzgus = zzdhiVar;
        zzdqw.zza((Class<zzdhi>) zzdhi.class, zzdhiVar);
    }

    private zzdhi() {
    }

    public static zzdhi zzarg() {
        return zzgus;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdhh zzdhhVar = null;
        switch (zzdhh.zzdi[i2 - 1]) {
            case 1:
                return new zzdhi();
            case 2:
                return new zza(zzdhhVar);
            case 3:
                return zzdqw.zza(zzgus, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzgun"});
            case 4:
                return zzgus;
            case 5:
                zzdsp<zzdhi> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhi.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgus);
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

    public final int zzaqz() {
        return this.zzgun;
    }
}
