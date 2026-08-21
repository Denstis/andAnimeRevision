package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdha extends zzdqw<zzdha, zza> implements zzdsi {
    private static volatile zzdsp<zzdha> zzdv;
    private static final zzdha zzgum;
    private int zzgud;
    private zzdhb zzguk;

    public static final class zza extends zzdqw.zza<zzdha, zza> implements zzdsi {
        private zza() {
            super(zzdha.zzgum);
        }

        /* synthetic */ zza(zzdgz zzdgzVar) {
            this();
        }
    }

    static {
        zzdha zzdhaVar = new zzdha();
        zzgum = zzdhaVar;
        zzdqw.zza((Class<zzdha>) zzdha.class, zzdhaVar);
    }

    private zzdha() {
    }

    public static zzdha zzac(zzdpm zzdpmVar) {
        return (zzdha) zzdqw.zza(zzgum, zzdpmVar);
    }

    public static zzdha zzaqx() {
        return zzgum;
    }

    public final int getKeySize() {
        return this.zzgud;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdgz zzdgzVar = null;
        switch (zzdgz.zzdi[i2 - 1]) {
            case 1:
                return new zzdha();
            case 2:
                return new zza(zzdgzVar);
            case 3:
                return zzdqw.zza(zzgum, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzguk", "zzgud"});
            case 4:
                return zzgum;
            case 5:
                zzdsp<zzdha> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdha.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgum);
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

    public final zzdhb zzaqt() {
        zzdhb zzdhbVar = this.zzguk;
        return zzdhbVar == null ? zzdhb.zzara() : zzdhbVar;
    }
}
