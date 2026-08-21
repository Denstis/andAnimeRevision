package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdio extends zzdqw<zzdio, zza> implements zzdsi {
    private static volatile zzdsp<zzdio> zzdv;
    private static final zzdio zzgwb;
    private zzdip zzgwa;

    public static final class zza extends zzdqw.zza<zzdio, zza> implements zzdsi {
        private zza() {
            super(zzdio.zzgwb);
        }

        /* synthetic */ zza(zzdin zzdinVar) {
            this();
        }
    }

    static {
        zzdio zzdioVar = new zzdio();
        zzgwb = zzdioVar;
        zzdqw.zza((Class<zzdio>) zzdio.class, zzdioVar);
    }

    private zzdio() {
    }

    public static zzdio zzaz(zzdpm zzdpmVar) {
        return (zzdio) zzdqw.zza(zzgwb, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdin zzdinVar = null;
        switch (zzdin.zzdi[i2 - 1]) {
            case 1:
                return new zzdio();
            case 2:
                return new zza(zzdinVar);
            case 3:
                return zzdqw.zza(zzgwb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzgwa"});
            case 4:
                return zzgwb;
            case 5:
                zzdsp<zzdio> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdio.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgwb);
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

    public final zzdip zzaso() {
        zzdip zzdipVar = this.zzgwa;
        return zzdipVar == null ? zzdip.zzast() : zzdipVar;
    }
}
