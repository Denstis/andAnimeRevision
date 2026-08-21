package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhb extends zzdqw<zzdhb, zza> implements zzdsi {
    private static volatile zzdsp<zzdhb> zzdv;
    private static final zzdhb zzguo;
    private int zzgun;

    public static final class zza extends zzdqw.zza<zzdhb, zza> implements zzdsi {
        private zza() {
            super(zzdhb.zzguo);
        }

        /* synthetic */ zza(zzdhc zzdhcVar) {
            this();
        }
    }

    static {
        zzdhb zzdhbVar = new zzdhb();
        zzguo = zzdhbVar;
        zzdqw.zza((Class<zzdhb>) zzdhb.class, zzdhbVar);
    }

    private zzdhb() {
    }

    public static zzdhb zzara() {
        return zzguo;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdhc zzdhcVar = null;
        switch (zzdhc.zzdi[i2 - 1]) {
            case 1:
                return new zzdhb();
            case 2:
                return new zza(zzdhcVar);
            case 3:
                return zzdqw.zza(zzguo, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzgun"});
            case 4:
                return zzguo;
            case 5:
                zzdsp<zzdhb> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhb.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzguo);
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
