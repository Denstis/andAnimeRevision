package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjt extends zzdqw<zzdjt, zza> implements zzdsi {
    private static volatile zzdsp<zzdjt> zzdv;
    private static final zzdjt zzgyb;
    private String zzgxj = "";
    private zzdpm zzgxk = zzdpm.zzhgb;
    private int zzgya;

    public static final class zza extends zzdqw.zza<zzdjt, zza> implements zzdsi {
        private zza() {
            super(zzdjt.zzgyb);
        }

        /* synthetic */ zza(zzdjs zzdjsVar) {
            this();
        }
    }

    static {
        zzdjt zzdjtVar = new zzdjt();
        zzgyb = zzdjtVar;
        zzdqw.zza((Class<zzdjt>) zzdjt.class, zzdjtVar);
    }

    private zzdjt() {
    }

    public static zzdjt zzaua() {
        return zzgyb;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjs zzdjsVar = null;
        switch (zzdjs.zzdi[i2 - 1]) {
            case 1:
                return new zzdjt();
            case 2:
                return new zza(zzdjsVar);
            case 3:
                return zzdqw.zza(zzgyb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzgxj", "zzgxk", "zzgya"});
            case 4:
                return zzgyb;
            case 5:
                zzdsp<zzdjt> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjt.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyb);
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

    public final String zzatu() {
        return this.zzgxj;
    }

    public final zzdpm zzatv() {
        return this.zzgxk;
    }
}
