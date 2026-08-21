package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzczh extends zzdqw<zzczh, zzb> implements zzdsi {
    private static volatile zzdsp<zzczh> zzdv;
    private static final zzdre<Integer, zza> zzgnp = new zzczg();
    private static final zzczh zzgnt;
    private int zzdj;
    private zzdrb zzgno = zzdqw.zzazv();
    private String zzgnq = "";
    private String zzgnr = "";
    private String zzgns = "";

    public enum zza implements zzdra {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);

        private static final zzdqz<zza> zzeg = new zzczk();
        private final int value;

        zza(int i2) {
            this.value = i2;
        }

        public static zzdrc zzac() {
            return zzczj.zzep;
        }

        public static zza zzdl(int i2) {
            if (i2 == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i2 != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzdra
        public final int zzab() {
            return this.value;
        }
    }

    public static final class zzb extends zzdqw.zza<zzczh, zzb> implements zzdsi {
        private zzb() {
            super(zzczh.zzgnt);
        }

        /* synthetic */ zzb(zzczg zzczgVar) {
            this();
        }

        public final zzb zzb(zza zzaVar) {
            zzazn();
            ((zzczh) this.zzhkp).zza(zzaVar);
            return this;
        }

        public final zzb zzgn(String str) {
            zzazn();
            ((zzczh) this.zzhkp).zzgm(str);
            return this;
        }
    }

    static {
        zzczh zzczhVar = new zzczh();
        zzgnt = zzczhVar;
        zzdqw.zza((Class<zzczh>) zzczh.class, zzczhVar);
    }

    private zzczh() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zza zzaVar) {
        if (zzaVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgno.zzaxi()) {
            this.zzgno = zzdqw.zza(this.zzgno);
        }
        this.zzgno.zzgp(zzaVar.zzab());
    }

    public static zzb zzanx() {
        return zzgnt.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgm(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdj |= 1;
        this.zzgnq = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzczg zzczgVar = null;
        switch (zzczi.zzdi[i2 - 1]) {
            case 1:
                return new zzczh();
            case 2:
                return new zzb(zzczgVar);
            case 3:
                return zzdqw.zza(zzgnt, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\b\u0000\u0003\b\u0001\u0004\b\u0002", new Object[]{"zzdj", "zzgno", zza.zzac(), "zzgnq", "zzgnr", "zzgns"});
            case 4:
                return zzgnt;
            case 5:
                zzdsp<zzczh> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzczh.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgnt);
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
