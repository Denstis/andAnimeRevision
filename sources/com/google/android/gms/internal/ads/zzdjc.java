package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjc extends zzdqw<zzdjc, zza> implements zzdsi {
    private static volatile zzdsp<zzdjc> zzdv;
    private static final zzdjc zzgwv;

    public static final class zza extends zzdqw.zza<zzdjc, zza> implements zzdsi {
        private zza() {
            super(zzdjc.zzgwv);
        }

        /* synthetic */ zza(zzdje zzdjeVar) {
            this();
        }
    }

    static {
        zzdjc zzdjcVar = new zzdjc();
        zzgwv = zzdjcVar;
        zzdqw.zza((Class<zzdjc>) zzdjc.class, zzdjcVar);
    }

    private zzdjc() {
    }

    public static zzdjc zzbj(zzdpm zzdpmVar) {
        return (zzdjc) zzdqw.zza(zzgwv, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdje zzdjeVar = null;
        switch (zzdje.zzdi[i2 - 1]) {
            case 1:
                return new zzdjc();
            case 2:
                return new zza(zzdjeVar);
            case 3:
                return zzdqw.zza(zzgwv, "\u0000\u0000", (Object[]) null);
            case 4:
                return zzgwv;
            case 5:
                zzdsp<zzdjc> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjc.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgwv);
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
}
