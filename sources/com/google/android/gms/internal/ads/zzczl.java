package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzczh;
import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzczl extends zzdqw<zzczl, zza> implements zzdsi {
    private static volatile zzdsp<zzczl> zzdv;
    private static final zzczl zzgoa;
    private int zzdj;
    private int zzgnx;
    private zzczh zzgnz;
    private String zzdk = "";
    private String zzgny = "";

    public static final class zza extends zzdqw.zza<zzczl, zza> implements zzdsi {
        private zza() {
            super(zzczl.zzgoa);
        }

        /* synthetic */ zza(zzczm zzczmVar) {
            this();
        }

        public final zza zzb(zzczh.zzb zzbVar) {
            zzazn();
            ((zzczl) this.zzhkp).zza(zzbVar);
            return this;
        }

        public final zza zzb(zzb zzbVar) {
            zzazn();
            ((zzczl) this.zzhkp).zza(zzbVar);
            return this;
        }

        public final zza zzgo(String str) {
            zzazn();
            ((zzczl) this.zzhkp).zzm(str);
            return this;
        }
    }

    public enum zzb implements zzdra {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);

        private static final zzdqz<zzb> zzeg = new zzczn();
        private final int value;

        zzb(int i2) {
            this.value = i2;
        }

        public static zzdrc zzac() {
            return zzczp.zzep;
        }

        public static zzb zzdm(int i2) {
            if (i2 == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i2 != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzdra
        public final int zzab() {
            return this.value;
        }
    }

    static {
        zzczl zzczlVar = new zzczl();
        zzgoa = zzczlVar;
        zzdqw.zza((Class<zzczl>) zzczl.class, zzczlVar);
    }

    private zzczl() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzczh.zzb zzbVar) {
        this.zzgnz = (zzczh) zzbVar.zzazr();
        this.zzdj |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        this.zzdj |= 1;
        this.zzgnx = zzbVar.zzab();
    }

    public static zza zzanz() {
        return zzgoa.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdj |= 2;
        this.zzdk = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzczm zzczmVar = null;
        switch (zzczm.zzdi[i2 - 1]) {
            case 1:
                return new zzczl();
            case 2:
                return new zza(zzczmVar);
            case 3:
                return zzdqw.zza(zzgoa, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\f\u0000\u0002\b\u0001\u0003\b\u0002\u0004\t\u0003", new Object[]{"zzdj", "zzgnx", zzb.zzac(), "zzdk", "zzgny", "zzgnz"});
            case 4:
                return zzgoa;
            case 5:
                zzdsp<zzczl> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzczl.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgoa);
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
