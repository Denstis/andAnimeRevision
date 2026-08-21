package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhf extends zzdqw<zzdhf, zza> implements zzdsi {
    private static volatile zzdsp<zzdhf> zzdv;
    private static final zzdhf zzgur;
    private int zzgud;
    private zzdhi zzgup;

    public static final class zza extends zzdqw.zza<zzdhf, zza> implements zzdsi {
        private zza() {
            super(zzdhf.zzgur);
        }

        /* synthetic */ zza(zzdhg zzdhgVar) {
            this();
        }
    }

    static {
        zzdhf zzdhfVar = new zzdhf();
        zzgur = zzdhfVar;
        zzdqw.zza((Class<zzdhf>) zzdhf.class, zzdhfVar);
    }

    private zzdhf() {
    }

    public static zzdhf zzae(zzdpm zzdpmVar) {
        return (zzdhf) zzdqw.zza(zzgur, zzdpmVar);
    }

    public final int getKeySize() {
        return this.zzgud;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdhg zzdhgVar = null;
        switch (zzdhg.zzdi[i2 - 1]) {
            case 1:
                return new zzdhf();
            case 2:
                return new zza(zzdhgVar);
            case 3:
                return zzdqw.zza(zzgur, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgup", "zzgud"});
            case 4:
                return zzgur;
            case 5:
                zzdsp<zzdhf> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhf.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgur);
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

    public final zzdhi zzarc() {
        zzdhi zzdhiVar = this.zzgup;
        return zzdhiVar == null ? zzdhi.zzarg() : zzdhiVar;
    }
}
