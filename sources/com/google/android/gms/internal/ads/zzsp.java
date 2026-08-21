package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzdqw;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzsp {

    public static final class zza extends zzdqw<zza, zzb> implements zzdsi {
        private static final zza zzbui;
        private static volatile zzdsp<zza> zzdv;
        private zzdrd<C0166zza> zzbuh = zzdqw.zzazw();

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsp$zza$zza, reason: collision with other inner class name */
        public static final class C0166zza extends zzdqw<C0166zza, C0167zza> implements zzdsi {
            private static final C0166zza zzbug;
            private static volatile zzdsp<C0166zza> zzdv;
            private int zzbud;
            private zzd zzbue;
            private zze zzbuf;
            private int zzdj;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsp$zza$zza$zza, reason: collision with other inner class name */
            public static final class C0167zza extends zzdqw.zza<C0166zza, C0167zza> implements zzdsi {
                private C0167zza() {
                    super(C0166zza.zzbug);
                }

                /* synthetic */ C0167zza(zzso zzsoVar) {
                    this();
                }
            }

            static {
                C0166zza c0166zza = new C0166zza();
                zzbug = c0166zza;
                zzdqw.zza((Class<C0166zza>) C0166zza.class, c0166zza);
            }

            private C0166zza() {
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzso zzsoVar = null;
                switch (zzso.zzdi[i2 - 1]) {
                    case 1:
                        return new C0166zza();
                    case 2:
                        return new C0167zza(zzsoVar);
                    case 3:
                        return zzdqw.zza(zzbug, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdj", "zzbud", zzc.zzac(), "zzbue", "zzbuf"});
                    case 4:
                        return zzbug;
                    case 5:
                        zzdsp<C0166zza> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (C0166zza.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzbug);
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
                super(zza.zzbui);
            }

            /* synthetic */ zzb(zzso zzsoVar) {
                this();
            }
        }

        public enum zzc implements zzdra {
            UNSPECIFIED(0),
            IN_MEMORY(1);

            private static final zzdqz<zzc> zzeg = new zzsq();
            private final int value;

            zzc(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzsr.zzep;
            }

            public static zzc zzbr(int i2) {
                if (i2 == 0) {
                    return UNSPECIFIED;
                }
                if (i2 != 1) {
                    return null;
                }
                return IN_MEMORY;
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

        public static final class zzd extends zzdqw<zzd, C0168zza> implements zzdsi {
            private static final zzd zzbuo;
            private static volatile zzdsp<zzd> zzdv;
            private boolean zzbum;
            private int zzbun;
            private int zzdj;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsp$zza$zzd$zza, reason: collision with other inner class name */
            public static final class C0168zza extends zzdqw.zza<zzd, C0168zza> implements zzdsi {
                private C0168zza() {
                    super(zzd.zzbuo);
                }

                /* synthetic */ C0168zza(zzso zzsoVar) {
                    this();
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzbuo = zzdVar;
                zzdqw.zza((Class<zzd>) zzd.class, zzdVar);
            }

            private zzd() {
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzso zzsoVar = null;
                switch (zzso.zzdi[i2 - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new C0168zza(zzsoVar);
                    case 3:
                        return zzdqw.zza(zzbuo, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u000b\u0001", new Object[]{"zzdj", "zzbum", "zzbun"});
                    case 4:
                        return zzbuo;
                    case 5:
                        zzdsp<zzd> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzd.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzbuo);
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

        public static final class zze extends zzdqw<zze, C0169zza> implements zzdsi {
            private static final zze zzbur;
            private static volatile zzdsp<zze> zzdv;
            private int zzbun;
            private boolean zzbup;
            private boolean zzbuq;
            private int zzdj;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsp$zza$zze$zza, reason: collision with other inner class name */
            public static final class C0169zza extends zzdqw.zza<zze, C0169zza> implements zzdsi {
                private C0169zza() {
                    super(zze.zzbur);
                }

                /* synthetic */ C0169zza(zzso zzsoVar) {
                    this();
                }
            }

            static {
                zze zzeVar = new zze();
                zzbur = zzeVar;
                zzdqw.zza((Class<zze>) zze.class, zzeVar);
            }

            private zze() {
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzso zzsoVar = null;
                switch (zzso.zzdi[i2 - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C0169zza(zzsoVar);
                    case 3:
                        return zzdqw.zza(zzbur, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0007\u0001\u0003\u000b\u0002", new Object[]{"zzdj", "zzbup", "zzbuq", "zzbun"});
                    case 4:
                        return zzbur;
                    case 5:
                        zzdsp<zze> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zze.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzbur);
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
            zza zzaVar = new zza();
            zzbui = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbui, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzbuh", C0166zza.class});
                case 4:
                    return zzbui;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbui);
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

    public static final class zzb extends zzdqw<zzb, C0170zzb> implements zzdsi {
        private static final zzb zzbuu;
        private static volatile zzdsp<zzb> zzdv;
        private int zzbus;
        private zzm zzbut;
        private int zzdj;

        public enum zza implements zzdra {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);

            private static final zzdqz<zza> zzeg = new zzss();
            private final int value;

            zza(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzst.zzep;
            }

            public static zza zzbs(int i2) {
                switch (i2) {
                    case 0:
                        return AD_FORMAT_TYPE_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return INTERSTITIAL;
                    case 3:
                        return NATIVE_EXPRESS;
                    case 4:
                        return NATIVE_CONTENT;
                    case 5:
                        return NATIVE_APP_INSTALL;
                    case 6:
                        return NATIVE_CUSTOM_TEMPLATE;
                    case 7:
                        return DFP_BANNER;
                    case 8:
                        return DFP_INTERSTITIAL;
                    case 9:
                        return REWARD_BASED_VIDEO_AD;
                    case 10:
                        return BANNER_SEARCH_ADS;
                    default:
                        return null;
                }
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

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsp$zzb$zzb, reason: collision with other inner class name */
        public static final class C0170zzb extends zzdqw.zza<zzb, C0170zzb> implements zzdsi {
            private C0170zzb() {
                super(zzb.zzbuu);
            }

            /* synthetic */ C0170zzb(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzbuu = zzbVar;
            zzdqw.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C0170zzb(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbuu, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzbus", zza.zzac(), "zzbut"});
                case 4:
                    return zzbuu;
                case 5:
                    zzdsp<zzb> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzb.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbuu);
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
        private static final zzc zzbvk;
        private static volatile zzdsp<zzc> zzdv;
        private String zzbvh = "";
        private zzdrd<zzb> zzbvi = zzdqw.zzazw();
        private int zzbvj;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzc, zza> implements zzdsi {
            private zza() {
                super(zzc.zzbvk);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzbvk = zzcVar;
            zzdqw.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbvk, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\b\u0000\u0002\u001b\u0003\f\u0001", new Object[]{"zzdj", "zzbvh", "zzbvi", zzb.class, "zzbvj", zzsv.zzac()});
                case 4:
                    return zzbvk;
                case 5:
                    zzdsp<zzc> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzc.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbvk);
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

    public static final class zzd extends zzdqw<zzd, zza> implements zzdsi {
        private static final zzd zzbvr;
        private static volatile zzdsp<zzd> zzdv;
        private int zzbvl;
        private zzo zzbvm;
        private zzo zzbvn;
        private zzo zzbvo;
        private zzdrd<zzo> zzbvp = zzdqw.zzazw();
        private int zzbvq;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzd, zza> implements zzdsi {
            private zza() {
                super(zzd.zzbvr);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzbvr = zzdVar;
            zzdqw.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbvr, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b\u0006\u0004\u0004", new Object[]{"zzdj", "zzbvl", "zzbvm", "zzbvn", "zzbvo", "zzbvp", zzo.class, "zzbvq"});
                case 4:
                    return zzbvr;
                case 5:
                    zzdsp<zzd> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzd.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbvr);
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

    public static final class zze extends zzdqw<zze, zza> implements zzdsi {
        private static final zze zzbwa;
        private static volatile zzdsp<zze> zzdv;
        private int zzbvx;
        private zzo zzbvz;
        private int zzdj;
        private String zzbvw = "";
        private zzdrb zzbvy = zzdqw.zzazv();

        public static final class zza extends zzdqw.zza<zze, zza> implements zzdsi {
            private zza() {
                super(zze.zzbwa);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zzbwa = zzeVar;
            zzdqw.zza((Class<zze>) zze.class, zzeVar);
        }

        private zze() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbwa, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\b\u0000\u0002\f\u0001\u0003\u0016\u0004\t\u0002", new Object[]{"zzdj", "zzbvw", "zzbvx", zzsv.zzac(), "zzbvy", "zzbvz"});
                case 4:
                    return zzbwa;
                case 5:
                    zzdsp<zze> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zze.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbwa);
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

    public static final class zzf extends zzdqw<zzf, zza> implements zzdsi {
        private static final zzf zzbwc;
        private static volatile zzdsp<zzf> zzdv;
        private zzdrb zzbvy = zzdqw.zzazv();
        private int zzbwb;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzf, zza> implements zzdsi {
            private zza() {
                super(zzf.zzbwc);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzbwc = zzfVar;
            zzdqw.zza((Class<zzf>) zzf.class, zzfVar);
        }

        private zzf() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbwc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u0016", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbvy"});
                case 4:
                    return zzbwc;
                case 5:
                    zzdsp<zzf> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzf.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbwc);
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

    public static final class zzg extends zzdqw<zzg, zza> implements zzdsi {
        private static final zzg zzbwf;
        private static volatile zzdsp<zzg> zzdv;
        private zzo zzbvz;
        private int zzbwb;
        private zze zzbwd;
        private zzdrd<zzn> zzbwe = zzdqw.zzazw();
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzg, zza> implements zzdsi {
            private zza() {
                super(zzg.zzbwf);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzbwf = zzgVar;
            zzdqw.zza((Class<zzg>) zzg.class, zzgVar);
        }

        private zzg() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbwf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\u001b\u0003\f\u0001\u0004\t\u0002", new Object[]{"zzdj", "zzbwd", "zzbwe", zzn.class, "zzbwb", zzsv.zzac(), "zzbvz"});
                case 4:
                    return zzbwf;
                case 5:
                    zzdsp<zzg> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzg.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbwf);
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

    public static final class zzh extends zzdqw<zzh, zzb> implements zzdsi {
        private static final zzh zzbwh;
        private static volatile zzdsp<zzh> zzdv;
        private int zzbus;
        private int zzbwg;
        private int zzdj;

        public enum zza implements zzdra {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);

            private static final zzdqz<zza> zzeg = new zzsy();
            private final int value;

            zza(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzsx.zzep;
            }

            public static zza zzbu(int i2) {
                if (i2 == 0) {
                    return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                }
                if (i2 == 1) {
                    return TWO_G;
                }
                if (i2 == 2) {
                    return THREE_G;
                }
                if (i2 != 4) {
                    return null;
                }
                return LTE;
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

        public static final class zzb extends zzdqw.zza<zzh, zzb> implements zzdsi {
            private zzb() {
                super(zzh.zzbwh);
            }

            /* synthetic */ zzb(zzso zzsoVar) {
                this();
            }

            public final zzb zzb(zza zzaVar) {
                zzazn();
                ((zzh) this.zzhkp).zza(zzaVar);
                return this;
            }

            public final zzb zzb(zzc zzcVar) {
                zzazn();
                ((zzh) this.zzhkp).zza(zzcVar);
                return this;
            }
        }

        public enum zzc implements zzdra {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);

            private static final zzdqz<zzc> zzeg = new zzsz();
            private final int value;

            zzc(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzta.zzep;
            }

            public static zzc zzbv(int i2) {
                if (i2 == 0) {
                    return NETWORKTYPE_UNSPECIFIED;
                }
                if (i2 == 1) {
                    return CELL;
                }
                if (i2 != 2) {
                    return null;
                }
                return WIFI;
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
            zzh zzhVar = new zzh();
            zzbwh = zzhVar;
            zzdqw.zza((Class<zzh>) zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zza zzaVar) {
            if (zzaVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzbwg = zzaVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzc zzcVar) {
            if (zzcVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzbus = zzcVar.zzab();
        }

        public static zzb zzna() {
            return zzbwh.zzazt();
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zzb(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbwh, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001", new Object[]{"zzdj", "zzbus", zzc.zzac(), "zzbwg", zza.zzac()});
                case 4:
                    return zzbwh;
                case 5:
                    zzdsp<zzh> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzh.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbwh);
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

    public static final class zzi extends zzdqw<zzi, zza> implements zzdsi {
        private static final zzi zzbwt;
        private static volatile zzdsp<zzi> zzdv;
        private int zzbwr;
        private zzo zzbws;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzi, zza> implements zzdsi {
            private zza() {
                super(zzi.zzbwt);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzi zziVar = new zzi();
            zzbwt = zziVar;
            zzdqw.zza((Class<zzi>) zzi.class, zziVar);
        }

        private zzi() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbwt, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzbwr", zzsv.zzac(), "zzbws"});
                case 4:
                    return zzbwt;
                case 5:
                    zzdsp<zzi> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzi.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbwt);
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

    public static final class zzj extends zzdqw<zzj, zzb> implements zzdsi {
        private static final zzj zzbwz;
        private static volatile zzdsp<zzj> zzdv;
        private int zzbwu;
        private int zzbwv;
        private long zzbww;
        private long zzbwy;
        private int zzdj;
        private zzdrd<zza> zzbuh = zzdqw.zzazw();
        private String zzdk = "";
        private String zzbwx = "";

        public static final class zza extends zzdqw<zza, C0171zza> implements zzdsi {
            private static final zzdre<Integer, zzb.zza> zzbxf = new zztb();
            private static final zza zzbxn;
            private static volatile zzdsp<zza> zzdv;
            private long zzbxa;
            private int zzbxb;
            private long zzbxc;
            private long zzbxd;
            private zzdrb zzbxe = zzdqw.zzazv();
            private zzh zzbxg;
            private int zzbxh;
            private int zzbxi;
            private int zzbxj;
            private int zzbxk;
            private int zzbxl;
            private int zzbxm;
            private int zzdj;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsp$zzj$zza$zza, reason: collision with other inner class name */
            public static final class C0171zza extends zzdqw.zza<zza, C0171zza> implements zzdsi {
                private C0171zza() {
                    super(zza.zzbxn);
                }

                /* synthetic */ C0171zza(zzso zzsoVar) {
                    this();
                }

                public final C0171zza zzb(zzh zzhVar) {
                    zzazn();
                    ((zza) this.zzhkp).zza(zzhVar);
                    return this;
                }

                public final C0171zza zzb(zzc zzcVar) {
                    zzazn();
                    ((zza) this.zzhkp).zza(zzcVar);
                    return this;
                }

                public final C0171zza zzcb(int i2) {
                    zzazn();
                    ((zza) this.zzhkp).zzby(i2);
                    return this;
                }

                public final C0171zza zzd(Iterable<? extends zzb.zza> iterable) {
                    zzazn();
                    ((zza) this.zzhkp).zzb(iterable);
                    return this;
                }

                public final C0171zza zzeo(long j2) {
                    zzazn();
                    ((zza) this.zzhkp).setTimestamp(j2);
                    return this;
                }

                public final C0171zza zzep(long j2) {
                    zzazn();
                    ((zza) this.zzhkp).zzek(j2);
                    return this;
                }

                public final C0171zza zzeq(long j2) {
                    zzazn();
                    ((zza) this.zzhkp).zzel(j2);
                    return this;
                }

                public final C0171zza zzf(zzsv zzsvVar) {
                    zzazn();
                    ((zza) this.zzhkp).zza(zzsvVar);
                    return this;
                }

                public final C0171zza zzg(zzsv zzsvVar) {
                    zzazn();
                    ((zza) this.zzhkp).zzb(zzsvVar);
                    return this;
                }

                public final C0171zza zzh(zzsv zzsvVar) {
                    zzazn();
                    ((zza) this.zzhkp).zzc(zzsvVar);
                    return this;
                }

                public final C0171zza zzi(zzsv zzsvVar) {
                    zzazn();
                    ((zza) this.zzhkp).zzd(zzsvVar);
                    return this;
                }

                public final C0171zza zzj(zzsv zzsvVar) {
                    zzazn();
                    ((zza) this.zzhkp).zze(zzsvVar);
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzbxn = zzaVar;
                zzdqw.zza((Class<zza>) zza.class, zzaVar);
            }

            private zza() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void setTimestamp(long j2) {
                this.zzdj |= 1;
                this.zzbxa = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zza(zzh zzhVar) {
                if (zzhVar == null) {
                    throw new NullPointerException();
                }
                this.zzbxg = zzhVar;
                this.zzdj |= 16;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zza(zzc zzcVar) {
                if (zzcVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 1024;
                this.zzbxm = zzcVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zza(zzsv zzsvVar) {
                if (zzsvVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 2;
                this.zzbxb = zzsvVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzb(zzsv zzsvVar) {
                if (zzsvVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 32;
                this.zzbxh = zzsvVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzb(Iterable<? extends zzb.zza> iterable) {
                if (!this.zzbxe.zzaxi()) {
                    this.zzbxe = zzdqw.zza(this.zzbxe);
                }
                Iterator<? extends zzb.zza> it = iterable.iterator();
                while (it.hasNext()) {
                    this.zzbxe.zzgp(it.next().zzab());
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzby(int i2) {
                this.zzdj |= 256;
                this.zzbxk = i2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzc(zzsv zzsvVar) {
                if (zzsvVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 64;
                this.zzbxi = zzsvVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzd(zzsv zzsvVar) {
                if (zzsvVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 128;
                this.zzbxj = zzsvVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zze(zzsv zzsvVar) {
                if (zzsvVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= AdRequest.MAX_CONTENT_URL_LENGTH;
                this.zzbxl = zzsvVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzek(long j2) {
                this.zzdj |= 4;
                this.zzbxc = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzel(long j2) {
                this.zzdj |= 8;
                this.zzbxd = j2;
            }

            public static zza zzg(byte[] bArr) {
                return (zza) zzdqw.zza(zzbxn, bArr);
            }

            public static C0171zza zzng() {
                return zzbxn.zzazt();
            }

            public final long getTimestamp() {
                return this.zzbxa;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzso zzsoVar = null;
                switch (zzso.zzdi[i2 - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C0171zza(zzsoVar);
                    case 3:
                        return zzdqw.zza(zzbxn, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0001\u0000\u0001\u0002\u0000\u0002\f\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u001e\u0006\t\u0004\u0007\f\u0005\b\f\u0006\t\f\u0007\n\u0004\b\u000b\f\t\f\f\n", new Object[]{"zzdj", "zzbxa", "zzbxb", zzsv.zzac(), "zzbxc", "zzbxd", "zzbxe", zzb.zza.zzac(), "zzbxg", "zzbxh", zzsv.zzac(), "zzbxi", zzsv.zzac(), "zzbxj", zzsv.zzac(), "zzbxk", "zzbxl", zzsv.zzac(), "zzbxm", zzc.zzac()});
                    case 4:
                        return zzbxn;
                    case 5:
                        zzdsp<zza> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zza.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzbxn);
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

            public final zzsv zznf() {
                zzsv zzsvVarZzbt = zzsv.zzbt(this.zzbxb);
                return zzsvVarZzbt == null ? zzsv.ENUM_FALSE : zzsvVarZzbt;
            }
        }

        public static final class zzb extends zzdqw.zza<zzj, zzb> implements zzdsi {
            private zzb() {
                super(zzj.zzbwz);
            }

            /* synthetic */ zzb(zzso zzsoVar) {
                this();
            }

            public final zzb zzbv(String str) {
                zzazn();
                ((zzj) this.zzhkp).zzm(str);
                return this;
            }

            public final zzb zzbw(String str) {
                zzazn();
                ((zzj) this.zzhkp).zzbu(str);
                return this;
            }

            public final zzb zzbz(int i2) {
                zzazn();
                ((zzj) this.zzhkp).zzbw(i2);
                return this;
            }

            public final zzb zzc(Iterable<? extends zza> iterable) {
                zzazn();
                ((zzj) this.zzhkp).zza(iterable);
                return this;
            }

            public final zzb zzca(int i2) {
                zzazn();
                ((zzj) this.zzhkp).zzbx(i2);
                return this;
            }

            public final zzb zzem(long j2) {
                zzazn();
                ((zzj) this.zzhkp).zzei(j2);
                return this;
            }

            public final zzb zzen(long j2) {
                zzazn();
                ((zzj) this.zzhkp).zzej(j2);
                return this;
            }
        }

        public enum zzc implements zzdra {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);

            private static final zzdqz<zzc> zzeg = new zztc();
            private final int value;

            zzc(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zztd.zzep;
            }

            public static zzc zzcc(int i2) {
                if (i2 == 0) {
                    return UNSPECIFIED;
                }
                if (i2 == 1) {
                    return CONNECTING;
                }
                if (i2 == 2) {
                    return CONNECTED;
                }
                if (i2 == 3) {
                    return DISCONNECTING;
                }
                if (i2 == 4) {
                    return DISCONNECTED;
                }
                if (i2 != 5) {
                    return null;
                }
                return SUSPENDED;
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
            zzj zzjVar = new zzj();
            zzbwz = zzjVar;
            zzdqw.zza((Class<zzj>) zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zza> iterable) {
            if (!this.zzbuh.zzaxi()) {
                this.zzbuh = zzdqw.zza(this.zzbuh);
            }
            zzdpf.zza(iterable, this.zzbuh);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbu(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 16;
            this.zzbwx = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbw(int i2) {
            this.zzdj |= 1;
            this.zzbwu = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbx(int i2) {
            this.zzdj |= 2;
            this.zzbwv = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzei(long j2) {
            this.zzdj |= 4;
            this.zzbww = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzej(long j2) {
            this.zzdj |= 32;
            this.zzbwy = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8;
            this.zzdk = str;
        }

        public static zzb zznd() {
            return zzbwz.zzazt();
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zzb(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbwz, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002\u0004\u0000\u0003\u0004\u0001\u0004\u0002\u0002\u0005\b\u0003\u0006\b\u0004\u0007\u0002\u0005", new Object[]{"zzdj", "zzbuh", zza.class, "zzbwu", "zzbwv", "zzbww", "zzdk", "zzbwx", "zzbwy"});
                case 4:
                    return zzbwz;
                case 5:
                    zzdsp<zzj> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzj.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbwz);
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

    public static final class zzk extends zzdqw<zzk, zza> implements zzdsi {
        private static final zzk zzbyg;
        private static volatile zzdsp<zzk> zzdv;
        private int zzbxv = 1000;
        private int zzbxw = 1000;
        private int zzbxx;
        private int zzbxy;
        private int zzbxz;
        private int zzbya;
        private int zzbyb;
        private int zzbyc;
        private int zzbyd;
        private int zzbye;
        private zzl zzbyf;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzk, zza> implements zzdsi {
            private zza() {
                super(zzk.zzbyg);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzbyg = zzkVar;
            zzdqw.zza((Class<zzk>) zzk.class, zzkVar);
        }

        private zzk() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbyg, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0004\u0005\u0007\u0004\u0006\b\u0004\u0007\t\u0004\b\n\u0004\t\u000b\t\n", new Object[]{"zzdj", "zzbxv", zzsv.zzac(), "zzbxw", zzsv.zzac(), "zzbxx", "zzbxy", "zzbxz", "zzbya", "zzbyb", "zzbyc", "zzbyd", "zzbye", "zzbyf"});
                case 4:
                    return zzbyg;
                case 5:
                    zzdsp<zzk> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzk.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbyg);
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

    public static final class zzl extends zzdqw<zzl, zza> implements zzdsi {
        private static final zzl zzbyj;
        private static volatile zzdsp<zzl> zzdv;
        private int zzbyh;
        private int zzbyi;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzl, zza> implements zzdsi {
            private zza() {
                super(zzl.zzbyj);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzl zzlVar = new zzl();
            zzbyj = zzlVar;
            zzdqw.zza((Class<zzl>) zzl.class, zzlVar);
        }

        private zzl() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbyj, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001", new Object[]{"zzdj", "zzbyh", "zzbyi"});
                case 4:
                    return zzbyj;
                case 5:
                    zzdsp<zzl> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzl.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbyj);
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

    public static final class zzm extends zzdqw<zzm, zza> implements zzdsi {
        private static final zzm zzbym;
        private static volatile zzdsp<zzm> zzdv;
        private int zzbyk;
        private int zzbyl;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzm, zza> implements zzdsi {
            private zza() {
                super(zzm.zzbym);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzm zzmVar = new zzm();
            zzbym = zzmVar;
            zzdqw.zza((Class<zzm>) zzm.class, zzmVar);
        }

        private zzm() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzm();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbym, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001", new Object[]{"zzdj", "zzbyk", "zzbyl"});
                case 4:
                    return zzbym;
                case 5:
                    zzdsp<zzm> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzm.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbym);
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

    public static final class zzn extends zzdqw<zzn, zza> implements zzdsi {
        private static final zzn zzbyn;
        private static volatile zzdsp<zzn> zzdv;
        private String zzbvw = "";
        private int zzbvx;
        private zzo zzbvz;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzn, zza> implements zzdsi {
            private zza() {
                super(zzn.zzbyn);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzn zznVar = new zzn();
            zzbyn = zznVar;
            zzdqw.zza((Class<zzn>) zzn.class, zznVar);
        }

        private zzn() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzn();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbyn, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\b\u0000\u0002\f\u0001\u0003\t\u0002", new Object[]{"zzdj", "zzbvw", "zzbvx", zzsv.zzac(), "zzbvz"});
                case 4:
                    return zzbyn;
                case 5:
                    zzdsp<zzn> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzn.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbyn);
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

    public static final class zzo extends zzdqw<zzo, zza> implements zzdsi {
        private static final zzo zzbyq;
        private static volatile zzdsp<zzo> zzdv;
        private int zzbyo;
        private int zzbyp;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzo, zza> implements zzdsi {
            private zza() {
                super(zzo.zzbyq);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzo zzoVar = new zzo();
            zzbyq = zzoVar;
            zzdqw.zza((Class<zzo>) zzo.class, zzoVar);
        }

        private zzo() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzo();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbyq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001", new Object[]{"zzdj", "zzbyo", "zzbyp"});
                case 4:
                    return zzbyq;
                case 5:
                    zzdsp<zzo> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzo.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbyq);
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

    public static final class zzp extends zzdqw<zzp, zza> implements zzdsi {
        private static final zzp zzbyt;
        private static volatile zzdsp<zzp> zzdv;
        private int zzbwb = 1000;
        private zzq zzbyr;
        private zzo zzbys;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzp, zza> implements zzdsi {
            private zza() {
                super(zzp.zzbyt);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzp zzpVar = new zzp();
            zzbyt = zzpVar;
            zzdqw.zza((Class<zzp>) zzp.class, zzpVar);
        }

        private zzp() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzp();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbyt, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbyr", "zzbys"});
                case 4:
                    return zzbyt;
                case 5:
                    zzdsp<zzp> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzp.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbyt);
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

    public static final class zzq extends zzdqw<zzq, zzb> implements zzdsi {
        private static final zzq zzbyv;
        private static volatile zzdsp<zzq> zzdv;
        private int zzbyu;
        private int zzdj;

        public enum zza implements zzdra {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);

            private static final zzdqz<zza> zzeg = new zztf();
            private final int value;

            zza(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzte.zzep;
            }

            public static zza zzcd(int i2) {
                if (i2 == 0) {
                    return VIDEO_ERROR_CODE_UNSPECIFIED;
                }
                if (i2 == 1) {
                    return OPENGL_RENDERING_FAILED;
                }
                if (i2 == 2) {
                    return CACHE_LOAD_FAILED;
                }
                if (i2 != 3) {
                    return null;
                }
                return ANDROID_TARGET_API_TOO_LOW;
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

        public static final class zzb extends zzdqw.zza<zzq, zzb> implements zzdsi {
            private zzb() {
                super(zzq.zzbyv);
            }

            /* synthetic */ zzb(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzq zzqVar = new zzq();
            zzbyv = zzqVar;
            zzdqw.zza((Class<zzq>) zzq.class, zzqVar);
        }

        private zzq() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzq();
                case 2:
                    return new zzb(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbyv, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f\u0000", new Object[]{"zzdj", "zzbyu", zza.zzac()});
                case 4:
                    return zzbyv;
                case 5:
                    zzdsp<zzq> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzq.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbyv);
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

    public static final class zzr extends zzdqw<zzr, zza> implements zzdsi {
        private static final zzr zzbze;
        private static volatile zzdsp<zzr> zzdv;
        private int zzbwb = 1000;
        private zzq zzbyr;
        private int zzbzb;
        private int zzbzc;
        private int zzbzd;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzr, zza> implements zzdsi {
            private zza() {
                super(zzr.zzbze);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzr zzrVar = new zzr();
            zzbze = zzrVar;
            zzdqw.zza((Class<zzr>) zzr.class, zzrVar);
        }

        private zzr() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzr();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbze, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbyr", "zzbzb", "zzbzc", "zzbzd"});
                case 4:
                    return zzbze;
                case 5:
                    zzdsp<zzr> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzr.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbze);
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

    public static final class zzs extends zzdqw<zzs, zza> implements zzdsi {
        private static final zzs zzbzf;
        private static volatile zzdsp<zzs> zzdv;
        private int zzbwb = 1000;
        private zzq zzbyr;
        private zzo zzbys;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzs, zza> implements zzdsi {
            private zza() {
                super(zzs.zzbzf);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzs zzsVar = new zzs();
            zzbzf = zzsVar;
            zzdqw.zza((Class<zzs>) zzs.class, zzsVar);
        }

        private zzs() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzs();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbzf, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbyr", "zzbys"});
                case 4:
                    return zzbzf;
                case 5:
                    zzdsp<zzs> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzs.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbzf);
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

    public static final class zzt extends zzdqw<zzt, zza> implements zzdsi {
        private static final zzt zzbzh;
        private static volatile zzdsp<zzt> zzdv;
        private int zzbwb = 1000;
        private zzq zzbyr;
        private int zzbzb;
        private int zzbzc;
        private int zzbzd;
        private long zzbzg;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzt, zza> implements zzdsi {
            private zza() {
                super(zzt.zzbzh);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzt zztVar = new zzt();
            zzbzh = zztVar;
            zzdqw.zza((Class<zzt>) zzt.class, zztVar);
        }

        private zzt() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzt();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbzh, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0003\u0005", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbyr", "zzbzb", "zzbzc", "zzbzd", "zzbzg"});
                case 4:
                    return zzbzh;
                case 5:
                    zzdsp<zzt> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzt.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbzh);
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

    public static final class zzu extends zzdqw<zzu, zza> implements zzdsi {
        private static final zzu zzbzi;
        private static volatile zzdsp<zzu> zzdv;
        private int zzbwb = 1000;
        private zzq zzbyr;
        private zzo zzbys;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzu, zza> implements zzdsi {
            private zza() {
                super(zzu.zzbzi);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzu zzuVar = new zzu();
            zzbzi = zzuVar;
            zzdqw.zza((Class<zzu>) zzu.class, zzuVar);
        }

        private zzu() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzu();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbzi, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbyr", "zzbys"});
                case 4:
                    return zzbzi;
                case 5:
                    zzdsp<zzu> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzu.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbzi);
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

    public static final class zzv extends zzdqw<zzv, zza> implements zzdsi {
        private static final zzv zzbzj;
        private static volatile zzdsp<zzv> zzdv;
        private int zzbwb = 1000;
        private zzq zzbyr;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzv, zza> implements zzdsi {
            private zza() {
                super(zzv.zzbzj);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }
        }

        static {
            zzv zzvVar = new zzv();
            zzbzj = zzvVar;
            zzdqw.zza((Class<zzv>) zzv.class, zzvVar);
        }

        private zzv() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzv();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbzj, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzbwb", zzsv.zzac(), "zzbyr"});
                case 4:
                    return zzbzj;
                case 5:
                    zzdsp<zzv> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzv.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbzj);
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

    public static final class zzw extends zzdqw<zzw, zza> implements zzdsi {
        private static final zzw zzbzm;
        private static volatile zzdsp<zzw> zzdv;
        private boolean zzbzk;
        private int zzbzl;
        private int zzdj;

        public static final class zza extends zzdqw.zza<zzw, zza> implements zzdsi {
            private zza() {
                super(zzw.zzbzm);
            }

            /* synthetic */ zza(zzso zzsoVar) {
                this();
            }

            public final zza zzce(int i2) {
                zzazn();
                ((zzw) this.zzhkp).zzcf(i2);
                return this;
            }

            public final boolean zznu() {
                return ((zzw) this.zzhkp).zznu();
            }

            public final zza zzp(boolean z) {
                zzazn();
                ((zzw) this.zzhkp).zzq(z);
                return this;
            }
        }

        static {
            zzw zzwVar = new zzw();
            zzbzm = zzwVar;
            zzdqw.zza((Class<zzw>) zzw.class, zzwVar);
        }

        private zzw() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcf(int i2) {
            this.zzdj |= 2;
            this.zzbzl = i2;
        }

        public static zza zznv() {
            return zzbzm.zzazt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(boolean z) {
            this.zzdj |= 1;
            this.zzbzk = z;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzso zzsoVar = null;
            switch (zzso.zzdi[i2 - 1]) {
                case 1:
                    return new zzw();
                case 2:
                    return new zza(zzsoVar);
                case 3:
                    return zzdqw.zza(zzbzm, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0004\u0001", new Object[]{"zzdj", "zzbzk", "zzbzl"});
                case 4:
                    return zzbzm;
                case 5:
                    zzdsp<zzw> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzw.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbzm);
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

        public final boolean zznu() {
            return this.zzbzk;
        }
    }
}
