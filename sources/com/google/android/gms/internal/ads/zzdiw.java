package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdiw extends zzdqw<zzdiw, zza> implements zzdsi {
    private static volatile zzdsp<zzdiw> zzdv;
    private static final zzdiw zzgwl;
    private int zzguh;
    private int zzgwj;
    private zzdpm zzgwk = zzdpm.zzhgb;

    public static final class zza extends zzdqw.zza<zzdiw, zza> implements zzdsi {
        private zza() {
            super(zzdiw.zzgwl);
        }

        /* synthetic */ zza(zzdiv zzdivVar) {
            this();
        }
    }

    static {
        zzdiw zzdiwVar = new zzdiw();
        zzgwl = zzdiwVar;
        zzdqw.zza((Class<zzdiw>) zzdiw.class, zzdiwVar);
    }

    private zzdiw() {
    }

    public static zzdiw zzatd() {
        return zzgwl;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdiv zzdivVar = null;
        switch (zzdiv.zzdi[i2 - 1]) {
            case 1:
                return new zzdiw();
            case 2:
                return new zza(zzdivVar);
            case 3:
                return zzdqw.zza(zzgwl, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzgwj", "zzguh", "zzgwk"});
            case 4:
                return zzgwl;
            case 5:
                zzdsp<zzdiw> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdiw.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgwl);
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

    public final zzdjg zzaqp() {
        zzdjg zzdjgVarZzel = zzdjg.zzel(this.zzguh);
        return zzdjgVarZzel == null ? zzdjg.UNRECOGNIZED : zzdjgVarZzel;
    }

    public final zzdjb zzatb() {
        zzdjb zzdjbVarZzej = zzdjb.zzej(this.zzgwj);
        return zzdjbVarZzej == null ? zzdjb.UNRECOGNIZED : zzdjbVarZzej;
    }

    public final zzdpm zzatc() {
        return this.zzgwk;
    }
}
