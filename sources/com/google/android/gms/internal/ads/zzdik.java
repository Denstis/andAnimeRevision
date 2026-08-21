package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdik extends zzdqw<zzdik, zza> implements zzdsi {
    private static volatile zzdsp<zzdik> zzdv;
    private static final zzdik zzgvz;
    private zzdjt zzgvy;

    public static final class zza extends zzdqw.zza<zzdik, zza> implements zzdsi {
        private zza() {
            super(zzdik.zzgvz);
        }

        /* synthetic */ zza(zzdim zzdimVar) {
            this();
        }
    }

    static {
        zzdik zzdikVar = new zzdik();
        zzgvz = zzdikVar;
        zzdqw.zza((Class<zzdik>) zzdik.class, zzdikVar);
    }

    private zzdik() {
    }

    public static zzdik zzasm() {
        return zzgvz;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdim zzdimVar = null;
        switch (zzdim.zzdi[i2 - 1]) {
            case 1:
                return new zzdik();
            case 2:
                return new zza(zzdimVar);
            case 3:
                return zzdqw.zza(zzgvz, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzgvy"});
            case 4:
                return zzgvz;
            case 5:
                zzdsp<zzdik> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdik.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgvz);
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

    public final zzdjt zzasl() {
        zzdjt zzdjtVar = this.zzgvy;
        return zzdjtVar == null ? zzdjt.zzaua() : zzdjtVar;
    }
}
