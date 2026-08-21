package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdgx extends zzdqw<zzdgx, zza> implements zzdsi {
    private static volatile zzdsp<zzdgx> zzdv;
    private static final zzdgx zzgul;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;
    private zzdhb zzguk;

    public static final class zza extends zzdqw.zza<zzdgx, zza> implements zzdsi {
        private zza() {
            super(zzdgx.zzgul);
        }

        /* synthetic */ zza(zzdgy zzdgyVar) {
            this();
        }

        public final zza zzab(zzdpm zzdpmVar) {
            zzazn();
            ((zzdgx) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzc(zzdhb zzdhbVar) {
            zzazn();
            ((zzdgx) this.zzhkp).zzb(zzdhbVar);
            return this;
        }

        public final zza zzdw(int i2) {
            zzazn();
            ((zzdgx) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdgx zzdgxVar = new zzdgx();
        zzgul = zzdgxVar;
        zzdqw.zza((Class<zzdgx>) zzdgx.class, zzdgxVar);
    }

    private zzdgx() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    public static zzdgx zzaa(zzdpm zzdpmVar) {
        return (zzdgx) zzdqw.zza(zzgul, zzdpmVar);
    }

    public static zza zzaqu() {
        return zzgul.zzazt();
    }

    public static zzdgx zzaqv() {
        return zzgul;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdhb zzdhbVar) {
        if (zzdhbVar == null) {
            throw new NullPointerException();
        }
        this.zzguk = zzdhbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzw(zzdpm zzdpmVar) {
        if (zzdpmVar == null) {
            throw new NullPointerException();
        }
        this.zzgub = zzdpmVar;
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdgy zzdgyVar = null;
        switch (zzdgy.zzdi[i2 - 1]) {
            case 1:
                return new zzdgx();
            case 2:
                return new zza(zzdgyVar);
            case 3:
                return zzdqw.zza(zzgul, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtt", "zzguk", "zzgub"});
            case 4:
                return zzgul;
            case 5:
                zzdsp<zzdgx> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdgx.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgul);
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

    public final zzdpm zzaqj() {
        return this.zzgub;
    }

    public final zzdhb zzaqt() {
        zzdhb zzdhbVar = this.zzguk;
        return zzdhbVar == null ? zzdhb.zzara() : zzdhbVar;
    }
}
