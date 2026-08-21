package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbo {

    public static final class zza extends zzfd<zza, C0173zza> implements zzgq {
        private static final zza zzh;
        private static volatile zzgx<zza> zzi;
        private int zzc;
        private String zzd = "";
        private boolean zze;
        private boolean zzf;
        private int zzg;

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzbo$zza$zza, reason: collision with other inner class name */
        public static final class C0173zza extends zzfd.zzb<zza, C0173zza> implements zzgq {
            private C0173zza() {
                super(zza.zzh);
            }

            /* synthetic */ C0173zza(zzbq zzbqVar) {
                this();
            }

            public final C0173zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza(str);
                return this;
            }

            public final String zza() {
                return ((zza) this.zza).zza();
            }

            public final boolean zzb() {
                return ((zza) this.zza).zzb();
            }

            public final boolean zzc() {
                return ((zza) this.zza).zzc();
            }

            public final boolean zzd() {
                return ((zza) this.zza).zzd();
            }

            public final int zze() {
                return ((zza) this.zza).zze();
            }
        }

        static {
            zza zzaVar = new zza();
            zzh = zzaVar;
            zzfd.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zza[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0173zza(zzbqVar);
                case 3:
                    return zzfd.zza(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\b\u0000\u0002\u0007\u0001\u0003\u0007\u0002\u0004\u0004\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zza> zzaVar = zzi;
                    if (zzaVar == null) {
                        synchronized (zza.class) {
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

        public final String zza() {
            return this.zzd;
        }

        public final boolean zzb() {
            return this.zze;
        }

        public final boolean zzc() {
            return this.zzf;
        }

        public final boolean zzd() {
            return (this.zzc & 8) != 0;
        }

        public final int zze() {
            return this.zzg;
        }
    }

    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzl;
        private static volatile zzgx<zzb> zzm;
        private int zzc;
        private long zzd;
        private int zzf;
        private boolean zzk;
        private String zze = "";
        private zzfl<zzc> zzg = zzfd.zzbq();
        private zzfl<zza> zzh = zzfd.zzbq();
        private zzfl<zzbj.zza> zzi = zzfd.zzbq();
        private String zzj = "";

        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzl);
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }

            public final int zza() {
                return ((zzb) this.zza).zzf();
            }

            public final zza zza(int i2) {
                return ((zzb) this.zza).zza(i2);
            }

            public final zza zza(int i2, zza.C0173zza c0173zza) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zza(i2, (zza) c0173zza.zzu());
                return this;
            }

            public final List<zzbj.zza> zzb() {
                return Collections.unmodifiableList(((zzb) this.zza).zzg());
            }

            public final zza zzc() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zzl();
                return this;
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
        public final void zza(int i2, zza zzaVar) {
            zzaVar.getClass();
            if (!this.zzh.zza()) {
                this.zzh = zzfd.zza(this.zzh);
            }
            this.zzh.set(i2, zzaVar);
        }

        public static zza zzi() {
            return zzl.zzbk();
        }

        public static zzb zzj() {
            return zzl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl() {
            this.zzi = zzfd.zzbq();
        }

        public final zza zza(int i2) {
            return this.zzh.get(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zza[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzfd.zza(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0003\u0000\u0001\u0002\u0000\u0002\b\u0001\u0003\u0004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\b\u0003\b\u0007\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzc.class, "zzh", zza.class, "zzi", zzbj.zza.class, "zzj", "zzk"});
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

        public final long zzb() {
            return this.zzd;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final String zzd() {
            return this.zze;
        }

        public final List<zzc> zze() {
            return this.zzg;
        }

        public final int zzf() {
            return this.zzh.size();
        }

        public final List<zzbj.zza> zzg() {
            return this.zzi;
        }

        public final boolean zzh() {
            return this.zzk;
        }
    }

    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzf;
        private static volatile zzgx<zzc> zzg;
        private int zzc;
        private String zzd = "";
        private String zze = "";

        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzf);
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzf = zzcVar;
            zzfd.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zza[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzfd.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzc> zzaVar = zzg;
                    if (zzaVar == null) {
                        synchronized (zzc.class) {
                            zzaVar = zzg;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzf);
                                zzg = zzaVar;
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

        public final String zza() {
            return this.zzd;
        }

        public final String zzb() {
            return this.zze;
        }
    }
}
