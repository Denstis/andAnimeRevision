package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjj extends zzdqw<zzdjj, zza> implements zzdsi {
    private static volatile zzdsp<zzdjj> zzdv;
    private static final zzdjj zzgxf;
    private int zzgud;
    private zzdjm zzgxd;

    public static final class zza extends zzdqw.zza<zzdjj, zza> implements zzdsi {
        private zza() {
            super(zzdjj.zzgxf);
        }

        /* synthetic */ zza(zzdjk zzdjkVar) {
            this();
        }
    }

    static {
        zzdjj zzdjjVar = new zzdjj();
        zzgxf = zzdjjVar;
        zzdqw.zza((Class<zzdjj>) zzdjj.class, zzdjjVar);
    }

    private zzdjj() {
    }

    public static zzdjj zzato() {
        return zzgxf;
    }

    public static zzdjj zzbl(zzdpm zzdpmVar) {
        return (zzdjj) zzdqw.zza(zzgxf, zzdpmVar);
    }

    public final int getKeySize() {
        return this.zzgud;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjk zzdjkVar = null;
        switch (zzdjk.zzdi[i2 - 1]) {
            case 1:
                return new zzdjj();
            case 2:
                return new zza(zzdjkVar);
            case 3:
                return zzdqw.zza(zzgxf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgxd", "zzgud"});
            case 4:
                return zzgxf;
            case 5:
                zzdsp<zzdjj> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjj.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgxf);
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

    public final zzdjm zzatk() {
        zzdjm zzdjmVar = this.zzgxd;
        return zzdjmVar == null ? zzdjm.zzats() : zzdjmVar;
    }
}
