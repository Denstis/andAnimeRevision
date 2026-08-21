package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjy extends zzdqw<zzdjy, zza> implements zzdsi {
    private static volatile zzdsp<zzdjy> zzdv;
    private static final zzdjy zzgyp;
    private int zzgyh;
    private zzdrd<zzb> zzgyo = zzdqw.zzazw();

    public static final class zza extends zzdqw.zza<zzdjy, zza> implements zzdsi {
        private zza() {
            super(zzdjy.zzgyp);
        }

        /* synthetic */ zza(zzdjz zzdjzVar) {
            this();
        }

        public final zza zzb(zzb zzbVar) {
            zzazn();
            ((zzdjy) this.zzhkp).zza(zzbVar);
            return this;
        }

        public final zza zzev(int i2) {
            zzazn();
            ((zzdjy) this.zzhkp).zzer(i2);
            return this;
        }
    }

    public static final class zzb extends zzdqw<zzb, zza> implements zzdsi {
        private static volatile zzdsp<zzb> zzdv;
        private static final zzb zzgyq;
        private String zzgxj = "";
        private int zzgya;
        private int zzgyl;
        private int zzgym;

        public static final class zza extends zzdqw.zza<zzb, zza> implements zzdsi {
            private zza() {
                super(zzb.zzgyq);
            }

            /* synthetic */ zza(zzdjz zzdjzVar) {
                this();
            }

            public final zza zzc(zzdjr zzdjrVar) {
                zzazn();
                ((zzb) this.zzhkp).zza(zzdjrVar);
                return this;
            }

            public final zza zzc(zzdkj zzdkjVar) {
                zzazn();
                ((zzb) this.zzhkp).zza(zzdkjVar);
                return this;
            }

            public final zza zzew(int i2) {
                zzazn();
                ((zzb) this.zzhkp).zzes(i2);
                return this;
            }

            public final zza zzhc(String str) {
                zzazn();
                ((zzb) this.zzhkp).zzgv(str);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzgyq = zzbVar;
            zzdqw.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdjr zzdjrVar) {
            if (zzdjrVar == null) {
                throw new NullPointerException();
            }
            this.zzgyl = zzdjrVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdkj zzdkjVar) {
            if (zzdkjVar == null) {
                throw new NullPointerException();
            }
            this.zzgya = zzdkjVar.zzab();
        }

        public static zza zzauu() {
            return zzgyq.zzazt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzes(int i2) {
            this.zzgym = i2;
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
            zzdjz zzdjzVar = null;
            switch (zzdjz.zzdi[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzdjzVar);
                case 3:
                    return zzdqw.zza(zzgyq, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzgxj", "zzgyl", "zzgym", "zzgya"});
                case 4:
                    return zzgyq;
                case 5:
                    zzdsp<zzb> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzb.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzgyq);
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

    static {
        zzdjy zzdjyVar = new zzdjy();
        zzgyp = zzdjyVar;
        zzdqw.zza((Class<zzdjy>) zzdjy.class, zzdjyVar);
    }

    private zzdjy() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgyo.zzaxi()) {
            this.zzgyo = zzdqw.zza(this.zzgyo);
        }
        this.zzgyo.add(zzbVar);
    }

    public static zza zzaus() {
        return zzgyp.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzer(int i2) {
        this.zzgyh = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjz zzdjzVar = null;
        switch (zzdjz.zzdi[i2 - 1]) {
            case 1:
                return new zzdjy();
            case 2:
                return new zza(zzdjzVar);
            case 3:
                return zzdqw.zza(zzgyp, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzgyh", "zzgyo", zzb.class});
            case 4:
                return zzgyp;
            case 5:
                zzdsp<zzdjy> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjy.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyp);
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
