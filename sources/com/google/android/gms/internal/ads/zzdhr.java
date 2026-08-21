package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhr extends zzdqw<zzdhr, zza> implements zzdsi {
    private static volatile zzdsp<zzdhr> zzdv;
    private static final zzdhr zzguy;
    private int zzgud;

    public static final class zza extends zzdqw.zza<zzdhr, zza> implements zzdsi {
        private zza() {
            super(zzdhr.zzguy);
        }

        /* synthetic */ zza(zzdhs zzdhsVar) {
            this();
        }
    }

    static {
        zzdhr zzdhrVar = new zzdhr();
        zzguy = zzdhrVar;
        zzdqw.zza((Class<zzdhr>) zzdhr.class, zzdhrVar);
    }

    private zzdhr() {
    }

    public static zzdhr zzak(zzdpm zzdpmVar) {
        return (zzdhr) zzdqw.zza(zzguy, zzdpmVar);
    }

    public final int getKeySize() {
        return this.zzgud;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdhs zzdhsVar = null;
        switch (zzdhs.zzdi[i2 - 1]) {
            case 1:
                return new zzdhr();
            case 2:
                return new zza(zzdhsVar);
            case 3:
                return zzdqw.zza(zzguy, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u000b", new Object[]{"zzgud"});
            case 4:
                return zzguy;
            case 5:
                zzdsp<zzdhr> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhr.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzguy);
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
}
