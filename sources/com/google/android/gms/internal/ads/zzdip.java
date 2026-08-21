package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdip extends zzdqw<zzdip, zza> implements zzdsi {
    private static volatile zzdsp<zzdip> zzdv;
    private static final zzdip zzgwf;
    private zzdiw zzgwc;
    private zzdik zzgwd;
    private int zzgwe;

    public static final class zza extends zzdqw.zza<zzdip, zza> implements zzdsi {
        private zza() {
            super(zzdip.zzgwf);
        }

        /* synthetic */ zza(zzdiq zzdiqVar) {
            this();
        }
    }

    static {
        zzdip zzdipVar = new zzdip();
        zzgwf = zzdipVar;
        zzdqw.zza((Class<zzdip>) zzdip.class, zzdipVar);
    }

    private zzdip() {
    }

    public static zzdip zzast() {
        return zzgwf;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdiq zzdiqVar = null;
        switch (zzdiq.zzdi[i2 - 1]) {
            case 1:
                return new zzdip();
            case 2:
                return new zza(zzdiqVar);
            case 3:
                return zzdqw.zza(zzgwf, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzgwc", "zzgwd", "zzgwe"});
            case 4:
                return zzgwf;
            case 5:
                zzdsp<zzdip> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdip.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgwf);
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

    public final zzdiw zzasq() {
        zzdiw zzdiwVar = this.zzgwc;
        return zzdiwVar == null ? zzdiw.zzatd() : zzdiwVar;
    }

    public final zzdik zzasr() {
        zzdik zzdikVar = this.zzgwd;
        return zzdikVar == null ? zzdik.zzasm() : zzdikVar;
    }

    public final zzdhz zzass() {
        zzdhz zzdhzVarZzeb = zzdhz.zzeb(this.zzgwe);
        return zzdhzVarZzeb == null ? zzdhz.UNRECOGNIZED : zzdhzVarZzeb;
    }
}
