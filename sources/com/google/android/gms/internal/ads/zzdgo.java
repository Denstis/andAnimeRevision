package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdgo extends zzdqw<zzdgo, zza> implements zzdsi {
    private static volatile zzdsp<zzdgo> zzdv;
    private static final zzdgo zzgtw;
    private int zzgtt;
    private zzdgx zzgtu;
    private zzdji zzgtv;

    public static final class zza extends zzdqw.zza<zzdgo, zza> implements zzdsi {
        private zza() {
            super(zzdgo.zzgtw);
        }

        /* synthetic */ zza(zzdgn zzdgnVar) {
            this();
        }

        public final zza zzb(zzdgx zzdgxVar) {
            zzazn();
            ((zzdgo) this.zzhkp).zza(zzdgxVar);
            return this;
        }

        public final zza zzb(zzdji zzdjiVar) {
            zzazn();
            ((zzdgo) this.zzhkp).zza(zzdjiVar);
            return this;
        }

        public final zza zzdu(int i2) {
            zzazn();
            ((zzdgo) this.zzhkp).setVersion(i2);
            return this;
        }
    }

    static {
        zzdgo zzdgoVar = new zzdgo();
        zzgtw = zzdgoVar;
        zzdqw.zza((Class<zzdgo>) zzdgo.class, zzdgoVar);
    }

    private zzdgo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdgx zzdgxVar) {
        if (zzdgxVar == null) {
            throw new NullPointerException();
        }
        this.zzgtu = zzdgxVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdji zzdjiVar) {
        if (zzdjiVar == null) {
            throw new NullPointerException();
        }
        this.zzgtv = zzdjiVar;
    }

    public static zza zzaqd() {
        return zzgtw.zzazt();
    }

    public static zzdgo zzu(zzdpm zzdpmVar) {
        return (zzdgo) zzdqw.zza(zzgtw, zzdpmVar);
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdgn zzdgnVar = null;
        switch (zzdgn.zzdi[i2 - 1]) {
            case 1:
                return new zzdgo();
            case 2:
                return new zza(zzdgnVar);
            case 3:
                return zzdqw.zza(zzgtw, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzgtt", "zzgtu", "zzgtv"});
            case 4:
                return zzgtw;
            case 5:
                zzdsp<zzdgo> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdgo.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgtw);
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

    public final zzdgx zzaqb() {
        zzdgx zzdgxVar = this.zzgtu;
        return zzdgxVar == null ? zzdgx.zzaqv() : zzdgxVar;
    }

    public final zzdji zzaqc() {
        zzdji zzdjiVar = this.zzgtv;
        return zzdjiVar == null ? zzdji.zzatm() : zzdjiVar;
    }
}
