package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbj {

    public static final class zza extends zzfd<zza, C0172zza> implements zzgq {
        private static final zza zzi;
        private static volatile zzgx<zza> zzj;
        private int zzc;
        private int zzd;
        private zzfl<zze> zze = zzfd.zzbq();
        private zzfl<zzb> zzf = zzfd.zzbq();
        private boolean zzg;
        private boolean zzh;

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzbj$zza$zza, reason: collision with other inner class name */
        public static final class C0172zza extends zzfd.zzb<zza, C0172zza> implements zzgq {
            private C0172zza() {
                super(zza.zzi);
            }

            /* synthetic */ C0172zza(zzbk zzbkVar) {
                this();
            }

            public final int zza() {
                return ((zza) this.zza).zzd();
            }

            public final C0172zza zza(int i2, zzb.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza(i2, (zzb) zzaVar.zzu());
                return this;
            }

            public final C0172zza zza(int i2, zze.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza(i2, (zze) zzaVar.zzu());
                return this;
            }

            public final zze zza(int i2) {
                return ((zza) this.zza).zza(i2);
            }

            public final int zzb() {
                return ((zza) this.zza).zzf();
            }

            public final zzb zzb(int i2) {
                return ((zza) this.zza).zzb(i2);
            }
        }

        static {
            zza zzaVar = new zza();
            zzi = zzaVar;
            zzfd.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2, zzb zzbVar) {
            zzbVar.getClass();
            if (!this.zzf.zza()) {
                this.zzf = zzfd.zza(this.zzf);
            }
            this.zzf.set(i2, zzbVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2, zze zzeVar) {
            zzeVar.getClass();
            if (!this.zze.zza()) {
                this.zze = zzfd.zza(this.zze);
            }
            this.zze.set(i2, zzeVar);
        }

        public final zze zza(int i2) {
            return this.zze.get(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbk zzbkVar = null;
            switch (zzbk.zza[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0172zza(zzbkVar);
                case 3:
                    return zzfd.zza(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u0004\u0000\u0002\u001b\u0003\u001b\u0004\u0007\u0001\u0005\u0007\u0002", new Object[]{"zzc", "zzd", "zze", zze.class, "zzf", zzb.class, "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzgx<zza> zzaVar = zzj;
                    if (zzaVar == null) {
                        synchronized (zza.class) {
                            zzaVar = zzj;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzi);
                                zzj = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final zzb zzb(int i2) {
            return this.zzf.get(i2);
        }

        public final List<zze> zzc() {
            return this.zze;
        }

        public final int zzd() {
            return this.zze.size();
        }

        public final List<zzb> zze() {
            return this.zzf;
        }

        public final int zzf() {
            return this.zzf.size();
        }
    }

    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzl;
        private static volatile zzgx<zzb> zzm;
        private int zzc;
        private int zzd;
        private String zze = "";
        private zzfl<zzc> zzf = zzfd.zzbq();
        private boolean zzg;
        private zzd zzh;
        private boolean zzi;
        private boolean zzj;
        private boolean zzk;

        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzl);
            }

            /* synthetic */ zza(zzbk zzbkVar) {
                this();
            }

            public final zza zza(int i2, zzc zzcVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zza(i2, zzcVar);
                return this;
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zza(str);
                return this;
            }

            public final zzc zza(int i2) {
                return ((zzb) this.zza).zza(i2);
            }

            public final String zza() {
                return ((zzb) this.zza).zzc();
            }

            public final int zzb() {
                return ((zzb) this.zza).zze();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzl = zzbVar;
            zzfd.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2, zzc zzcVar) {
            zzcVar.getClass();
            if (!this.zzf.zza()) {
                this.zzf = zzfd.zza(this.zzf);
            }
            this.zzf.set(i2, zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        public static zza zzl() {
            return zzl.zzbk();
        }

        public final zzc zza(int i2) {
            return this.zzf.get(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbk zzbkVar = null;
            switch (zzbk.zza[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbkVar);
                case 3:
                    return zzfd.zza(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\u001b\u0004\u0007\u0002\u0005\t\u0003\u0006\u0007\u0004\u0007\u0007\u0005\b\u0007\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzl;
                case 5:
                    zzgx<zzb> zzaVar = zzm;
                    if (zzaVar == null) {
                        synchronized (zzb.class) {
                            zzaVar = zzm;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzl);
                                zzm = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final String zzc() {
            return this.zze;
        }

        public final List<zzc> zzd() {
            return this.zzf;
        }

        public final int zze() {
            return this.zzf.size();
        }

        public final boolean zzf() {
            return (this.zzc & 8) != 0;
        }

        public final zzd zzg() {
            zzd zzdVar = this.zzh;
            return zzdVar == null ? zzd.zzk() : zzdVar;
        }

        public final boolean zzh() {
            return this.zzi;
        }

        public final boolean zzi() {
            return this.zzj;
        }

        public final boolean zzj() {
            return (this.zzc & 64) != 0;
        }

        public final boolean zzk() {
            return this.zzk;
        }
    }

    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzh;
        private static volatile zzgx<zzc> zzi;
        private int zzc;
        private zzf zzd;
        private zzd zze;
        private boolean zzf;
        private String zzg = "";

        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzh);
            }

            /* synthetic */ zza(zzbk zzbkVar) {
                this();
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(str);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzh = zzcVar;
            zzfd.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 8;
            this.zzg = str;
        }

        public static zzc zzh() {
            return zzh;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbk zzbkVar = null;
            switch (zzbk.zza[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbkVar);
                case 3:
                    return zzfd.zza(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u0007\u0002\u0004\b\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zzc> zzaVar = zzi;
                    if (zzaVar == null) {
                        synchronized (zzc.class) {
                            zzaVar = zzi;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzh);
                                zzi = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final zzf zzb() {
            zzf zzfVar = this.zzd;
            return zzfVar == null ? zzf.zzi() : zzfVar;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final zzd zzd() {
            zzd zzdVar = this.zze;
            return zzdVar == null ? zzd.zzk() : zzdVar;
        }

        public final boolean zze() {
            return (this.zzc & 4) != 0;
        }

        public final boolean zzf() {
            return this.zzf;
        }

        public final String zzg() {
            return this.zzg;
        }
    }

    public static final class zzd extends zzfd<zzd, zzb> implements zzgq {
        private static final zzd zzi;
        private static volatile zzgx<zzd> zzj;
        private int zzc;
        private int zzd;
        private boolean zze;
        private String zzf = "";
        private String zzg = "";
        private String zzh = "";

        public enum zza implements zzfi {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);

            private static final zzfh<zza> zzf = new zzbm();
            private final int zzg;

            zza(int i2) {
                this.zzg = i2;
            }

            public static zza zza(int i2) {
                if (i2 == 0) {
                    return UNKNOWN_COMPARISON_TYPE;
                }
                if (i2 == 1) {
                    return LESS_THAN;
                }
                if (i2 == 2) {
                    return GREATER_THAN;
                }
                if (i2 == 3) {
                    return EQUAL;
                }
                if (i2 != 4) {
                    return null;
                }
                return BETWEEN;
            }

            public static zzfk zzb() {
                return zzbl.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzfi
            public final int zza() {
                return this.zzg;
            }
        }

        public static final class zzb extends zzfd.zzb<zzd, zzb> implements zzgq {
            private zzb() {
                super(zzd.zzi);
            }

            /* synthetic */ zzb(zzbk zzbkVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzi = zzdVar;
            zzfd.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
        }

        public static zzd zzk() {
            return zzi;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbk zzbkVar = null;
            switch (zzbk.zza[i2 - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zzb(zzbkVar);
                case 3:
                    return zzfd.zza(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0000\u0002\u0007\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004", new Object[]{"zzc", "zzd", zza.zzb(), "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzgx<zzd> zzaVar = zzj;
                    if (zzaVar == null) {
                        synchronized (zzd.class) {
                            zzaVar = zzj;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzi);
                                zzj = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final zza zzb() {
            zza zzaVarZza = zza.zza(this.zzd);
            return zzaVarZza == null ? zza.UNKNOWN_COMPARISON_TYPE : zzaVarZza;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final boolean zzd() {
            return this.zze;
        }

        public final boolean zze() {
            return (this.zzc & 4) != 0;
        }

        public final String zzf() {
            return this.zzf;
        }

        public final boolean zzg() {
            return (this.zzc & 8) != 0;
        }

        public final String zzh() {
            return this.zzg;
        }

        public final boolean zzi() {
            return (this.zzc & 16) != 0;
        }

        public final String zzj() {
            return this.zzh;
        }
    }

    public static final class zze extends zzfd<zze, zza> implements zzgq {
        private static final zze zzj;
        private static volatile zzgx<zze> zzk;
        private int zzc;
        private int zzd;
        private String zze = "";
        private zzc zzf;
        private boolean zzg;
        private boolean zzh;
        private boolean zzi;

        public static final class zza extends zzfd.zzb<zze, zza> implements zzgq {
            private zza() {
                super(zze.zzj);
            }

            /* synthetic */ zza(zzbk zzbkVar) {
                this();
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zza(str);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzj = zzeVar;
            zzfd.zza((Class<zze>) zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        public static zza zzi() {
            return zzj.zzbk();
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbk zzbkVar = null;
            switch (zzbk.zza[i2 - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzbkVar);
                case 3:
                    return zzfd.zza(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\t\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzgx<zze> zzaVar = zzk;
                    if (zzaVar == null) {
                        synchronized (zze.class) {
                            zzaVar = zzk;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzj);
                                zzk = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final String zzc() {
            return this.zze;
        }

        public final zzc zzd() {
            zzc zzcVar = this.zzf;
            return zzcVar == null ? zzc.zzh() : zzcVar;
        }

        public final boolean zze() {
            return this.zzg;
        }

        public final boolean zzf() {
            return this.zzh;
        }

        public final boolean zzg() {
            return (this.zzc & 32) != 0;
        }

        public final boolean zzh() {
            return this.zzi;
        }
    }

    public static final class zzf extends zzfd<zzf, zza> implements zzgq {
        private static final zzf zzh;
        private static volatile zzgx<zzf> zzi;
        private int zzc;
        private int zzd;
        private boolean zzf;
        private String zze = "";
        private zzfl<String> zzg = zzfd.zzbq();

        public static final class zza extends zzfd.zzb<zzf, zza> implements zzgq {
            private zza() {
                super(zzf.zzh);
            }

            /* synthetic */ zza(zzbk zzbkVar) {
                this();
            }
        }

        public enum zzb implements zzfi {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);

            private static final zzfh<zzb> zzh = new zzbn();
            private final int zzi;

            zzb(int i2) {
                this.zzi = i2;
            }

            public static zzb zza(int i2) {
                switch (i2) {
                    case 0:
                        return UNKNOWN_MATCH_TYPE;
                    case 1:
                        return REGEXP;
                    case 2:
                        return BEGINS_WITH;
                    case 3:
                        return ENDS_WITH;
                    case 4:
                        return PARTIAL;
                    case 5:
                        return EXACT;
                    case 6:
                        return IN_LIST;
                    default:
                        return null;
                }
            }

            public static zzfk zzb() {
                return zzbp.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzi + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzfi
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzh = zzfVar;
            zzfd.zza((Class<zzf>) zzf.class, zzfVar);
        }

        private zzf() {
        }

        public static zzf zzi() {
            return zzh;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbk zzbkVar = null;
            switch (zzbk.zza[i2 - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzbkVar);
                case 3:
                    return zzfd.zza(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\f\u0000\u0002\b\u0001\u0003\u0007\u0002\u0004\u001a", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zzf> zzaVar = zzi;
                    if (zzaVar == null) {
                        synchronized (zzf.class) {
                            zzaVar = zzi;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzh);
                                zzi = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final zzb zzb() {
            zzb zzbVarZza = zzb.zza(this.zzd);
            return zzbVarZza == null ? zzb.UNKNOWN_MATCH_TYPE : zzbVarZza;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final String zzd() {
            return this.zze;
        }

        public final boolean zze() {
            return (this.zzc & 4) != 0;
        }

        public final boolean zzf() {
            return this.zzf;
        }

        public final List<String> zzg() {
            return this.zzg;
        }

        public final int zzh() {
            return this.zzg.size();
        }
    }
}
