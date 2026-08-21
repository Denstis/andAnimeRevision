package com.google.android.gms.internal.measurement;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbr {

    public static final class zza extends zzfd<zza, C0174zza> implements zzgq {
        private static final zza zzh;
        private static volatile zzgx<zza> zzi;
        private int zzc;
        private int zzd;
        private zzi zze;
        private zzi zzf;
        private boolean zzg;

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzbr$zza$zza, reason: collision with other inner class name */
        public static final class C0174zza extends zzfd.zzb<zza, C0174zza> implements zzgq {
            private C0174zza() {
                super(zza.zzh);
            }

            /* synthetic */ C0174zza(zzbs zzbsVar) {
                this();
            }

            public final C0174zza zza(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza(i2);
                return this;
            }

            public final C0174zza zza(zzi.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza((zzi) zzaVar.zzu());
                return this;
            }

            public final C0174zza zza(zzi zziVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zzb(zziVar);
                return this;
            }

            public final C0174zza zza(boolean z) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza(z);
                return this;
            }

            public final boolean zza() {
                return ((zza) this.zza).zzd();
            }

            public final zzi zzb() {
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
        public final void zza(int i2) {
            this.zzc |= 1;
            this.zzd = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzi zziVar) {
            zziVar.getClass();
            this.zze = zziVar;
            this.zzc |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z) {
            this.zzc |= 8;
            this.zzg = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzi zziVar) {
            zziVar.getClass();
            this.zzf = zziVar;
            this.zzc |= 4;
        }

        public static C0174zza zzh() {
            return zzh.zzbk();
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0174zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final zzi zzc() {
            zzi zziVar = this.zze;
            return zziVar == null ? zzi.zzj() : zziVar;
        }

        public final boolean zzd() {
            return (this.zzc & 4) != 0;
        }

        public final zzi zze() {
            zzi zziVar = this.zzf;
            return zziVar == null ? zzi.zzj() : zziVar;
        }

        public final boolean zzf() {
            return (this.zzc & 8) != 0;
        }

        public final boolean zzg() {
            return this.zzg;
        }
    }

    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzf;
        private static volatile zzgx<zzb> zzg;
        private int zzc;
        private int zzd;
        private long zze;

        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzf);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zza(i2);
                return this;
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zza(j2);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzf = zzbVar;
            zzfd.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2) {
            this.zzc |= 1;
            this.zzd = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            this.zzc |= 2;
            this.zze = j2;
        }

        public static zza zze() {
            return zzf.zzbk();
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzb> zzaVar = zzg;
                    if (zzaVar == null) {
                        synchronized (zzb.class) {
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final long zzd() {
            return this.zze;
        }
    }

    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzi;
        private static volatile zzgx<zzc> zzj;
        private int zzc;
        private zzfl<zze> zzd = zzfd.zzbq();
        private String zze = "";
        private long zzf;
        private long zzg;
        private int zzh;

        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzi);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza(int i2, zze.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(i2, (zze) zzaVar.zzu());
                return this;
            }

            public final zza zza(int i2, zze zzeVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(i2, zzeVar);
                return this;
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(j2);
                return this;
            }

            public final zza zza(zze.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza((zze) zzaVar.zzu());
                return this;
            }

            public final zza zza(zze zzeVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(zzeVar);
                return this;
            }

            public final zza zza(Iterable<? extends zze> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(iterable);
                return this;
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zza(str);
                return this;
            }

            public final zze zza(int i2) {
                return ((zzc) this.zza).zza(i2);
            }

            public final List<zze> zza() {
                return Collections.unmodifiableList(((zzc) this.zza).zza());
            }

            public final int zzb() {
                return ((zzc) this.zza).zzb();
            }

            public final zza zzb(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zzb(i2);
                return this;
            }

            public final zza zzb(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zzb(j2);
                return this;
            }

            public final zza zzc() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzc) this.zza).zzm();
                return this;
            }

            public final String zzd() {
                return ((zzc) this.zza).zzc();
            }

            public final boolean zze() {
                return ((zzc) this.zza).zzd();
            }

            public final long zzf() {
                return ((zzc) this.zza).zze();
            }

            public final long zzg() {
                return ((zzc) this.zza).zzg();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzi = zzcVar;
            zzfd.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2, zze zzeVar) {
            zzeVar.getClass();
            zzl();
            this.zzd.set(i2, zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            this.zzc |= 2;
            this.zzf = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zze zzeVar) {
            zzeVar.getClass();
            zzl();
            this.zzd.add(zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zze> iterable) {
            zzl();
            zzdl.zza(iterable, this.zzd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zze = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(int i2) {
            zzl();
            this.zzd.remove(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(long j2) {
            this.zzc |= 4;
            this.zzg = j2;
        }

        public static zza zzj() {
            return zzi.zzbk();
        }

        private final void zzl() {
            if (this.zzd.zza()) {
                return;
            }
            this.zzd = zzfd.zza(this.zzd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm() {
            this.zzd = zzfd.zzbq();
        }

        public final zze zza(int i2) {
            return this.zzd.get(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\b\u0000\u0003\u0002\u0001\u0004\u0002\u0002\u0005\u0004\u0003", new Object[]{"zzc", "zzd", zze.class, "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzgx<zzc> zzaVar = zzj;
                    if (zzaVar == null) {
                        synchronized (zzc.class) {
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

        public final List<zze> zza() {
            return this.zzd;
        }

        public final int zzb() {
            return this.zzd.size();
        }

        public final String zzc() {
            return this.zze;
        }

        public final boolean zzd() {
            return (this.zzc & 2) != 0;
        }

        public final long zze() {
            return this.zzf;
        }

        public final boolean zzf() {
            return (this.zzc & 4) != 0;
        }

        public final long zzg() {
            return this.zzg;
        }

        public final boolean zzh() {
            return (this.zzc & 8) != 0;
        }

        public final int zzi() {
            return this.zzh;
        }
    }

    public static final class zzd extends zzfd<zzd, zza> implements zzgq {
        private static final zzd zzf;
        private static volatile zzgx<zzd> zzg;
        private int zzc;
        private String zzd = "";
        private long zze;

        public static final class zza extends zzfd.zzb<zzd, zza> implements zzgq {
            private zza() {
                super(zzd.zzf);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzd) this.zza).zza(j2);
                return this;
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzd) this.zza).zza(str);
                return this;
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzf = zzdVar;
            zzfd.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
        }

        public static zza zza() {
            return zzf.zzbk();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            this.zzc |= 2;
            this.zze = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzd> zzaVar = zzg;
                    if (zzaVar == null) {
                        synchronized (zzd.class) {
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
    }

    public static final class zze extends zzfd<zze, zza> implements zzgq {
        private static final zze zzj;
        private static volatile zzgx<zze> zzk;
        private int zzc;
        private long zzf;
        private float zzg;
        private double zzh;
        private String zzd = "";
        private String zze = "";
        private zzfl<zze> zzi = zzfd.zzbq();

        public static final class zza extends zzfd.zzb<zze, zza> implements zzgq {
            private zza() {
                super(zze.zzj);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zzj();
                return this;
            }

            public final zza zza(double d2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zza(d2);
                return this;
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zza(j2);
                return this;
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zza(str);
                return this;
            }

            public final zza zzb() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zzk();
                return this;
            }

            public final zza zzb(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zzb(str);
                return this;
            }

            public final zza zzc() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zze) this.zza).zzl();
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
        public final void zza(double d2) {
            this.zzc |= 16;
            this.zzh = d2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            this.zzc |= 4;
            this.zzf = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        public static zza zzh() {
            return zzj.zzbk();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj() {
            this.zzc &= -3;
            this.zze = zzj.zze;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk() {
            this.zzc &= -5;
            this.zzf = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl() {
            this.zzc &= -17;
            this.zzh = 0.0d;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0001\u0003\u0005\u0000\u0004\u0006\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zze.class});
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

        public final String zza() {
            return this.zzd;
        }

        public final boolean zzb() {
            return (this.zzc & 2) != 0;
        }

        public final String zzc() {
            return this.zze;
        }

        public final boolean zzd() {
            return (this.zzc & 4) != 0;
        }

        public final long zze() {
            return this.zzf;
        }

        public final boolean zzf() {
            return (this.zzc & 16) != 0;
        }

        public final double zzg() {
            return this.zzh;
        }
    }

    public static final class zzf extends zzfd<zzf, zza> implements zzgq {
        private static final zzf zzd;
        private static volatile zzgx<zzf> zze;
        private zzfl<zzg> zzc = zzfd.zzbq();

        public static final class zza extends zzfd.zzb<zzf, zza> implements zzgq {
            private zza() {
                super(zzf.zzd);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza(zzg.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzf) this.zza).zza((zzg) zzaVar.zzu());
                return this;
            }

            public final zzg zza(int i2) {
                return ((zzf) this.zza).zza(0);
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzd = zzfVar;
            zzfd.zza((Class<zzf>) zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzg zzgVar) {
            zzgVar.getClass();
            if (!this.zzc.zza()) {
                this.zzc = zzfd.zza(this.zzc);
            }
            this.zzc.add(zzgVar);
        }

        public static zza zzb() {
            return zzd.zzbk();
        }

        public final zzg zza(int i2) {
            return this.zzc.get(0);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzg.class});
                case 4:
                    return zzd;
                case 5:
                    zzgx<zzf> zzaVar = zze;
                    if (zzaVar == null) {
                        synchronized (zzf.class) {
                            zzaVar = zze;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzd);
                                zze = zzaVar;
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

        public final List<zzg> zza() {
            return this.zzc;
        }
    }

    public static final class zzg extends zzfd<zzg, zza> implements zzgq {
        private static final zzg zzav;
        private static volatile zzgx<zzg> zzaw;
        private int zzaa;
        private boolean zzad;
        private int zzag;
        private int zzah;
        private int zzai;
        private long zzak;
        private long zzal;
        private int zzao;
        private zzh zzaq;
        private long zzas;
        private long zzat;
        private int zzc;
        private int zzd;
        private int zze;
        private long zzh;
        private long zzi;
        private long zzj;
        private long zzk;
        private long zzl;
        private int zzq;
        private long zzu;
        private long zzv;
        private boolean zzx;
        private long zzz;
        private zzfl<zzc> zzf = zzfd.zzbq();
        private zzfl<zzk> zzg = zzfd.zzbq();
        private String zzm = "";
        private String zzn = "";
        private String zzo = "";
        private String zzp = "";
        private String zzr = "";
        private String zzs = "";
        private String zzt = "";
        private String zzw = "";
        private String zzy = "";
        private String zzab = "";
        private String zzac = "";
        private zzfl<zza> zzae = zzfd.zzbq();
        private String zzaf = "";
        private String zzaj = "";
        private String zzam = "";
        private String zzan = "";
        private String zzap = "";
        private zzfj zzar = zzfd.zzbo();
        private String zzau = "";

        public static final class zza extends zzfd.zzb<zzg, zza> implements zzgq {
            private zza() {
                super(zzg.zzav);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzd(1);
                return this;
            }

            public final zza zza(int i2, zzc.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(i2, (zzc) zzaVar.zzu());
                return this;
            }

            public final zza zza(int i2, zzk zzkVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(i2, zzkVar);
                return this;
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(j2);
                return this;
            }

            public final zza zza(zzc.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza((zzc) zzaVar.zzu());
                return this;
            }

            public final zza zza(zzh.zzb zzbVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza((zzh) zzbVar.zzu());
                return this;
            }

            public final zza zza(zzk.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza((zzk) zzaVar.zzu());
                return this;
            }

            public final zza zza(zzk zzkVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(zzkVar);
                return this;
            }

            public final zza zza(Iterable<? extends zzc> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(iterable);
                return this;
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(str);
                return this;
            }

            public final zza zza(boolean z) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zza(z);
                return this;
            }

            public final List<zzc> zza() {
                return Collections.unmodifiableList(((zzg) this.zza).zzc());
            }

            public final int zzb() {
                return ((zzg) this.zza).zzd();
            }

            public final zzc zzb(int i2) {
                return ((zzg) this.zza).zza(i2);
            }

            public final zza zzb(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzb(j2);
                return this;
            }

            public final zza zzb(Iterable<? extends zzk> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzb(iterable);
                return this;
            }

            public final zza zzb(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzb(str);
                return this;
            }

            public final zza zzb(boolean z) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzb(z);
                return this;
            }

            public final zza zzc() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzbv();
                return this;
            }

            public final zza zzc(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zze(i2);
                return this;
            }

            public final zza zzc(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzc(j2);
                return this;
            }

            public final zza zzc(Iterable<? extends zza> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzc(iterable);
                return this;
            }

            public final zza zzc(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzc(str);
                return this;
            }

            public final zza zzd(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzd(j2);
                return this;
            }

            public final zza zzd(Iterable<? extends Integer> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzd(iterable);
                return this;
            }

            public final zza zzd(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzd(str);
                return this;
            }

            public final zzk zzd(int i2) {
                return ((zzg) this.zza).zzb(i2);
            }

            public final List<zzk> zzd() {
                return Collections.unmodifiableList(((zzg) this.zza).zze());
            }

            public final int zze() {
                return ((zzg) this.zza).zzf();
            }

            public final zza zze(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzf(i2);
                return this;
            }

            public final zza zze(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zze(j2);
                return this;
            }

            public final zza zze(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zze(str);
                return this;
            }

            public final long zzf() {
                return ((zzg) this.zza).zzj();
            }

            public final zza zzf(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzg(i2);
                return this;
            }

            public final zza zzf(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzf(j2);
                return this;
            }

            public final zza zzf(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzf(str);
                return this;
            }

            public final long zzg() {
                return ((zzg) this.zza).zzl();
            }

            public final zza zzg(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzh(i2);
                return this;
            }

            public final zza zzg(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzg(j2);
                return this;
            }

            public final zza zzg(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzg(str);
                return this;
            }

            public final zza zzh() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzbx();
                return this;
            }

            public final zza zzh(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzi(i2);
                return this;
            }

            public final zza zzh(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzh(j2);
                return this;
            }

            public final zza zzh(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzh(str);
                return this;
            }

            public final zza zzi() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzby();
                return this;
            }

            public final zza zzi(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzj(i2);
                return this;
            }

            public final zza zzi(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzi(j2);
                return this;
            }

            public final zza zzi(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzi(str);
                return this;
            }

            public final zza zzj(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzj(j2);
                return this;
            }

            public final zza zzj(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzj(str);
                return this;
            }

            public final String zzj() {
                return ((zzg) this.zza).zzx();
            }

            public final zza zzk() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzbz();
                return this;
            }

            public final zza zzk(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzk(j2);
                return this;
            }

            public final zza zzk(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzk(str);
                return this;
            }

            public final zza zzl(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzl(j2);
                return this;
            }

            public final zza zzl(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzl(str);
                return this;
            }

            public final String zzl() {
                return ((zzg) this.zza).zzam();
            }

            public final zza zzm() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzca();
                return this;
            }

            public final zza zzm(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzm(str);
                return this;
            }

            public final zza zzn() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzcb();
                return this;
            }

            public final zza zzn(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzn(null);
                return this;
            }

            public final zza zzo(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzo(str);
                return this;
            }

            public final String zzo() {
                return ((zzg) this.zza).zzbe();
            }

            public final zza zzp(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzg) this.zza).zzp(str);
                return this;
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzav = zzgVar;
            zzfd.zza((Class<zzg>) zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2, zzc zzcVar) {
            zzcVar.getClass();
            zzbu();
            this.zzf.set(i2, zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i2, zzk zzkVar) {
            zzkVar.getClass();
            zzbw();
            this.zzg.set(i2, zzkVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            this.zzc |= 2;
            this.zzh = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzc zzcVar) {
            zzcVar.getClass();
            zzbu();
            this.zzf.add(zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzh zzhVar) {
            zzhVar.getClass();
            this.zzaq = zzhVar;
            this.zzd |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzk zzkVar) {
            zzkVar.getClass();
            zzbw();
            this.zzg.add(zzkVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zzc> iterable) {
            zzbu();
            zzdl.zza(iterable, this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 64;
            this.zzm = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z) {
            this.zzc |= 131072;
            this.zzx = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(long j2) {
            this.zzc |= 4;
            this.zzi = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(Iterable<? extends zzk> iterable) {
            zzbw();
            zzdl.zza(iterable, this.zzg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(String str) {
            str.getClass();
            this.zzc |= 128;
            this.zzn = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(boolean z) {
            this.zzc |= 8388608;
            this.zzad = z;
        }

        public static zza zzbf() {
            return zzav.zzbk();
        }

        private final void zzbu() {
            if (this.zzf.zza()) {
                return;
            }
            this.zzf = zzfd.zza(this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbv() {
            this.zzf = zzfd.zzbq();
        }

        private final void zzbw() {
            if (this.zzg.zza()) {
                return;
            }
            this.zzg = zzfd.zza(this.zzg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbx() {
            this.zzc &= -17;
            this.zzk = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzby() {
            this.zzc &= -33;
            this.zzl = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbz() {
            this.zzc &= -2097153;
            this.zzab = zzav.zzab;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(long j2) {
            this.zzc |= 8;
            this.zzj = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends zza> iterable) {
            if (!this.zzae.zza()) {
                this.zzae = zzfd.zza(this.zzae);
            }
            zzdl.zza(iterable, this.zzae);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(String str) {
            str.getClass();
            this.zzc |= 256;
            this.zzo = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzca() {
            this.zzae = zzfd.zzbq();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcb() {
            this.zzc &= Integer.MAX_VALUE;
            this.zzam = zzav.zzam;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(int i2) {
            this.zzc |= 1;
            this.zze = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(long j2) {
            this.zzc |= 16;
            this.zzk = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(Iterable<? extends Integer> iterable) {
            if (!this.zzar.zza()) {
                zzfj zzfjVar = this.zzar;
                int size = zzfjVar.size();
                this.zzar = zzfjVar.zza(size == 0 ? 10 : size << 1);
            }
            zzdl.zza(iterable, this.zzar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(String str) {
            str.getClass();
            this.zzc |= AdRequest.MAX_CONTENT_URL_LENGTH;
            this.zzp = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(int i2) {
            zzbu();
            this.zzf.remove(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(long j2) {
            this.zzc |= 32;
            this.zzl = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(String str) {
            str.getClass();
            this.zzc |= 2048;
            this.zzr = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(int i2) {
            zzbw();
            this.zzg.remove(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j2) {
            this.zzc |= 16384;
            this.zzu = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(String str) {
            str.getClass();
            this.zzc |= MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
            this.zzs = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(int i2) {
            this.zzc |= 1024;
            this.zzq = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(long j2) {
            this.zzc |= 32768;
            this.zzv = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(String str) {
            str.getClass();
            this.zzc |= 8192;
            this.zzt = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(int i2) {
            this.zzc |= ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
            this.zzaa = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(long j2) {
            this.zzc |= 524288;
            this.zzz = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(String str) {
            str.getClass();
            this.zzc |= C.DEFAULT_BUFFER_SEGMENT_SIZE;
            this.zzw = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(int i2) {
            this.zzc |= 33554432;
            this.zzag = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(long j2) {
            this.zzc |= 536870912;
            this.zzak = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(String str) {
            str.getClass();
            this.zzc |= 262144;
            this.zzy = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(int i2) {
            this.zzd |= 2;
            this.zzao = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(long j2) {
            this.zzc |= 1073741824;
            this.zzal = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(String str) {
            str.getClass();
            this.zzc |= 2097152;
            this.zzab = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(long j2) {
            this.zzd |= 16;
            this.zzas = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(String str) {
            str.getClass();
            this.zzc |= 4194304;
            this.zzac = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(long j2) {
            this.zzd |= 32;
            this.zzat = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(String str) {
            str.getClass();
            this.zzc |= C.DEFAULT_MUXED_BUFFER_SIZE;
            this.zzaf = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(String str) {
            str.getClass();
            this.zzc |= C.ENCODING_PCM_MU_LAW;
            this.zzaj = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(String str) {
            str.getClass();
            this.zzc |= Integer.MIN_VALUE;
            this.zzam = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(String str) {
            str.getClass();
            this.zzd |= 4;
            this.zzap = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(String str) {
            str.getClass();
            this.zzd |= 64;
            this.zzau = str;
        }

        public final zzc zza(int i2) {
            return this.zzf.get(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzav, "\u0001+\u0000\u0002\u00012+\u0000\u0004\u0000\u0001\u0004\u0000\u0002\u001b\u0003\u001b\u0004\u0002\u0001\u0005\u0002\u0002\u0006\u0002\u0003\u0007\u0002\u0005\b\b\u0006\t\b\u0007\n\b\b\u000b\b\t\f\u0004\n\r\b\u000b\u000e\b\f\u0010\b\r\u0011\u0002\u000e\u0012\u0002\u000f\u0013\b\u0010\u0014\u0007\u0011\u0015\b\u0012\u0016\u0002\u0013\u0017\u0004\u0014\u0018\b\u0015\u0019\b\u0016\u001a\u0002\u0004\u001c\u0007\u0017\u001d\u001b\u001e\b\u0018\u001f\u0004\u0019 \u0004\u001a!\u0004\u001b\"\b\u001c#\u0002\u001d$\u0002\u001e%\b\u001f&\b '\u0004!)\b\",\t#-\u001d.\u0002$/\u0002%2\b&", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", zzk.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzk", "zzad", "zzae", zza.class, "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau"});
                case 4:
                    return zzav;
                case 5:
                    zzgx<zzg> zzaVar = zzaw;
                    if (zzaVar == null) {
                        synchronized (zzg.class) {
                            zzaVar = zzaw;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzav);
                                zzaw = zzaVar;
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

        public final long zzaa() {
            return this.zzu;
        }

        public final boolean zzab() {
            return (this.zzc & 32768) != 0;
        }

        public final long zzac() {
            return this.zzv;
        }

        public final String zzad() {
            return this.zzw;
        }

        public final boolean zzae() {
            return (this.zzc & 131072) != 0;
        }

        public final boolean zzaf() {
            return this.zzx;
        }

        public final String zzag() {
            return this.zzy;
        }

        public final boolean zzah() {
            return (this.zzc & 524288) != 0;
        }

        public final long zzai() {
            return this.zzz;
        }

        public final boolean zzaj() {
            return (this.zzc & ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0;
        }

        public final int zzak() {
            return this.zzaa;
        }

        public final String zzal() {
            return this.zzab;
        }

        public final String zzam() {
            return this.zzac;
        }

        public final boolean zzan() {
            return (this.zzc & 8388608) != 0;
        }

        public final boolean zzao() {
            return this.zzad;
        }

        public final List<zza> zzap() {
            return this.zzae;
        }

        public final String zzaq() {
            return this.zzaf;
        }

        public final boolean zzar() {
            return (this.zzc & 33554432) != 0;
        }

        public final int zzas() {
            return this.zzag;
        }

        public final String zzat() {
            return this.zzaj;
        }

        public final boolean zzau() {
            return (this.zzc & 536870912) != 0;
        }

        public final long zzav() {
            return this.zzak;
        }

        public final boolean zzaw() {
            return (this.zzc & 1073741824) != 0;
        }

        public final long zzax() {
            return this.zzal;
        }

        public final String zzay() {
            return this.zzam;
        }

        public final boolean zzaz() {
            return (this.zzd & 2) != 0;
        }

        public final int zzb() {
            return this.zze;
        }

        public final zzk zzb(int i2) {
            return this.zzg.get(i2);
        }

        public final int zzba() {
            return this.zzao;
        }

        public final String zzbb() {
            return this.zzap;
        }

        public final boolean zzbc() {
            return (this.zzd & 16) != 0;
        }

        public final long zzbd() {
            return this.zzas;
        }

        public final String zzbe() {
            return this.zzau;
        }

        public final List<zzc> zzc() {
            return this.zzf;
        }

        public final int zzd() {
            return this.zzf.size();
        }

        public final List<zzk> zze() {
            return this.zzg;
        }

        public final int zzf() {
            return this.zzg.size();
        }

        public final boolean zzg() {
            return (this.zzc & 2) != 0;
        }

        public final long zzh() {
            return this.zzh;
        }

        public final boolean zzi() {
            return (this.zzc & 4) != 0;
        }

        public final long zzj() {
            return this.zzi;
        }

        public final boolean zzk() {
            return (this.zzc & 8) != 0;
        }

        public final long zzl() {
            return this.zzj;
        }

        public final boolean zzm() {
            return (this.zzc & 16) != 0;
        }

        public final long zzn() {
            return this.zzk;
        }

        public final boolean zzo() {
            return (this.zzc & 32) != 0;
        }

        public final long zzp() {
            return this.zzl;
        }

        public final String zzq() {
            return this.zzm;
        }

        public final String zzr() {
            return this.zzn;
        }

        public final String zzs() {
            return this.zzo;
        }

        public final String zzt() {
            return this.zzp;
        }

        public final boolean zzu() {
            return (this.zzc & 1024) != 0;
        }

        public final int zzv() {
            return this.zzq;
        }

        public final String zzw() {
            return this.zzr;
        }

        public final String zzx() {
            return this.zzs;
        }

        public final String zzy() {
            return this.zzt;
        }

        public final boolean zzz() {
            return (this.zzc & 16384) != 0;
        }
    }

    public static final class zzh extends zzfd<zzh, zzb> implements zzgq {
        private static final zzh zzf;
        private static volatile zzgx<zzh> zzg;
        private int zzc;
        private int zzd = 1;
        private zzfl<zzd> zze = zzfd.zzbq();

        public enum zza implements zzfi {
            RADS(1),
            PROVISIONING(2);

            private static final zzfh<zza> zzc = new zzbu();
            private final int zzd;

            zza(int i2) {
                this.zzd = i2;
            }

            public static zza zza(int i2) {
                if (i2 == 1) {
                    return RADS;
                }
                if (i2 != 2) {
                    return null;
                }
                return PROVISIONING;
            }

            public static zzfk zzb() {
                return zzbt.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzfi
            public final int zza() {
                return this.zzd;
            }
        }

        public static final class zzb extends zzfd.zzb<zzh, zzb> implements zzgq {
            private zzb() {
                super(zzh.zzf);
            }

            /* synthetic */ zzb(zzbs zzbsVar) {
                this();
            }

            public final zzb zza(zzd.zza zzaVar) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzh) this.zza).zza((zzd) zzaVar.zzu());
                return this;
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzfd.zza((Class<zzh>) zzh.class, zzhVar);
        }

        private zzh() {
        }

        public static zzb zza() {
            return zzf.zzbk();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzd zzdVar) {
            zzdVar.getClass();
            if (!this.zze.zza()) {
                this.zze = zzfd.zza(this.zze);
            }
            this.zze.add(zzdVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zzb(zzbsVar);
                case 3:
                    return zzfd.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u001b", new Object[]{"zzc", "zzd", zza.zzb(), "zze", zzd.class});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzh> zzaVar = zzg;
                    if (zzaVar == null) {
                        synchronized (zzh.class) {
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
    }

    public static final class zzi extends zzfd<zzi, zza> implements zzgq {
        private static final zzi zzg;
        private static volatile zzgx<zzi> zzh;
        private zzfm zzc = zzfd.zzbp();
        private zzfm zzd = zzfd.zzbp();
        private zzfl<zzb> zze = zzfd.zzbq();
        private zzfl<zzj> zzf = zzfd.zzbq();

        public static final class zza extends zzfd.zzb<zzi, zza> implements zzgq {
            private zza() {
                super(zzi.zzg);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zzl();
                return this;
            }

            public final zza zza(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zzd(i2);
                return this;
            }

            public final zza zza(Iterable<? extends Long> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zza(iterable);
                return this;
            }

            public final zza zzb() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zzm();
                return this;
            }

            public final zza zzb(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zze(i2);
                return this;
            }

            public final zza zzb(Iterable<? extends Long> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zzb(iterable);
                return this;
            }

            public final zza zzc(Iterable<? extends zzb> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zzc(iterable);
                return this;
            }

            public final zza zzd(Iterable<? extends zzj> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzi) this.zza).zzd(iterable);
                return this;
            }
        }

        static {
            zzi zziVar = new zzi();
            zzg = zziVar;
            zzfd.zza((Class<zzi>) zzi.class, zziVar);
        }

        private zzi() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends Long> iterable) {
            if (!this.zzc.zza()) {
                this.zzc = zzfd.zza(this.zzc);
            }
            zzdl.zza(iterable, this.zzc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(Iterable<? extends Long> iterable) {
            if (!this.zzd.zza()) {
                this.zzd = zzfd.zza(this.zzd);
            }
            zzdl.zza(iterable, this.zzd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends zzb> iterable) {
            zzn();
            zzdl.zza(iterable, this.zze);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(int i2) {
            zzn();
            this.zze.remove(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(Iterable<? extends zzj> iterable) {
            zzo();
            zzdl.zza(iterable, this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(int i2) {
            zzo();
            this.zzf.remove(i2);
        }

        public static zza zzi() {
            return zzg.zzbk();
        }

        public static zzi zzj() {
            return zzg;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl() {
            this.zzc = zzfd.zzbp();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm() {
            this.zzd = zzfd.zzbp();
        }

        private final void zzn() {
            if (this.zze.zza()) {
                return;
            }
            this.zze = zzfd.zza(this.zze);
        }

        private final void zzo() {
            if (this.zzf.zza()) {
                return;
            }
            this.zzf = zzfd.zza(this.zzf);
        }

        public final zzb zza(int i2) {
            return this.zze.get(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzg, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzc", "zzd", "zze", zzb.class, "zzf", zzj.class});
                case 4:
                    return zzg;
                case 5:
                    zzgx<zzi> zzaVar = zzh;
                    if (zzaVar == null) {
                        synchronized (zzi.class) {
                            zzaVar = zzh;
                            if (zzaVar == null) {
                                zzaVar = new zzfd.zza<>(zzg);
                                zzh = zzaVar;
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

        public final List<Long> zza() {
            return this.zzc;
        }

        public final int zzb() {
            return this.zzc.size();
        }

        public final zzj zzb(int i2) {
            return this.zzf.get(i2);
        }

        public final List<Long> zzc() {
            return this.zzd;
        }

        public final int zzd() {
            return this.zzd.size();
        }

        public final List<zzb> zze() {
            return this.zze;
        }

        public final int zzf() {
            return this.zze.size();
        }

        public final List<zzj> zzg() {
            return this.zzf;
        }

        public final int zzh() {
            return this.zzf.size();
        }
    }

    public static final class zzj extends zzfd<zzj, zza> implements zzgq {
        private static final zzj zzf;
        private static volatile zzgx<zzj> zzg;
        private int zzc;
        private int zzd;
        private zzfm zze = zzfd.zzbp();

        public static final class zza extends zzfd.zzb<zzj, zza> implements zzgq {
            private zza() {
                super(zzj.zzf);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzj) this.zza).zzh();
                return this;
            }

            public final zza zza(int i2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzj) this.zza).zzb(i2);
                return this;
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzj) this.zza).zza(j2);
                return this;
            }

            public final zza zza(Iterable<? extends Long> iterable) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzj) this.zza).zza(iterable);
                return this;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzf = zzjVar;
            zzfd.zza((Class<zzj>) zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            zzg();
            this.zze.zza(j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends Long> iterable) {
            zzg();
            zzdl.zza(iterable, this.zze);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(int i2) {
            this.zzc |= 1;
            this.zzd = i2;
        }

        public static zza zze() {
            return zzf.zzbk();
        }

        private final void zzg() {
            if (this.zze.zza()) {
                return;
            }
            this.zze = zzfd.zza(this.zze);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh() {
            this.zze = zzfd.zzbp();
        }

        public final long zza(int i2) {
            return this.zze.zzb(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0014", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzj> zzaVar = zzg;
                    if (zzaVar == null) {
                        synchronized (zzj.class) {
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final List<Long> zzc() {
            return this.zze;
        }

        public final int zzd() {
            return this.zze.size();
        }
    }

    public static final class zzk extends zzfd<zzk, zza> implements zzgq {
        private static final zzk zzj;
        private static volatile zzgx<zzk> zzk;
        private int zzc;
        private long zzd;
        private String zze = "";
        private String zzf = "";
        private long zzg;
        private float zzh;
        private double zzi;

        public static final class zza extends zzfd.zzb<zzk, zza> implements zzgq {
            private zza() {
                super(zzk.zzj);
            }

            /* synthetic */ zza(zzbs zzbsVar) {
                this();
            }

            public final zza zza() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zzl();
                return this;
            }

            public final zza zza(double d2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zza(d2);
                return this;
            }

            public final zza zza(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zza(j2);
                return this;
            }

            public final zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zza(str);
                return this;
            }

            public final zza zzb() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zzm();
                return this;
            }

            public final zza zzb(long j2) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zzb(j2);
                return this;
            }

            public final zza zzb(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zzb(str);
                return this;
            }

            public final zza zzc() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzk) this.zza).zzn();
                return this;
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzj = zzkVar;
            zzfd.zza((Class<zzk>) zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(double d2) {
            this.zzc |= 32;
            this.zzi = d2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j2) {
            this.zzc |= 1;
            this.zzd = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(long j2) {
            this.zzc |= 8;
            this.zzg = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(String str) {
            str.getClass();
            this.zzc |= 4;
            this.zzf = str;
        }

        public static zza zzj() {
            return zzj.zzbk();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl() {
            this.zzc &= -5;
            this.zzf = zzj.zzf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm() {
            this.zzc &= -9;
            this.zzg = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn() {
            this.zzc &= -33;
            this.zzi = 0.0d;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zza[i2 - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(zzbsVar);
                case 3:
                    return zzfd.zza(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\b\u0001\u0003\b\u0002\u0004\u0002\u0003\u0005\u0001\u0004\u0006\u0000\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzgx<zzk> zzaVar = zzk;
                    if (zzaVar == null) {
                        synchronized (zzk.class) {
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

        public final long zzb() {
            return this.zzd;
        }

        public final String zzc() {
            return this.zze;
        }

        public final boolean zzd() {
            return (this.zzc & 4) != 0;
        }

        public final String zze() {
            return this.zzf;
        }

        public final boolean zzf() {
            return (this.zzc & 8) != 0;
        }

        public final long zzg() {
            return this.zzg;
        }

        public final boolean zzh() {
            return (this.zzc & 32) != 0;
        }

        public final double zzi() {
            return this.zzi;
        }
    }
}
