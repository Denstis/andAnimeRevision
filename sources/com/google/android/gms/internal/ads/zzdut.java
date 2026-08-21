package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdut {

    public static final class zza extends zzdqw<zza, zzb> implements zzdsi {
        private static volatile zzdsp<zza> zzdv;
        private static final zza zzhsa;
        private int zzdj;
        private int zzhrt;
        private C0158zza zzhru;
        private zzdpm zzhrv;
        private zzdpm zzhrw;
        private boolean zzhrx;
        private boolean zzhry;
        private byte zzhrz = 2;

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zza$zza, reason: collision with other inner class name */
        public static final class C0158zza extends zzdqw<C0158zza, C0159zza> implements zzdsi {
            private static volatile zzdsp<C0158zza> zzdv;
            private static final C0158zza zzhsf;
            private int zzdj;
            private String zzhsb = "";
            private String zzhsc = "";
            private String zzhsd = "";
            private int zzhse;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zza$zza$zza, reason: collision with other inner class name */
            public static final class C0159zza extends zzdqw.zza<C0158zza, C0159zza> implements zzdsi {
                private C0159zza() {
                    super(C0158zza.zzhsf);
                }

                /* synthetic */ C0159zza(zzduv zzduvVar) {
                    this();
                }
            }

            static {
                C0158zza c0158zza = new C0158zza();
                zzhsf = c0158zza;
                zzdqw.zza((Class<C0158zza>) C0158zza.class, c0158zza);
            }

            private C0158zza() {
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new C0158zza();
                    case 2:
                        return new C0159zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhsf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\b\u0002\u0004\u0004\u0003", new Object[]{"zzdj", "zzhsb", "zzhsc", "zzhsd", "zzhse"});
                    case 4:
                        return zzhsf;
                    case 5:
                        zzdsp<C0158zza> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (C0158zza.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhsf);
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

        public static final class zzb extends zzdqw.zza<zza, zzb> implements zzdsi {
            private zzb() {
                super(zza.zzhsa);
            }

            /* synthetic */ zzb(zzduv zzduvVar) {
                this();
            }
        }

        public enum zzc implements zzdra {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);

            private static final zzdqz<zzc> zzeg = new zzdux();
            private final int value;

            zzc(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzduw.zzep;
            }

            public static zzc zzhg(int i2) {
                if (i2 == 0) {
                    return SAFE;
                }
                if (i2 == 1) {
                    return DANGEROUS;
                }
                if (i2 == 2) {
                    return UNKNOWN;
                }
                if (i2 == 3) {
                    return POTENTIALLY_UNWANTED;
                }
                if (i2 != 4) {
                    return null;
                }
                return DANGEROUS_HOST;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdra
            public final int zzab() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzhsa = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
            zzdpm zzdpmVar = zzdpm.zzhgb;
            this.zzhrv = zzdpmVar;
            this.zzhrw = zzdpmVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzduv zzduvVar = null;
            switch (zzduv.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(zzduvVar);
                case 3:
                    return zzdqw.zza(zzhsa, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0001\u0001Ԍ\u0000\u0002\t\u0001\u0003\n\u0002\u0004\n\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzdj", "zzhrt", zzc.zzac(), "zzhru", "zzhrv", "zzhrw", "zzhrx", "zzhry"});
                case 4:
                    return zzhsa;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzhsa);
                                zzdv = zzcVar;
                            }
                            break;
                        }
                    }
                    return zzcVar;
                case 6:
                    return Byte.valueOf(this.zzhrz);
                case 7:
                    this.zzhrz = (byte) (obj != null ? 1 : 0);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zzb extends zzdqw<zzb, zza> implements zzdsi {
        private static volatile zzdsp<zzb> zzdv;
        private static final zzb zzhtb;
        private int zzbus;
        private int zzdj;
        private int zzhsm;
        private C0160zzb zzhsp;
        private zzf zzhss;
        private boolean zzhst;
        private boolean zzhsw;
        private boolean zzhsx;
        private zzi zzhsy;
        private byte zzhrz = 2;
        private String zzhsc = "";
        private String zzhsn = "";
        private String zzhso = "";
        private zzdrd<zzh> zzhsq = zzdqw.zzazw();
        private String zzhsr = "";
        private zzdrd<String> zzhsu = zzdqw.zzazw();
        private String zzhsv = "";
        private zzdpm zzhrv = zzdpm.zzhgb;
        private zzdrd<String> zzhsz = zzdqw.zzazw();
        private zzdrd<String> zzhta = zzdqw.zzazw();

        public static final class zza extends zzdqw.zza<zzb, zza> implements zzdsi {
            private zza() {
                super(zzb.zzhtb);
            }

            /* synthetic */ zza(zzduv zzduvVar) {
                this();
            }
        }

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zzb, reason: collision with other inner class name */
        public static final class C0160zzb extends zzdqw<C0160zzb, zza> implements zzdsi {
            private static volatile zzdsp<C0160zzb> zzdv;
            private static final C0160zzb zzhtd;
            private int zzdj;
            private String zzhtc = "";

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zzb$zza */
            public static final class zza extends zzdqw.zza<C0160zzb, zza> implements zzdsi {
                private zza() {
                    super(C0160zzb.zzhtd);
                }

                /* synthetic */ zza(zzduv zzduvVar) {
                    this();
                }

                public final zza zzhn(String str) {
                    zzazn();
                    ((C0160zzb) this.zzhkp).zzho(str);
                    return this;
                }
            }

            static {
                C0160zzb c0160zzb = new C0160zzb();
                zzhtd = c0160zzb;
                zzdqw.zza((Class<C0160zzb>) C0160zzb.class, c0160zzb);
            }

            private C0160zzb() {
            }

            public static zza zzbcn() {
                return zzhtd.zzazt();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzho(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 1;
                this.zzhtc = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new C0160zzb();
                    case 2:
                        return new zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhtd, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\b\u0000", new Object[]{"zzdj", "zzhtc"});
                    case 4:
                        return zzhtd;
                    case 5:
                        zzdsp<C0160zzb> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (C0160zzb.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhtd);
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

        public static final class zzc extends zzdqw<zzc, zza> implements zzdsi {
            private static volatile zzdsp<zzc> zzdv;
            private static final zzc zzhtf;
            private int zzdj;
            private zzdpm zzgxk;
            private byte zzhrz = 2;
            private zzdpm zzhte;

            public static final class zza extends zzdqw.zza<zzc, zza> implements zzdsi {
                private zza() {
                    super(zzc.zzhtf);
                }

                /* synthetic */ zza(zzduv zzduvVar) {
                    this();
                }

                public final zza zzdd(zzdpm zzdpmVar) {
                    zzazn();
                    ((zzc) this.zzhkp).zzdf(zzdpmVar);
                    return this;
                }

                public final zza zzde(zzdpm zzdpmVar) {
                    zzazn();
                    ((zzc) this.zzhkp).zzbn(zzdpmVar);
                    return this;
                }
            }

            static {
                zzc zzcVar = new zzc();
                zzhtf = zzcVar;
                zzdqw.zza((Class<zzc>) zzc.class, zzcVar);
            }

            private zzc() {
                zzdpm zzdpmVar = zzdpm.zzhgb;
                this.zzhte = zzdpmVar;
                this.zzgxk = zzdpmVar;
            }

            public static zza zzbcp() {
                return zzhtf.zzazt();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbn(zzdpm zzdpmVar) {
                if (zzdpmVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 2;
                this.zzgxk = zzdpmVar;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzdf(zzdpm zzdpmVar) {
                if (zzdpmVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 1;
                this.zzhte = zzdpmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhtf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001Ԋ\u0000\u0002\n\u0001", new Object[]{"zzdj", "zzhte", "zzgxk"});
                    case 4:
                        return zzhtf;
                    case 5:
                        zzdsp<zzc> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzc.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhtf);
                                    zzdv = zzcVar;
                                }
                                break;
                            }
                        }
                        return zzcVar;
                    case 6:
                        return Byte.valueOf(this.zzhrz);
                    case 7:
                        this.zzhrz = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        public static final class zzd extends zzdqw<zzd, zza> implements zzdsi {
            private static volatile zzdsp<zzd> zzdv;
            private static final zzd zzhtl;
            private int zzdj;
            private C0161zzb zzhtg;
            private zzdpm zzhti;
            private zzdpm zzhtj;
            private int zzhtk;
            private byte zzhrz = 2;
            private zzdrd<zzc> zzhth = zzdqw.zzazw();

            public static final class zza extends zzdqw.zza<zzd, zza> implements zzdsi {
                private zza() {
                    super(zzd.zzhtl);
                }

                /* synthetic */ zza(zzduv zzduvVar) {
                    this();
                }
            }

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zzd$zzb, reason: collision with other inner class name */
            public static final class C0161zzb extends zzdqw<C0161zzb, zza> implements zzdsi {
                private static volatile zzdsp<C0161zzb> zzdv;
                private static final C0161zzb zzhtp;
                private int zzdj;
                private zzdpm zzhtm;
                private zzdpm zzhtn;
                private zzdpm zzhto;

                /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zzd$zzb$zza */
                public static final class zza extends zzdqw.zza<C0161zzb, zza> implements zzdsi {
                    private zza() {
                        super(C0161zzb.zzhtp);
                    }

                    /* synthetic */ zza(zzduv zzduvVar) {
                        this();
                    }
                }

                static {
                    C0161zzb c0161zzb = new C0161zzb();
                    zzhtp = c0161zzb;
                    zzdqw.zza((Class<C0161zzb>) C0161zzb.class, c0161zzb);
                }

                private C0161zzb() {
                    zzdpm zzdpmVar = zzdpm.zzhgb;
                    this.zzhtm = zzdpmVar;
                    this.zzhtn = zzdpmVar;
                    this.zzhto = zzdpmVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdqw
                protected final Object zza(int i2, Object obj, Object obj2) {
                    zzduv zzduvVar = null;
                    switch (zzduv.zzdi[i2 - 1]) {
                        case 1:
                            return new C0161zzb();
                        case 2:
                            return new zza(zzduvVar);
                        case 3:
                            return zzdqw.zza(zzhtp, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdj", "zzhtm", "zzhtn", "zzhto"});
                        case 4:
                            return zzhtp;
                        case 5:
                            zzdsp<C0161zzb> zzcVar = zzdv;
                            if (zzcVar == null) {
                                synchronized (C0161zzb.class) {
                                    zzcVar = zzdv;
                                    if (zzcVar == null) {
                                        zzcVar = new zzdqw.zzc<>(zzhtp);
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
                zzd zzdVar = new zzd();
                zzhtl = zzdVar;
                zzdqw.zza((Class<zzd>) zzd.class, zzdVar);
            }

            private zzd() {
                zzdpm zzdpmVar = zzdpm.zzhgb;
                this.zzhti = zzdpmVar;
                this.zzhtj = zzdpmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhtl, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\t\u0000\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003", new Object[]{"zzdj", "zzhtg", "zzhth", zzc.class, "zzhti", "zzhtj", "zzhtk"});
                    case 4:
                        return zzhtl;
                    case 5:
                        zzdsp<zzd> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzd.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhtl);
                                    zzdv = zzcVar;
                                }
                                break;
                            }
                        }
                        return zzcVar;
                    case 6:
                        return Byte.valueOf(this.zzhrz);
                    case 7:
                        this.zzhrz = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        public static final class zze extends zzdqw<zze, zza> implements zzdsi {
            private static volatile zzdsp<zze> zzdv;
            private static final zze zzhts;
            private int zzdj;
            private byte zzhrz = 2;
            private zzdrd<zzc> zzhth = zzdqw.zzazw();
            private zzdpm zzhti;
            private zzdpm zzhtj;
            private int zzhtk;
            private C0162zzb zzhtq;
            private zzdpm zzhtr;

            public static final class zza extends zzdqw.zza<zze, zza> implements zzdsi {
                private zza() {
                    super(zze.zzhts);
                }

                /* synthetic */ zza(zzduv zzduvVar) {
                    this();
                }
            }

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zze$zzb, reason: collision with other inner class name */
            public static final class C0162zzb extends zzdqw<C0162zzb, zza> implements zzdsi {
                private static volatile zzdsp<C0162zzb> zzdv;
                private static final C0162zzb zzhtv;
                private int zzdj;
                private zzdpm zzhto;
                private int zzhtt;
                private zzdpm zzhtu;

                /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zze$zzb$zza */
                public static final class zza extends zzdqw.zza<C0162zzb, zza> implements zzdsi {
                    private zza() {
                        super(C0162zzb.zzhtv);
                    }

                    /* synthetic */ zza(zzduv zzduvVar) {
                        this();
                    }
                }

                static {
                    C0162zzb c0162zzb = new C0162zzb();
                    zzhtv = c0162zzb;
                    zzdqw.zza((Class<C0162zzb>) C0162zzb.class, c0162zzb);
                }

                private C0162zzb() {
                    zzdpm zzdpmVar = zzdpm.zzhgb;
                    this.zzhtu = zzdpmVar;
                    this.zzhto = zzdpmVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdqw
                protected final Object zza(int i2, Object obj, Object obj2) {
                    zzduv zzduvVar = null;
                    switch (zzduv.zzdi[i2 - 1]) {
                        case 1:
                            return new C0162zzb();
                        case 2:
                            return new zza(zzduvVar);
                        case 3:
                            return zzdqw.zza(zzhtv, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdj", "zzhtt", "zzhtu", "zzhto"});
                        case 4:
                            return zzhtv;
                        case 5:
                            zzdsp<C0162zzb> zzcVar = zzdv;
                            if (zzcVar == null) {
                                synchronized (C0162zzb.class) {
                                    zzcVar = zzdv;
                                    if (zzcVar == null) {
                                        zzcVar = new zzdqw.zzc<>(zzhtv);
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
                zze zzeVar = new zze();
                zzhts = zzeVar;
                zzdqw.zza((Class<zze>) zze.class, zzeVar);
            }

            private zze() {
                zzdpm zzdpmVar = zzdpm.zzhgb;
                this.zzhti = zzdpmVar;
                this.zzhtj = zzdpmVar;
                this.zzhtr = zzdpmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhts, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\t\u0000\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003\u0006\n\u0004", new Object[]{"zzdj", "zzhtq", "zzhth", zzc.class, "zzhti", "zzhtj", "zzhtk", "zzhtr"});
                    case 4:
                        return zzhts;
                    case 5:
                        zzdsp<zze> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zze.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhts);
                                    zzdv = zzcVar;
                                }
                                break;
                            }
                        }
                        return zzcVar;
                    case 6:
                        return Byte.valueOf(this.zzhrz);
                    case 7:
                        this.zzhrz = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        public static final class zzf extends zzdqw<zzf, zza> implements zzdsi {
            private static volatile zzdsp<zzf> zzdv;
            private static final zzf zzhty;
            private int zzbus;
            private int zzdj;
            private String zzhtw = "";
            private zzdpm zzhtx = zzdpm.zzhgb;

            public static final class zza extends zzdqw.zza<zzf, zza> implements zzdsi {
                private zza() {
                    super(zzf.zzhty);
                }

                /* synthetic */ zza(zzduv zzduvVar) {
                    this();
                }
            }

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zzf$zzb, reason: collision with other inner class name */
            public enum EnumC0163zzb implements zzdra {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);

                private static final zzdqz<EnumC0163zzb> zzeg = new zzduy();
                private final int value;

                EnumC0163zzb(int i2) {
                    this.value = i2;
                }

                public static zzdrc zzac() {
                    return zzduz.zzep;
                }

                public static EnumC0163zzb zzhh(int i2) {
                    if (i2 == 0) {
                        return TYPE_UNKNOWN;
                    }
                    if (i2 != 1) {
                        return null;
                    }
                    return TYPE_CREATIVE;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "<" + EnumC0163zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzdra
                public final int zzab() {
                    return this.value;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzhty = zzfVar;
                zzdqw.zza((Class<zzf>) zzf.class, zzfVar);
            }

            private zzf() {
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhty, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\b\u0001\u0003\n\u0002", new Object[]{"zzdj", "zzbus", EnumC0163zzb.zzac(), "zzhtw", "zzhtx"});
                    case 4:
                        return zzhty;
                    case 5:
                        zzdsp<zzf> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzf.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhty);
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

        public enum zzg implements zzdra {
            UNKNOWN(0),
            URL_PHISHING(1),
            URL_MALWARE(2),
            URL_UNWANTED(3),
            CLIENT_SIDE_PHISHING_URL(4),
            CLIENT_SIDE_MALWARE_URL(5),
            DANGEROUS_DOWNLOAD_RECOVERY(6),
            DANGEROUS_DOWNLOAD_WARNING(7),
            OCTAGON_AD(8),
            OCTAGON_AD_SB_MATCH(9);

            private static final zzdqz<zzg> zzeg = new zzdvb();
            private final int value;

            zzg(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzdva.zzep;
            }

            public static zzg zzhi(int i2) {
                switch (i2) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return URL_PHISHING;
                    case 2:
                        return URL_MALWARE;
                    case 3:
                        return URL_UNWANTED;
                    case 4:
                        return CLIENT_SIDE_PHISHING_URL;
                    case 5:
                        return CLIENT_SIDE_MALWARE_URL;
                    case 6:
                        return DANGEROUS_DOWNLOAD_RECOVERY;
                    case 7:
                        return DANGEROUS_DOWNLOAD_WARNING;
                    case 8:
                        return OCTAGON_AD;
                    case 9:
                        return OCTAGON_AD_SB_MATCH;
                    default:
                        return null;
                }
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzg.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdra
            public final int zzab() {
                return this.value;
            }
        }

        public static final class zzh extends zzdqw<zzh, C0164zzb> implements zzdsi {
            private static volatile zzdsp<zzh> zzdv;
            private static final zzh zzhva;
            private int zzdj;
            private int zzhus;
            private zzd zzhut;
            private zze zzhuu;
            private int zzhuv;
            private int zzhuy;
            private byte zzhrz = 2;
            private String zzhsc = "";
            private zzdrb zzhuw = zzdqw.zzazv();
            private String zzhux = "";
            private zzdrd<String> zzhuz = zzdqw.zzazw();

            public enum zza implements zzdra {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);

                private static final zzdqz<zza> zzeg = new zzdvd();
                private final int value;

                zza(int i2) {
                    this.value = i2;
                }

                public static zzdrc zzac() {
                    return zzdvc.zzep;
                }

                public static zza zzhj(int i2) {
                    if (i2 == 0) {
                        return AD_RESOURCE_UNKNOWN;
                    }
                    if (i2 == 1) {
                        return AD_RESOURCE_CREATIVE;
                    }
                    if (i2 == 2) {
                        return AD_RESOURCE_POST_CLICK;
                    }
                    if (i2 != 3) {
                        return null;
                    }
                    return AD_RESOURCE_AUTO_CLICK_DESTINATION;
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

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzdut$zzb$zzh$zzb, reason: collision with other inner class name */
            public static final class C0164zzb extends zzdqw.zza<zzh, C0164zzb> implements zzdsi {
                private C0164zzb() {
                    super(zzh.zzhva);
                }

                /* synthetic */ C0164zzb(zzduv zzduvVar) {
                    this();
                }
            }

            static {
                zzh zzhVar = new zzh();
                zzhva = zzhVar;
                zzdqw.zza((Class<zzh>) zzh.class, zzhVar);
            }

            private zzh() {
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new zzh();
                    case 2:
                        return new C0164zzb(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhva, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001Ԅ\u0000\u0002\b\u0001\u0003Љ\u0002\u0004Љ\u0003\u0005\u0004\u0004\u0006\u0016\u0007\b\u0005\b\f\u0006\t\u001a", new Object[]{"zzdj", "zzhus", "zzhsc", "zzhut", "zzhuu", "zzhuv", "zzhuw", "zzhux", "zzhuy", zza.zzac(), "zzhuz"});
                    case 4:
                        return zzhva;
                    case 5:
                        zzdsp<zzh> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzh.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhva);
                                    zzdv = zzcVar;
                                }
                                break;
                            }
                        }
                        return zzcVar;
                    case 6:
                        return Byte.valueOf(this.zzhrz);
                    case 7:
                        this.zzhrz = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        public static final class zzi extends zzdqw<zzi, zza> implements zzdsi {
            private static volatile zzdsp<zzi> zzdv;
            private static final zzi zzhve;
            private int zzdj;
            private String zzhvb = "";
            private long zzhvc;
            private boolean zzhvd;

            public static final class zza extends zzdqw.zza<zzi, zza> implements zzdsi {
                private zza() {
                    super(zzi.zzhve);
                }

                /* synthetic */ zza(zzduv zzduvVar) {
                    this();
                }

                public final zza zzbm(boolean z) {
                    zzazn();
                    ((zzi) this.zzhkp).zzbl(z);
                    return this;
                }

                public final zza zzfo(long j2) {
                    zzazn();
                    ((zzi) this.zzhkp).zzfn(j2);
                    return this;
                }

                public final zza zzhq(String str) {
                    zzazn();
                    ((zzi) this.zzhkp).zzhp(str);
                    return this;
                }
            }

            static {
                zzi zziVar = new zzi();
                zzhve = zziVar;
                zzdqw.zza((Class<zzi>) zzi.class, zziVar);
            }

            private zzi() {
            }

            public static zza zzbcx() {
                return zzhve.zzazt();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbl(boolean z) {
                this.zzdj |= 4;
                this.zzhvd = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzfn(long j2) {
                this.zzdj |= 2;
                this.zzhvc = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzhp(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 1;
                this.zzhvb = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzduv zzduvVar = null;
                switch (zzduv.zzdi[i2 - 1]) {
                    case 1:
                        return new zzi();
                    case 2:
                        return new zza(zzduvVar);
                    case 3:
                        return zzdqw.zza(zzhve, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\u0007\u0002", new Object[]{"zzdj", "zzhvb", "zzhvc", "zzhvd"});
                    case 4:
                        return zzhve;
                    case 5:
                        zzdsp<zzi> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzi.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzhve);
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
            zzb zzbVar = new zzb();
            zzhtb = zzbVar;
            zzdqw.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzduv zzduvVar = null;
            switch (zzduv.zzdi[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzduvVar);
                case 3:
                    return zzdqw.zza(zzhtb, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001\b\u0002\u0002\b\u0003\u0003\b\u0004\u0004Л\u0005\u0007\b\u0006\u001a\u0007\b\t\b\u0007\n\t\u0007\u000b\n\f\u0000\u000b\f\u0001\f\t\u0005\r\b\u0006\u000e\t\u0007\u000f\n\f\u0011\t\r\u0014\u001a\u0015\u001a", new Object[]{"zzdj", "zzhsc", "zzhsn", "zzhso", "zzhsq", zzh.class, "zzhst", "zzhsu", "zzhsv", "zzhsw", "zzhsx", "zzbus", zzg.zzac(), "zzhsm", zza.zzc.zzac(), "zzhsp", "zzhsr", "zzhss", "zzhrv", "zzhsy", "zzhsz", "zzhta"});
                case 4:
                    return zzhtb;
                case 5:
                    zzdsp<zzb> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzb.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzhtb);
                                zzdv = zzcVar;
                            }
                            break;
                        }
                    }
                    return zzcVar;
                case 6:
                    return Byte.valueOf(this.zzhrz);
                case 7:
                    this.zzhrz = (byte) (obj != null ? 1 : 0);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
