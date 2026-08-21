package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzbo {

    public static final class zza extends zzdqw<zza, zzb> implements zzdsi {
        private static volatile zzdsp<zza> zzdv;
        private static final zza zzhk;
        private int zzdj;
        private int zzeq;
        private int zzer;
        private long zzet;
        private long zzeu;
        private long zzev;
        private long zzew;
        private long zzex;
        private long zzey;
        private long zzez;
        private long zzfa;
        private long zzfb;
        private long zzfc;
        private long zzfe;
        private long zzff;
        private long zzfg;
        private long zzfh;
        private long zzfi;
        private long zzfj;
        private long zzfk;
        private long zzfl;
        private long zzfm;
        private long zzfo;
        private long zzfp;
        private long zzfq;
        private long zzfr;
        private zzb zzfu;
        private zze zzgk;
        private zzf zzgm;
        private int zzgx;
        private int zzgy;
        private int zzgz;
        private zzf zzha;
        private long zzhd;
        private boolean zzhg;
        private long zzhi;
        private zze zzhj;
        private String zzes = "";
        private String zzdt = "";
        private String zzfd = "";
        private String zzei = "";
        private String zzfn = "";
        private String zzek = "";
        private long zzfs = -1;
        private long zzft = -1;
        private long zzfv = -1;
        private long zzfw = -1;
        private long zzfx = -1;
        private long zzfy = -1;
        private long zzfz = -1;
        private long zzga = -1;
        private String zzel = "D";
        private String zzem = "D";
        private long zzgb = -1;
        private int zzgc = 1000;
        private int zzgd = 1000;
        private long zzge = -1;
        private long zzgf = -1;
        private long zzgg = -1;
        private long zzgh = -1;
        private long zzgi = -1;
        private int zzgj = 1000;
        private zzdrd<zze> zzgl = zzdqw.zzazw();
        private long zzgn = -1;
        private long zzgo = -1;
        private long zzgp = -1;
        private long zzgq = -1;
        private long zzgr = -1;
        private long zzgs = -1;
        private long zzgt = -1;
        private long zzgu = -1;
        private String zzgv = "D";
        private long zzgw = -1;
        private long zzhb = -1;
        private int zzhc = 1000;
        private String zzhe = "";
        private int zzhf = 2;
        private String zzhh = "";

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzbo$zza$zza, reason: collision with other inner class name */
        public enum EnumC0154zza implements zzdra {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3),
            DEBUGGER_STATE_ENVVAR(4),
            DEBUGGER_STATE_MACHPORT(5),
            DEBUGGER_STATE_ENVVAR_MACHPORT(6);

            private static final zzdqz<EnumC0154zza> zzeg = new zzbr();
            private final int value;

            EnumC0154zza(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzbq.zzep;
            }

            public static EnumC0154zza zzg(int i2) {
                switch (i2) {
                    case 0:
                        return DEBUGGER_STATE_UNSPECIFIED;
                    case 1:
                        return DEBUGGER_STATE_NOT_INSTALLED;
                    case 2:
                        return DEBUGGER_STATE_INSTALLED;
                    case 3:
                        return DEBUGGER_STATE_ACTIVE;
                    case 4:
                        return DEBUGGER_STATE_ENVVAR;
                    case 5:
                        return DEBUGGER_STATE_MACHPORT;
                    case 6:
                        return DEBUGGER_STATE_ENVVAR_MACHPORT;
                    default:
                        return null;
                }
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + EnumC0154zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdra
            public final int zzab() {
                return this.value;
            }
        }

        public static final class zzb extends zzdqw.zza<zza, zzb> implements zzdsi {
            private zzb() {
                super(zza.zzhk);
            }

            /* synthetic */ zzb(zzbp zzbpVar) {
                this();
            }

            public final zzb zzaa(String str) {
                zzazn();
                ((zza) this.zzhkp).zzr(str);
                return this;
            }

            public final zzb zzab(String str) {
                zzazn();
                ((zza) this.zzhkp).zzs(str);
                return this;
            }

            public final zzb zzac(String str) {
                zzazn();
                ((zza) this.zzhkp).zzt(str);
                return this;
            }

            public final zzb zzad(String str) {
                zzazn();
                ((zza) this.zzhkp).zzu(str);
                return this;
            }

            public final zzb zzae(String str) {
                zzazn();
                ((zza) this.zzhkp).zzv(str);
                return this;
            }

            public final zzb zzaf(String str) {
                zzazn();
                ((zza) this.zzhkp).zzw(str);
                return this;
            }

            public final zzb zzag(String str) {
                zzazn();
                ((zza) this.zzhkp).zzx(str);
                return this;
            }

            public final zzb zzah(String str) {
                zzazn();
                ((zza) this.zzhkp).zzy(str);
                return this;
            }

            public final zzb zzal(long j2) {
                zzazn();
                ((zza) this.zzhkp).zze(j2);
                return this;
            }

            public final zzb zzam(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzf(j2);
                return this;
            }

            public final zzb zzan() {
                zzazn();
                ((zza) this.zzhkp).zzai();
                return this;
            }

            public final zzb zzan(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzg(j2);
                return this;
            }

            public final zzb zzao(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzh(j2);
                return this;
            }

            public final zzb zzap(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzi(j2);
                return this;
            }

            public final zzb zzaq(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzj(j2);
                return this;
            }

            public final zzb zzar(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzk(j2);
                return this;
            }

            public final zzb zzas(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzl(j2);
                return this;
            }

            public final zzb zzat(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzm(j2);
                return this;
            }

            public final zzb zzau(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzn(j2);
                return this;
            }

            public final zzb zzav(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzo(j2);
                return this;
            }

            public final zzb zzaw(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzp(j2);
                return this;
            }

            public final zzb zzax(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzq(j2);
                return this;
            }

            public final zzb zzay(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzr(j2);
                return this;
            }

            public final zzb zzaz(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzs(j2);
                return this;
            }

            public final zzb zzb(zzc zzcVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzcVar);
                return this;
            }

            public final zzb zzb(zzf zzfVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzfVar);
                return this;
            }

            public final zzb zzb(zzf zzfVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzfVar);
                return this;
            }

            public final zzb zzb(boolean z) {
                zzazn();
                ((zza) this.zzhkp).zza(z);
                return this;
            }

            public final zzb zzba(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzt(j2);
                return this;
            }

            @Deprecated
            public final zzb zzbb(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzu(j2);
                return this;
            }

            public final zzb zzbc(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzv(j2);
                return this;
            }

            public final zzb zzbd(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzw(j2);
                return this;
            }

            public final zzb zzbe(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzx(j2);
                return this;
            }

            public final zzb zzbf(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzy(j2);
                return this;
            }

            public final zzb zzbg(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzz(j2);
                return this;
            }

            public final zzb zzbh(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzaa(j2);
                return this;
            }

            public final zzb zzbi(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzab(j2);
                return this;
            }

            public final zzb zzbj(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzac(j2);
                return this;
            }

            public final zzb zzbk(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzad(j2);
                return this;
            }

            public final zzb zzbl(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzae(j2);
                return this;
            }

            public final zzb zzbm(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzaf(j2);
                return this;
            }

            public final zzb zzbn(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzag(j2);
                return this;
            }

            public final zzb zzbo(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzah(j2);
                return this;
            }

            public final zzb zzbp(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzai(j2);
                return this;
            }

            public final zzb zzbq(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzaj(j2);
                return this;
            }

            public final zzb zzbr(long j2) {
                zzazn();
                ((zza) this.zzhkp).zzak(j2);
                return this;
            }

            public final zzb zzc(zze zzeVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzeVar);
                return this;
            }

            public final zzb zzd(zze zzeVar) {
                zzazn();
                ((zza) this.zzhkp).zzb(zzeVar);
                return this;
            }

            public final zzb zze(zzbz zzbzVar) {
                zzazn();
                ((zza) this.zzhkp).zza(zzbzVar);
                return this;
            }

            public final zzb zzf(zzbz zzbzVar) {
                zzazn();
                ((zza) this.zzhkp).zzb(zzbzVar);
                return this;
            }

            public final zzb zzg(zzbz zzbzVar) {
                zzazn();
                ((zza) this.zzhkp).zzc(zzbzVar);
                return this;
            }

            public final zzb zzh(zzbz zzbzVar) {
                zzazn();
                ((zza) this.zzhkp).zzd(zzbzVar);
                return this;
            }

            public final zzb zzz(String str) {
                zzazn();
                ((zza) this.zzhkp).zzq(str);
                return this;
            }
        }

        public enum zzc implements zzdra {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6);

            private static final zzdqz<zzc> zzeg = new zzbs();
            private final int value;

            zzc(int i2) {
                this.value = i2;
            }

            public static zzdrc zzac() {
                return zzbt.zzep;
            }

            public static zzc zzh(int i2) {
                switch (i2) {
                    case 0:
                        return DEVICE_IDENTIFIER_NO_ID;
                    case 1:
                        return DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                    case 2:
                        return DEVICE_IDENTIFIER_GLOBAL_ID;
                    case 3:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID;
                    case 4:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                    case 5:
                        return DEVICE_IDENTIFIER_ANDROID_AD_ID;
                    case 6:
                        return DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                    default:
                        return null;
                }
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

        public enum zzd implements zzdra {
            ERROR_ENCODE_SIZE_FAIL(1),
            ERROR_UNKNOWN(3),
            ERROR_NO_SIGNALS(5),
            ERROR_ENCRYPTION(7),
            ERROR_MEMORY(9),
            ERROR_SIMULATOR(11),
            ERROR_SERVICE(13),
            ERROR_THREAD(15),
            PSN_WEB64_FAIL(2),
            PSN_DECRYPT_SIZE_FAIL(4),
            PSN_MD5_CHECK_FAIL(8),
            PSN_MD5_SIZE_FAIL(16),
            PSN_MD5_FAIL(32),
            PSN_DECODE_FAIL(64),
            PSN_SALT_FAIL(128),
            PSN_BITSLICER_FAIL(256),
            PSN_REQUEST_TYPE_FAIL(AdRequest.MAX_CONTENT_URL_LENGTH),
            PSN_INVALID_ERROR_CODE(1024),
            PSN_TIMESTAMP_EXPIRED(2048),
            PSN_ENCODE_SIZE_FAIL(MpegAudioHeader.MAX_FRAME_SIZE_BYTES),
            PSN_BLANK_VALUE(8192),
            PSN_INITIALIZATION_FAIL(16384),
            PSN_GASS_CLIENT_FAIL(32768),
            PSN_SIGNALS_TIMEOUT(C.DEFAULT_BUFFER_SEGMENT_SIZE),
            PSN_TINK_FAIL(131072);

            private static final zzdqz<zzd> zzeg = new zzbu();
            private final int value;

            zzd(int i2) {
                this.value = i2;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzd.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdra
            public final int zzab() {
                return this.value;
            }
        }

        public static final class zze extends zzdqw<zze, C0155zza> implements zzdsi {
            private static volatile zzdsp<zze> zzdv;
            private static final zze zzju;
            private int zzdj;
            private long zzjo;
            private long zzjp;
            private long zzfe = -1;
            private long zzff = -1;
            private long zzjb = -1;
            private long zzjc = -1;
            private long zzjd = -1;
            private long zzje = -1;
            private int zzjf = 1000;
            private long zzjg = -1;
            private long zzjh = -1;
            private long zzji = -1;
            private int zzjj = 1000;
            private long zzjk = -1;
            private long zzjl = -1;
            private long zzjm = -1;
            private long zzjn = -1;
            private long zzjq = -1;
            private long zzjr = -1;
            private long zzjs = -1;
            private long zzjt = -1;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzbo$zza$zze$zza, reason: collision with other inner class name */
            public static final class C0155zza extends zzdqw.zza<zze, C0155zza> implements zzdsi {
                private C0155zza() {
                    super(zze.zzju);
                }

                /* synthetic */ C0155zza(zzbp zzbpVar) {
                    this();
                }

                public final C0155zza zzat() {
                    zzazn();
                    ((zze) this.zzhkp).zzao();
                    return this;
                }

                public final C0155zza zzcl(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzj(j2);
                    return this;
                }

                public final C0155zza zzcm(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzk(j2);
                    return this;
                }

                public final C0155zza zzcn(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbs(j2);
                    return this;
                }

                public final C0155zza zzco(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbt(j2);
                    return this;
                }

                public final C0155zza zzcp(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbu(j2);
                    return this;
                }

                public final C0155zza zzcq(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbv(j2);
                    return this;
                }

                public final C0155zza zzcr(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbw(j2);
                    return this;
                }

                public final C0155zza zzcs(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbx(j2);
                    return this;
                }

                public final C0155zza zzct(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzby(j2);
                    return this;
                }

                public final C0155zza zzcu(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzbz(j2);
                    return this;
                }

                public final C0155zza zzcv(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzca(j2);
                    return this;
                }

                public final C0155zza zzcw(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzcb(j2);
                    return this;
                }

                public final C0155zza zzcx(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzcc(j2);
                    return this;
                }

                public final C0155zza zzcy(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzcd(j2);
                    return this;
                }

                public final C0155zza zzcz(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzce(j2);
                    return this;
                }

                public final C0155zza zzda(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzcf(j2);
                    return this;
                }

                public final C0155zza zzdb(long j2) {
                    zzazn();
                    ((zze) this.zzhkp).zzcg(j2);
                    return this;
                }

                public final C0155zza zzk(zzbz zzbzVar) {
                    zzazn();
                    ((zze) this.zzhkp).zzi(zzbzVar);
                    return this;
                }

                public final C0155zza zzl(zzbz zzbzVar) {
                    zzazn();
                    ((zze) this.zzhkp).zzj(zzbzVar);
                    return this;
                }
            }

            static {
                zze zzeVar = new zze();
                zzju = zzeVar;
                zzdqw.zza((Class<zze>) zze.class, zzeVar);
            }

            private zze() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzao() {
                this.zzdj &= -9;
                this.zzjc = -1L;
            }

            public static C0155zza zzap() {
                return zzju.zzazt();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbs(long j2) {
                this.zzdj |= 4;
                this.zzjb = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbt(long j2) {
                this.zzdj |= 8;
                this.zzjc = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbu(long j2) {
                this.zzdj |= 16;
                this.zzjd = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbv(long j2) {
                this.zzdj |= 32;
                this.zzje = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbw(long j2) {
                this.zzdj |= 128;
                this.zzjg = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbx(long j2) {
                this.zzdj |= 256;
                this.zzjh = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzby(long j2) {
                this.zzdj |= AdRequest.MAX_CONTENT_URL_LENGTH;
                this.zzji = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbz(long j2) {
                this.zzdj |= 2048;
                this.zzjk = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzca(long j2) {
                this.zzdj |= MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
                this.zzjl = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcb(long j2) {
                this.zzdj |= 8192;
                this.zzjm = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcc(long j2) {
                this.zzdj |= 16384;
                this.zzjn = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcd(long j2) {
                this.zzdj |= 32768;
                this.zzjo = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzce(long j2) {
                this.zzdj |= C.DEFAULT_BUFFER_SEGMENT_SIZE;
                this.zzjp = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcf(long j2) {
                this.zzdj |= 131072;
                this.zzjq = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcg(long j2) {
                this.zzdj |= 262144;
                this.zzjr = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzi(zzbz zzbzVar) {
                if (zzbzVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 64;
                this.zzjf = zzbzVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzj(long j2) {
                this.zzdj |= 1;
                this.zzfe = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzj(zzbz zzbzVar) {
                if (zzbzVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 1024;
                this.zzjj = zzbzVar.zzab();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzk(long j2) {
                this.zzdj |= 2;
                this.zzff = j2;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzbp zzbpVar = null;
                switch (zzbp.zzdi[i2 - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C0155zza(zzbpVar);
                    case 3:
                        return zzdqw.zza(zzju, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\f\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\f\n\f\u0002\u000b\r\u0002\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002\u0014", new Object[]{"zzdj", "zzfe", "zzff", "zzjb", "zzjc", "zzjd", "zzje", "zzjf", zzbz.zzac(), "zzjg", "zzjh", "zzji", "zzjj", zzbz.zzac(), "zzjk", "zzjl", "zzjm", "zzjn", "zzjo", "zzjp", "zzjq", "zzjr", "zzjs", "zzjt"});
                    case 4:
                        return zzju;
                    case 5:
                        zzdsp<zze> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zze.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzju);
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

        public static final class zzf extends zzdqw<zzf, C0156zza> implements zzdsi {
            private static volatile zzdsp<zzf> zzdv;
            private static final zzf zzjz;
            private int zzdj;
            private long zzgh = -1;
            private long zzgi = -1;
            private long zzjv = -1;
            private long zzjw = -1;
            private long zzjx = -1;
            private long zzjy = -1;

            /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzbo$zza$zzf$zza, reason: collision with other inner class name */
            public static final class C0156zza extends zzdqw.zza<zzf, C0156zza> implements zzdsi {
                private C0156zza() {
                    super(zzf.zzjz);
                }

                /* synthetic */ C0156zza(zzbp zzbpVar) {
                    this();
                }

                public final C0156zza zzdc(long j2) {
                    zzazn();
                    ((zzf) this.zzhkp).zzch(j2);
                    return this;
                }

                public final C0156zza zzdd(long j2) {
                    zzazn();
                    ((zzf) this.zzhkp).zzci(j2);
                    return this;
                }

                public final C0156zza zzde(long j2) {
                    zzazn();
                    ((zzf) this.zzhkp).zzcj(j2);
                    return this;
                }

                public final C0156zza zzdf(long j2) {
                    zzazn();
                    ((zzf) this.zzhkp).zzck(j2);
                    return this;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzjz = zzfVar;
                zzdqw.zza((Class<zzf>) zzf.class, zzfVar);
            }

            private zzf() {
            }

            public static C0156zza zzar() {
                return zzjz.zzazt();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzch(long j2) {
                this.zzdj |= 4;
                this.zzjv = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzci(long j2) {
                this.zzdj |= 8;
                this.zzjw = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcj(long j2) {
                this.zzdj |= 16;
                this.zzjx = j2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzck(long j2) {
                this.zzdj |= 32;
                this.zzjy = j2;
            }

            @Override // com.google.android.gms.internal.ads.zzdqw
            protected final Object zza(int i2, Object obj, Object obj2) {
                zzbp zzbpVar = null;
                switch (zzbp.zzdi[i2 - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C0156zza(zzbpVar);
                    case 3:
                        return zzdqw.zza(zzjz, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005", new Object[]{"zzdj", "zzgh", "zzgi", "zzjv", "zzjw", "zzjx", "zzjy"});
                    case 4:
                        return zzjz;
                    case 5:
                        zzdsp<zzf> zzcVar = zzdv;
                        if (zzcVar == null) {
                            synchronized (zzf.class) {
                                zzcVar = zzdv;
                                if (zzcVar == null) {
                                    zzcVar = new zzdqw.zzc<>(zzjz);
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
            zzhk = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzc zzcVar) {
            if (zzcVar == null) {
                throw new NullPointerException();
            }
            this.zzer |= 32;
            this.zzhf = zzcVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zze zzeVar) {
            if (zzeVar == null) {
                throw new NullPointerException();
            }
            this.zzgk = zzeVar;
            this.zzeq |= 131072;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf zzfVar) {
            if (zzfVar == null) {
                throw new NullPointerException();
            }
            this.zzgm = zzfVar;
            this.zzeq |= 262144;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf zzfVar) {
            if (zzfVar == null) {
                throw new NullPointerException();
            }
            this.zzha = zzfVar;
            this.zzer |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzeq |= AdRequest.MAX_CONTENT_URL_LENGTH;
            this.zzgc = zzbzVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z) {
            this.zzer |= 64;
            this.zzhg = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaa(long j2) {
            this.zzeq |= 16;
            this.zzfz = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzab(long j2) {
            this.zzeq |= 32;
            this.zzga = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzac(long j2) {
            this.zzeq |= 2048;
            this.zzge = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzad(long j2) {
            this.zzeq |= MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
            this.zzgf = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzae(long j2) {
            this.zzeq |= 8192;
            this.zzgg = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaf(long j2) {
            this.zzeq |= ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
            this.zzgo = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzag(long j2) {
            this.zzeq |= 2097152;
            this.zzgp = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzah(long j2) {
            this.zzeq |= 4194304;
            this.zzgq = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzai() {
            this.zzgl = zzdqw.zzazw();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzai(long j2) {
            this.zzeq |= 33554432;
            this.zzgt = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaj(long j2) {
            this.zzeq |= 67108864;
            this.zzgu = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzak(long j2) {
            this.zzer |= 256;
            this.zzhi = j2;
        }

        public static zzb zzal() {
            return zzhk.zzazt();
        }

        public static zza zzb(byte[] bArr, zzdqj zzdqjVar) {
            return (zza) zzdqw.zza(zzhk, bArr, zzdqjVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zze zzeVar) {
            if (zzeVar == null) {
                throw new NullPointerException();
            }
            if (!this.zzgl.zzaxi()) {
                this.zzgl = zzdqw.zza(this.zzgl);
            }
            this.zzgl.add(zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 1024;
            this.zzgd = zzbzVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzeq |= C.DEFAULT_BUFFER_SEGMENT_SIZE;
            this.zzgj = zzbzVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzer |= 4;
            this.zzhc = zzbzVar.zzab();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(long j2) {
            this.zzdj |= 4;
            this.zzet = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j2) {
            this.zzdj |= 16;
            this.zzev = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(long j2) {
            this.zzdj |= 32;
            this.zzew = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(long j2) {
            this.zzdj |= 1024;
            this.zzfb = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(long j2) {
            this.zzdj |= 2048;
            this.zzfc = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(long j2) {
            this.zzdj |= 8192;
            this.zzfe = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(long j2) {
            this.zzdj |= 16384;
            this.zzff = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(long j2) {
            this.zzdj |= 32768;
            this.zzfg = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(long j2) {
            this.zzdj |= C.DEFAULT_BUFFER_SEGMENT_SIZE;
            this.zzfh = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(long j2) {
            this.zzdj |= 524288;
            this.zzfk = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(long j2) {
            this.zzdj |= ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
            this.zzfl = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(long j2) {
            this.zzdj |= 2097152;
            this.zzfm = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(long j2) {
            this.zzdj |= C.DEFAULT_MUXED_BUFFER_SIZE;
            this.zzfo = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzes = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzr(long j2) {
            this.zzdj |= 33554432;
            this.zzfp = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzr(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzdt = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzs(long j2) {
            this.zzdj |= 67108864;
            this.zzfq = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzs(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4194304;
            this.zzei = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzt(long j2) {
            this.zzdj |= C.ENCODING_PCM_MU_LAW;
            this.zzfr = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzt(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8388608;
            this.zzfn = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzu(long j2) {
            this.zzdj |= 536870912;
            this.zzfs = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzu(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 134217728;
            this.zzek = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzv(long j2) {
            this.zzdj |= 1073741824;
            this.zzft = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzv(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 64;
            this.zzel = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzw(long j2) {
            this.zzeq |= 1;
            this.zzfv = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzw(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 128;
            this.zzem = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzx(long j2) {
            this.zzeq |= 2;
            this.zzfw = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzx(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 134217728;
            this.zzgv = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzy(long j2) {
            this.zzeq |= 4;
            this.zzfx = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzy(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzer |= 16;
            this.zzhe = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzz(long j2) {
            this.zzeq |= 8;
            this.zzfy = j2;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(zzbpVar);
                case 3:
                    return zzdqw.zza(zzhk, "\u0001K\u0000\u0003\u0001ÉK\u0000\u0001\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\u0002\n\f\u0002\u000b\r\b\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002C\u0016\u0002\u0014\u0017\u0002\u0015\u0018\bD\u0019\u0002H\u001a\fE\u001b\b\u0016\u001c\u0007F\u001d\b\u0017\u001e\bG\u001f\u0002\u0018 \u0002\u0019!\u0002\u001a\"\b\u001b#\u0002\u001c$\u0002\u001d%\u0002\u001e&\t\u001f'\u0002 (\u0002!)\u0002\"*\u0002#+\u001b,\u0002$-\u0002%.\b&/\b'0\f)1\f*2\t13\u0002+4\u0002,5\u0002-6\u0002.7\u0002/8\f09\t2:\u00023;\u00024<\u00025=\u00026>\u00029?\u0002:@\u0002<A\f=B\f>C\b;D\f?E\t@F\u0002AG\u00027H\u00028I\fBJ\u0002(É\tI", new Object[]{"zzdj", "zzeq", "zzer", "zzes", "zzdt", "zzet", "zzeu", "zzev", "zzew", "zzex", "zzey", "zzez", "zzfa", "zzfb", "zzfc", "zzfd", "zzfe", "zzff", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzhd", "zzfl", "zzfm", "zzhe", "zzhi", "zzhf", zzc.zzac(), "zzei", "zzhg", "zzfn", "zzhh", "zzfo", "zzfp", "zzfq", "zzek", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzgl", zze.class, "zzfz", "zzga", "zzel", "zzem", "zzgc", zzbz.zzac(), "zzgd", zzbz.zzac(), "zzgk", "zzge", "zzgf", "zzgg", "zzgh", "zzgi", "zzgj", zzbz.zzac(), "zzgm", "zzgn", "zzgo", "zzgp", "zzgq", "zzgt", "zzgu", "zzgw", "zzgx", zzbv.zzac(), "zzgy", zzca.zzac(), "zzgv", "zzgz", EnumC0154zza.zzac(), "zzha", "zzhb", "zzgr", "zzgs", "zzhc", zzbz.zzac(), "zzgb", "zzhj"});
                case 4:
                    return zzhk;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzhk);
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

        public final boolean zzah() {
            return (this.zzdj & 4194304) != 0;
        }

        public final boolean zzaj() {
            return (this.zzer & AdRequest.MAX_CONTENT_URL_LENGTH) != 0;
        }

        public final zze zzak() {
            zze zzeVar = this.zzhj;
            return zzeVar == null ? zze.zzbf() : zzeVar;
        }
    }

    public static final class zzb extends zzdqw<zzb, zza> implements zzdsi {
        private static volatile zzdsp<zzb> zzdv;
        private static final zzb zzkf;
        private int zzdj;
        private long zzka;
        private int zzkb;
        private boolean zzkc;
        private zzdrb zzkd = zzdqw.zzazv();
        private long zzke;

        public static final class zza extends zzdqw.zza<zzb, zza> implements zzdsi {
            private zza() {
                super(zzb.zzkf);
            }

            /* synthetic */ zza(zzbp zzbpVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzkf = zzbVar;
            zzdqw.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbpVar);
                case 3:
                    return zzdqw.zza(zzkf, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0002\u0000\u0002\u0004\u0001\u0003\u0007\u0002\u0004\u0016\u0005\u0003\u0003", new Object[]{"zzdj", "zzka", "zzkb", "zzkc", "zzkd", "zzke"});
                case 4:
                    return zzkf;
                case 5:
                    zzdsp<zzb> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzb.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzkf);
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
        private static final zzc zzki;
        private int zzdj;
        private zzdpm zzkg;
        private zzdpm zzkh;

        public static final class zza extends zzdqw.zza<zzc, zza> implements zzdsi {
            private zza() {
                super(zzc.zzki);
            }

            /* synthetic */ zza(zzbp zzbpVar) {
                this();
            }

            public final zza zzg(zzdpm zzdpmVar) {
                zzazn();
                ((zzc) this.zzhkp).zza(zzdpmVar);
                return this;
            }

            public final zza zzh(zzdpm zzdpmVar) {
                zzazn();
                ((zzc) this.zzhkp).zzb(zzdpmVar);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzki = zzcVar;
            zzdqw.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
            zzdpm zzdpmVar = zzdpm.zzhgb;
            this.zzkg = zzdpmVar;
            this.zzkh = zzdpmVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzkg = zzdpmVar;
        }

        public static zza zzav() {
            return zzki.zzazt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzkh = zzdpmVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbpVar);
                case 3:
                    return zzdqw.zza(zzki, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001", new Object[]{"zzdj", "zzkg", "zzkh"});
                case 4:
                    return zzki;
                case 5:
                    zzdsp<zzc> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzc.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzki);
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
        private static volatile zzdsp<zzd> zzdv;
        private static final zzd zzkn;
        private int zzdj;
        private zzdpm zzkj;
        private zzdpm zzkk;
        private zzdpm zzkl;
        private zzdpm zzkm;

        public static final class zza extends zzdqw.zza<zzd, zza> implements zzdsi {
            private zza() {
                super(zzd.zzkn);
            }

            /* synthetic */ zza(zzbp zzbpVar) {
                this();
            }

            public final zza zzi(zzdpm zzdpmVar) {
                zzazn();
                ((zzd) this.zzhkp).zzc(zzdpmVar);
                return this;
            }

            public final zza zzj(zzdpm zzdpmVar) {
                zzazn();
                ((zzd) this.zzhkp).zzd(zzdpmVar);
                return this;
            }

            public final zza zzk(zzdpm zzdpmVar) {
                zzazn();
                ((zzd) this.zzhkp).zze(zzdpmVar);
                return this;
            }

            public final zza zzl(zzdpm zzdpmVar) {
                zzazn();
                ((zzd) this.zzhkp).zzf(zzdpmVar);
                return this;
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzkn = zzdVar;
            zzdqw.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
            zzdpm zzdpmVar = zzdpm.zzhgb;
            this.zzkj = zzdpmVar;
            this.zzkk = zzdpmVar;
            this.zzkl = zzdpmVar;
            this.zzkm = zzdpmVar;
        }

        public static zza zzbb() {
            return zzkn.zzazt();
        }

        public static zzd zzc(byte[] bArr, zzdqj zzdqjVar) {
            return (zzd) zzdqw.zza(zzkn, bArr, zzdqjVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzkj = zzdpmVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzkk = zzdpmVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4;
            this.zzkl = zzdpmVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8;
            this.zzkm = zzdpmVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(zzbpVar);
                case 3:
                    return zzdqw.zza(zzkn, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001\u0003\n\u0002\u0004\n\u0003", new Object[]{"zzdj", "zzkj", "zzkk", "zzkl", "zzkm"});
                case 4:
                    return zzkn;
                case 5:
                    zzdsp<zzd> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzd.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzkn);
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

        public final zzdpm zzax() {
            return this.zzkj;
        }

        public final zzdpm zzay() {
            return this.zzkk;
        }

        public final zzdpm zzaz() {
            return this.zzkl;
        }

        public final zzdpm zzba() {
            return this.zzkm;
        }
    }

    public static final class zze extends zzdqw<zze, zza> implements zzdsi {
        private static volatile zzdsp<zze> zzdv;
        private static final zze zzlf;
        private int zzdj;
        private long zzka;
        private String zzld = "";
        private zzdpm zzle = zzdpm.zzhgb;

        public static final class zza extends zzdqw.zza<zze, zza> implements zzdsi {
            private zza() {
                super(zze.zzlf);
            }

            /* synthetic */ zza(zzbp zzbpVar) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zzlf = zzeVar;
            zzdqw.zza((Class<zze>) zze.class, zzeVar);
        }

        private zze() {
        }

        public static zze zzbf() {
            return zzlf;
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzbpVar);
                case 3:
                    return zzdqw.zza(zzlf, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u0002\u0000\u0003\b\u0001\u0004\n\u0002", new Object[]{"zzdj", "zzka", "zzld", "zzle"});
                case 4:
                    return zzlf;
                case 5:
                    zzdsp<zze> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zze.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzlf);
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

        public final boolean zzbd() {
            return (this.zzdj & 1) != 0;
        }

        public final long zzbe() {
            return this.zzka;
        }
    }

    public static final class zzf extends zzdqw<zzf, zza> implements zzdsi {
        private static volatile zzdsp<zzf> zzdv;
        private static final zzf zzlg;
        private int zzdj;
        private String zzen = "";

        public static final class zza extends zzdqw.zza<zzf, zza> implements zzdsi {
            private zza() {
                super(zzf.zzlg);
            }

            /* synthetic */ zza(zzbp zzbpVar) {
                this();
            }

            public final zza zzai(String str) {
                zzazn();
                ((zzf) this.zzhkp).zzaj(str);
                return this;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzlg = zzfVar;
            zzdqw.zza((Class<zzf>) zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaj(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzen = str;
        }

        public static zza zzbh() {
            return zzlg.zzazt();
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzbpVar);
                case 3:
                    return zzdqw.zza(zzlg, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\b\u0000", new Object[]{"zzdj", "zzen"});
                case 4:
                    return zzlg;
                case 5:
                    zzdsp<zzf> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzf.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzlg);
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
        private static volatile zzdsp<zzg> zzdv;
        private static final zzg zzli;
        private int zzdj;
        private zzdrd<zzdpm> zzlh = zzdqw.zzazw();
        private zzdpm zzkk = zzdpm.zzhgb;
        private int zzgy = 1;
        private int zzgx = 1;

        public static final class zza extends zzdqw.zza<zzg, zza> implements zzdsi {
            private zza() {
                super(zzg.zzli);
            }

            /* synthetic */ zza(zzbp zzbpVar) {
                this();
            }

            public final zza zza(zzbv zzbvVar) {
                zzazn();
                ((zzg) this.zzhkp).zzb(zzbvVar);
                return this;
            }

            public final zza zzm(zzdpm zzdpmVar) {
                zzazn();
                ((zzg) this.zzhkp).zzo(zzdpmVar);
                return this;
            }

            public final zza zzn(zzdpm zzdpmVar) {
                zzazn();
                ((zzg) this.zzhkp).zzd(zzdpmVar);
                return this;
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzli = zzgVar;
            zzdqw.zza((Class<zzg>) zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzbv zzbvVar) {
            if (zzbvVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4;
            this.zzgx = zzbvVar.zzab();
        }

        public static zza zzbj() {
            return zzli.zzazt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzkk = zzdpmVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(zzdpm zzdpmVar) {
            if (zzdpmVar == null) {
                throw new NullPointerException();
            }
            if (!this.zzlh.zzaxi()) {
                this.zzlh = zzdqw.zza(this.zzlh);
            }
            this.zzlh.add(zzdpmVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzbp zzbpVar = null;
            switch (zzbp.zzdi[i2 - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(zzbpVar);
                case 3:
                    return zzdqw.zza(zzli, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\n\u0000\u0003\f\u0001\u0004\f\u0002", new Object[]{"zzdj", "zzlh", "zzkk", "zzgy", zzca.zzac(), "zzgx", zzbv.zzac()});
                case 4:
                    return zzli;
                case 5:
                    zzdsp<zzg> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zzg.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzli);
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
