package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzdjx extends zzdqw<zzdjx, zzb> implements zzdsi {
    private static volatile zzdsp<zzdjx> zzdv;
    private static final zzdjx zzgyj;
    private int zzgyh;
    private zzdrd<zza> zzgyi = zzdqw.zzazw();

    public static final class zza extends zzdqw<zza, C0157zza> implements zzdsi {
        private static volatile zzdsp<zza> zzdv;
        private static final zza zzgyn;
        private int zzgya;
        private zzdjn zzgyk;
        private int zzgyl;
        private int zzgym;

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdjx$zza$zza, reason: collision with other inner class name */
        public static final class C0157zza extends zzdqw.zza<zza, C0157zza> implements zzdsi {
            private C0157zza() {
                super(zza.zzgyn);
            }

            /* synthetic */ C0157zza(zzdjw zzdjwVar) {
                this();
            }

            public final C0157zza zzb(zzdjn zzdjnVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzdjnVar);
                return this;
            }

            public final C0157zza zzb(zzdjr zzdjrVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzdjrVar);
                return this;
            }

            public final C0157zza zzb(zzdkj zzdkjVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzdkjVar);
                return this;
            }

            public final C0157zza zzeu(int i2) {
                zzazn();
                ((zza) this.zzhkp).zzes(i2);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzgyn = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdjn zzdjnVar) {
            if (zzdjnVar == null) {
                throw new NullPointerException();
            }
            this.zzgyk = zzdjnVar;
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

        public static C0157zza zzauq() {
            return zzgyn.zzazt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzes(int i2) {
            this.zzgym = i2;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzdjw zzdjwVar = null;
            switch (zzdjw.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0157zza(zzdjwVar);
                case 3:
                    return zzdqw.zza(zzgyn, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzgyk", "zzgyl", "zzgym", "zzgya"});
                case 4:
                    return zzgyn;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzgyn);
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

        public final zzdjr zzaps() {
            zzdjr zzdjrVarZzeo = zzdjr.zzeo(this.zzgyl);
            return zzdjrVarZzeo == null ? zzdjr.UNRECOGNIZED : zzdjrVarZzeo;
        }

        public final zzdkj zzapt() {
            zzdkj zzdkjVarZzez = zzdkj.zzez(this.zzgya);
            return zzdkjVarZzez == null ? zzdkj.UNRECOGNIZED : zzdkjVarZzez;
        }

        public final boolean zzaun() {
            return this.zzgyk != null;
        }

        public final zzdjn zzauo() {
            zzdjn zzdjnVar = this.zzgyk;
            return zzdjnVar == null ? zzdjn.zzaty() : zzdjnVar;
        }

        public final int zzaup() {
            return this.zzgym;
        }
    }

    public static final class zzb extends zzdqw.zza<zzdjx, zzb> implements zzdsi {
        private zzb() {
            super(zzdjx.zzgyj);
        }

        /* synthetic */ zzb(zzdjw zzdjwVar) {
            this();
        }

        public final zzb zzb(zza zzaVar) {
            zzazn();
            ((zzdjx) this.zzhkp).zza(zzaVar);
            return this;
        }

        public final zzb zzet(int i2) {
            zzazn();
            ((zzdjx) this.zzhkp).zzer(i2);
            return this;
        }
    }

    static {
        zzdjx zzdjxVar = new zzdjx();
        zzgyj = zzdjxVar;
        zzdqw.zza((Class<zzdjx>) zzdjx.class, zzdjxVar);
    }

    private zzdjx() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zza zzaVar) {
        if (zzaVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgyi.zzaxi()) {
            this.zzgyi = zzdqw.zza(this.zzgyi);
        }
        this.zzgyi.add(zzaVar);
    }

    public static zzb zzaul() {
        return zzgyj.zzazt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzer(int i2) {
        this.zzgyh = i2;
    }

    public static zzdjx zzm(byte[] bArr) {
        return (zzdjx) zzdqw.zza(zzgyj, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjw zzdjwVar = null;
        switch (zzdjw.zzdi[i2 - 1]) {
            case 1:
                return new zzdjx();
            case 2:
                return new zzb(zzdjwVar);
            case 3:
                return zzdqw.zza(zzgyj, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzgyh", "zzgyi", zza.class});
            case 4:
                return zzgyj;
            case 5:
                zzdsp<zzdjx> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdjx.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyj);
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

    public final int zzaui() {
        return this.zzgyh;
    }

    public final List<zza> zzauj() {
        return this.zzgyi;
    }

    public final int zzauk() {
        return this.zzgyi.size();
    }
}
