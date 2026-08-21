package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzbi {

    public static final class zza extends zzdqw<zza, C0152zza> implements zzdsi {
        private static final zza zzdu;
        private static volatile zzdsp<zza> zzdv;
        private int zzdj;
        private long zzdl;
        private long zzdp;
        private long zzdq;
        private long zzds;
        private String zzdk = "";
        private String zzdm = "";
        private String zzdn = "";
        private String zzdo = "";
        private String zzdr = "";
        private String zzdt = "";

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzbi$zza$zza, reason: collision with other inner class name */
        public static final class C0152zza extends zzdqw.zza<zza, C0152zza> implements zzdsi {
            private C0152zza() {
                super(zza.zzdu);
            }

            /* synthetic */ C0152zza(zzbh zzbhVar) {
                this();
            }

            public final C0152zza zzc(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzd(j2);
                return this;
            }

            public final C0152zza zzi(String str) {
                zzazn();
                ((zza) this.zzhkp).zzm(str);
                return this;
            }

            public final C0152zza zzj(String str) {
                zzazn();
                ((zza) this.zzhkp).zzn(str);
                return this;
            }

            public final C0152zza zzk(String str) {
                zzazn();
                ((zza) this.zzhkp).zzo(str);
                return this;
            }

            public final C0152zza zzl(String str) {
                zzazn();
                ((zza) this.zzhkp).zzp(str);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzdu = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(long j2) {
            this.zzdj |= 2;
            this.zzdl = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzdk = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4;
            this.zzdm = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8;
            this.zzdn = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 16;
            this.zzdo = str;
        }

        public static C0152zza zzr() {
            return zzdu.zzazt();
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbh zzbhVar = null;
            switch (zzbh.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0152zza(zzbhVar);
                case 3:
                    return zzdqw.zza(zzdu, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\b\u0007\t\u0002\b\n\b\t", new Object[]{"zzdj", "zzdk", "zzdl", "zzdm", "zzdn", "zzdo", "zzdp", "zzdq", "zzdr", "zzds", "zzdt"});
                case 4:
                    return zzdu;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzdu);
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
}
