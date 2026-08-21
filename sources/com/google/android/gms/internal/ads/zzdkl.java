package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzdkl extends zzdqw<zzdkl, zza> implements zzdsi {
    private static volatile zzdsp<zzdkl> zzdv;
    private static final zzdkl zzgzj;
    private String zzgzh = "";
    private zzdrd<zzdju> zzgzi = zzdqw.zzazw();

    public static final class zza extends zzdqw.zza<zzdkl, zza> implements zzdsi {
        private zza() {
            super(zzdkl.zzgzj);
        }

        /* synthetic */ zza(zzdkk zzdkkVar) {
            this();
        }

        public final zza zzb(zzdju zzdjuVar) {
            zzazn();
            ((zzdkl) this.zzhkp).zza(zzdjuVar);
            return this;
        }

        public final zza zzhe(String str) {
            zzazn();
            ((zzdkl) this.zzhkp).zzhd(str);
            return this;
        }
    }

    static {
        zzdkl zzdklVar = new zzdkl();
        zzgzj = zzdklVar;
        zzdqw.zza((Class<zzdkl>) zzdkl.class, zzdklVar);
    }

    private zzdkl() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdju zzdjuVar) {
        if (zzdjuVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgzi.zzaxi()) {
            this.zzgzi = zzdqw.zza(this.zzgzi);
        }
        this.zzgzi.add(zzdjuVar);
    }

    public static zza zzavk() {
        return zzgzj.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzhd(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgzh = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdkk zzdkkVar = null;
        switch (zzdkk.zzdi[i2 - 1]) {
            case 1:
                return new zzdkl();
            case 2:
                return new zza(zzdkkVar);
            case 3:
                return zzdqw.zza(zzgzj, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzgzh", "zzgzi", zzdju.class});
            case 4:
                return zzgzj;
            case 5:
                zzdsp<zzdkl> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdkl.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgzj);
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

    public final List<zzdju> zzavj() {
        return this.zzgzi;
    }
}
