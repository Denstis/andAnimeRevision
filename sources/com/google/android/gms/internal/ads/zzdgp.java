package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdgp extends zzdqw<zzdgp, zza> implements zzdsi {
    private static volatile zzdsp<zzdgp> zzdv;
    private static final zzdgp zzgtz;
    private zzdha zzgtx;
    private zzdjj zzgty;

    public static final class zza extends zzdqw.zza<zzdgp, zza> implements zzdsi {
        private zza() {
            super(zzdgp.zzgtz);
        }

        /* synthetic */ zza(zzdgq zzdgqVar) {
            this();
        }
    }

    static {
        zzdgp zzdgpVar = new zzdgp();
        zzgtz = zzdgpVar;
        zzdqw.zza((Class<zzdgp>) zzdgp.class, zzdgpVar);
    }

    private zzdgp() {
    }

    public static zzdgp zzv(zzdpm zzdpmVar) {
        return (zzdgp) zzdqw.zza(zzgtz, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdgq zzdgqVar = null;
        switch (zzdgq.zzdi[i2 - 1]) {
            case 1:
                return new zzdgp();
            case 2:
                return new zza(zzdgqVar);
            case 3:
                return zzdqw.zza(zzgtz, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzgtx", "zzgty"});
            case 4:
                return zzgtz;
            case 5:
                zzdsp<zzdgp> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdgp.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgtz);
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

    public final zzdha zzaqf() {
        zzdha zzdhaVar = this.zzgtx;
        return zzdhaVar == null ? zzdha.zzaqx() : zzdhaVar;
    }

    public final zzdjj zzaqg() {
        zzdjj zzdjjVar = this.zzgty;
        return zzdjjVar == null ? zzdjj.zzato() : zzdjjVar;
    }
}
