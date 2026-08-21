package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjm extends zzdqw<zzdjm, zza> implements zzdsi {
    private static volatile zzdsp<zzdjm> zzdv;
    private static final zzdjm zzgxi;
    private int zzgxg;
    private int zzgxh;

    public static final class zza extends zzdqw.zza<zzdjm, zza> implements zzdsi {
        private zza() {
            super(zzdjm.zzgxi);
        }

        /* synthetic */ zza(zzdjl zzdjlVar) {
            this();
        }
    }

    static {
        zzdjm zzdjmVar = new zzdjm();
        zzgxi = zzdjmVar;
        zzdqw.zza((Class<zzdjm>) zzdjm.class, zzdjmVar);
    }

    private zzdjm() {
    }

    public static zzdjm zzats() {
        return zzgxi;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjl zzdjlVar = null;
        switch (zzdjl.zzdi[i2 - 1]) {
            case 1:
                return new zzdjm();
            case 2:
                return new zza(zzdjlVar);
            case 3:
                return zzdqw.zza(zzgxi, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzgxg", "zzgxh"});
            case 4:
                return zzgxi;
            case 5:
                zzdsp<zzdjm> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjm.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgxi);
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

    public final zzdjg zzatq() {
        zzdjg zzdjgVarZzel = zzdjg.zzel(this.zzgxg);
        return zzdjgVarZzel == null ? zzdjg.UNRECOGNIZED : zzdjgVarZzel;
    }

    public final int zzatr() {
        return this.zzgxh;
    }
}
