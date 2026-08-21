package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzbk {

    public static final class zza extends zzdqw<zza, C0153zza> implements zzdsi {
        private static volatile zzdsp<zza> zzdv;
        private static final zza zzdy;
        private int zzdj;
        private zzb zzdw;
        private zzc zzdx;

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzbk$zza$zza, reason: collision with other inner class name */
        public static final class C0153zza extends zzdqw.zza<zza, C0153zza> implements zzdsi {
            private C0153zza() {
                super(zza.zzdy);
            }

            /* synthetic */ C0153zza(zzbj zzbjVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzdy = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        public static zza zza(byte[] bArr, zzdqj zzdqjVar) {
            return (zza) zzdqw.zza(zzdy, bArr, zzdqjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbj zzbjVar = null;
            switch (zzbj.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0153zza(zzbjVar);
                case 3:
                    return zzdqw.zza(zzdy, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzdw", "zzdx"});
                case 4:
                    return zzdy;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzdy);
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

        public final boolean zzt() {
            return (this.zzdj & 1) != 0;
        }

        public final zzb zzu() {
            zzb zzbVar = this.zzdw;
            return zzbVar == null ? zzb.zzz() : zzbVar;
        }

        public final boolean zzv() {
            return (this.zzdj & 2) != 0;
        }

        public final zzc zzw() {
            zzc zzcVar = this.zzdx;
            return zzcVar == null ? zzc.zzaf() : zzcVar;
        }
    }

    public static final class zzb extends zzdqw<zzb, zza> implements zzdsi {
        private static volatile zzdsp<zzb> zzdv;
        private static final zzb zzea;
        private int zzdj;
        private int zzdz = 2;

        public static final class zza extends zzdqw.zza<zzb, zza> implements zzdsi {
            private zza() {
                super(zzb.zzea);
            }

            /* synthetic */ zza(zzbj zzbjVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzea = zzbVar;
            zzdqw.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        public static zzb zzz() {
            return zzea;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbj zzbjVar = null;
            switch (zzbj.zzdi[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbjVar);
                case 3:
                    return zzdqw.zza(zzea, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b\f\u0000", new Object[]{"zzdj", "zzdz", zzbm.zzac()});
                case 4:
                    return zzea;
                case 5:
                    zzdsp<zzb> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzb.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzea);
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

        public final zzbm zzy() {
            zzbm zzbmVarZze = zzbm.zze(this.zzdz);
            return zzbmVarZze == null ? zzbm.ENUM_SIGNAL_SOURCE_ADSHIELD : zzbmVarZze;
        }
    }

    public static final class zzc extends zzdqw<zzc, zza> implements zzdsi {
        private static volatile zzdsp<zzc> zzdv;
        private static final zzc zzeo;
        private int zzdj;
        private String zzei = "";
        private String zzej = "";
        private String zzek = "";
        private String zzel = "";
        private String zzem = "";
        private String zzen = "";

        public static final class zza extends zzdqw.zza<zzc, zza> implements zzdsi {
            private zza() {
                super(zzc.zzeo);
            }

            /* synthetic */ zza(zzbj zzbjVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzeo = zzcVar;
            zzdqw.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        public static zzc zzaf() {
            return zzeo;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbj zzbjVar = null;
            switch (zzbj.zzdi[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbjVar);
                case 3:
                    return zzdqw.zza(zzeo, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\b\u0005", new Object[]{"zzdj", "zzei", "zzej", "zzek", "zzel", "zzem", "zzen"});
                case 4:
                    return zzeo;
                case 5:
                    zzdsp<zzc> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzc.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzeo);
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

        public final String zzad() {
            return this.zzei;
        }

        public final String zzae() {
            return this.zzen;
        }
    }
}
