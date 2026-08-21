package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdkg extends zzdqw<zzdkg, zza> implements zzdsi {
    private static volatile zzdsp<zzdkg> zzdv;
    private static final zzdkg zzgyz;
    private String zzgyx = "";
    private zzdjt zzgyy;

    public static final class zza extends zzdqw.zza<zzdkg, zza> implements zzdsi {
        private zza() {
            super(zzdkg.zzgyz);
        }

        /* synthetic */ zza(zzdkh zzdkhVar) {
            this();
        }
    }

    static {
        zzdkg zzdkgVar = new zzdkg();
        zzgyz = zzdkgVar;
        zzdqw.zza((Class<zzdkg>) zzdkg.class, zzdkgVar);
    }

    private zzdkg() {
    }

    public static zzdkg zzavh() {
        return zzgyz;
    }

    public static zzdkg zzbs(zzdpm zzdpmVar) {
        return (zzdkg) zzdqw.zza(zzgyz, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdkh zzdkhVar = null;
        switch (zzdkh.zzdi[i2 - 1]) {
            case 1:
                return new zzdkg();
            case 2:
                return new zza(zzdkhVar);
            case 3:
                return zzdqw.zza(zzgyz, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzgyx", "zzgyy"});
            case 4:
                return zzgyz;
            case 5:
                zzdsp<zzdkg> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdkg.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyz);
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

    public final String zzavf() {
        return this.zzgyx;
    }

    public final zzdjt zzavg() {
        zzdjt zzdjtVar = this.zzgyy;
        return zzdjtVar == null ? zzdjt.zzaua() : zzdjtVar;
    }
}
