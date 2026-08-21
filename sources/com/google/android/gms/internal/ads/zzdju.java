package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdju extends zzdqw<zzdju, zza> implements zzdsi {
    private static volatile zzdsp<zzdju> zzdv;
    private static final zzdju zzgyg;
    private int zzgyd;
    private boolean zzgye;
    private String zzgyc = "";
    private String zzgxj = "";
    private String zzgyf = "";

    public static final class zza extends zzdqw.zza<zzdju, zza> implements zzdsi {
        private zza() {
            super(zzdju.zzgyg);
        }

        /* synthetic */ zza(zzdjv zzdjvVar) {
            this();
        }

        public final zza zzbg(boolean z) {
            zzazn();
            ((zzdju) this.zzhkp).zzbf(true);
            return this;
        }

        public final zza zzeq(int i2) {
            zzazn();
            ((zzdju) this.zzhkp).zzep(0);
            return this;
        }

        public final zza zzgz(String str) {
            zzazn();
            ((zzdju) this.zzhkp).zzgx(str);
            return this;
        }

        public final zza zzha(String str) {
            zzazn();
            ((zzdju) this.zzhkp).zzgv(str);
            return this;
        }

        public final zza zzhb(String str) {
            zzazn();
            ((zzdju) this.zzhkp).zzgy(str);
            return this;
        }
    }

    static {
        zzdju zzdjuVar = new zzdju();
        zzgyg = zzdjuVar;
        zzdqw.zza((Class<zzdju>) zzdju.class, zzdjuVar);
    }

    private zzdju() {
    }

    public static zza zzaug() {
        return zzgyg.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbf(boolean z) {
        this.zzgye = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzep(int i2) {
        this.zzgyd = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgv(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgxj = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgx(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgyc = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgy(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgyf = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjv zzdjvVar = null;
        switch (zzdjv.zzdi[i2 - 1]) {
            case 1:
                return new zzdju();
            case 2:
                return new zza(zzdjvVar);
            case 3:
                return zzdqw.zza(zzgyg, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzgyc", "zzgxj", "zzgyd", "zzgye", "zzgyf"});
            case 4:
                return zzgyg;
            case 5:
                zzdsp<zzdju> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdju.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyg);
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

    public final String zzauc() {
        return this.zzgyc;
    }

    public final int zzaud() {
        return this.zzgyd;
    }

    public final boolean zzaue() {
        return this.zzgye;
    }

    public final String zzauf() {
        return this.zzgyf;
    }
}
