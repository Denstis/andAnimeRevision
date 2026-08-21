package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjn extends zzdqw<zzdjn, zza> implements zzdsi {
    private static volatile zzdsp<zzdjn> zzdv;
    private static final zzdjn zzgxm;
    private String zzgxj = "";
    private zzdpm zzgxk = zzdpm.zzhgb;
    private int zzgxl;

    public static final class zza extends zzdqw.zza<zzdjn, zza> implements zzdsi {
        private zza() {
            super(zzdjn.zzgxm);
        }

        /* synthetic */ zza(zzdjo zzdjoVar) {
            this();
        }

        public final zza zzb(zzb zzbVar) {
            zzazn();
            ((zzdjn) this.zzhkp).zza(zzbVar);
            return this;
        }

        public final zza zzbo(zzdpm zzdpmVar) {
            zzazn();
            ((zzdjn) this.zzhkp).zzbn(zzdpmVar);
            return this;
        }

        public final zza zzgw(String str) {
            zzazn();
            ((zzdjn) this.zzhkp).zzgv(str);
            return this;
        }
    }

    public enum zzb implements zzdra {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        private static final zzdqz<zzb> zzeg = new zzdjp();
        private final int value;

        zzb(int i2) {
            this.value = i2;
        }

        public static zzb zzen(int i2) {
            if (i2 == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i2 == 1) {
                return SYMMETRIC;
            }
            if (i2 == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i2 == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i2 != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(zzb.class.getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzab());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.zzdra
        public final int zzab() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        zzdjn zzdjnVar = new zzdjn();
        zzgxm = zzdjnVar;
        zzdqw.zza((Class<zzdjn>) zzdjn.class, zzdjnVar);
    }

    private zzdjn() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        this.zzgxl = zzbVar.zzab();
    }

    public static zza zzatx() {
        return zzgxm.zzazt();
    }

    public static zzdjn zzaty() {
        return zzgxm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbn(zzdpm zzdpmVar) {
        if (zzdpmVar == null) {
            throw new NullPointerException();
        }
        this.zzgxk = zzdpmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgv(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgxj = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjo zzdjoVar = null;
        switch (zzdjo.zzdi[i2 - 1]) {
            case 1:
                return new zzdjn();
            case 2:
                return new zza(zzdjoVar);
            case 3:
                return zzdqw.zza(zzgxm, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzgxj", "zzgxk", "zzgxl"});
            case 4:
                return zzgxm;
            case 5:
                zzdsp<zzdjn> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjn.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgxm);
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

    public final zzdpm zzatv() {
        return this.zzgxk;
    }

    public final zzb zzatw() {
        zzb zzbVarZzen = zzb.zzen(this.zzgxl);
        return zzbVarZzen == null ? zzb.UNRECOGNIZED : zzbVarZzen;
    }
}
