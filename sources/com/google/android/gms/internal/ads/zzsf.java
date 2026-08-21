package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzsf {

    public static final class zza extends zzdqw<zza, zzb> implements zzdsi {
        private static final zza zzbsd;
        private static volatile zzdsp<zza> zzdv;

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.zzsf$zza$zza, reason: collision with other inner class name */
        public enum EnumC0165zza implements zzdra {
            UNKNOWN_EVENT_TYPE(0),
            AD_REQUEST(1),
            AD_LOADED(2),
            AD_IMPRESSION(5),
            AD_FIRST_CLICK(6),
            AD_SUBSEQUENT_CLICK(7),
            REQUEST_WILL_START(8),
            REQUEST_DID_END(9),
            REQUEST_WILL_UPDATE_SIGNALS(10),
            REQUEST_DID_UPDATE_SIGNALS(11),
            REQUEST_WILL_BUILD_URL(12),
            REQUEST_DID_BUILD_URL(13),
            REQUEST_WILL_MAKE_NETWORK_REQUEST(14),
            REQUEST_DID_RECEIVE_NETWORK_RESPONSE(15),
            REQUEST_WILL_PROCESS_RESPONSE(16),
            REQUEST_DID_PROCESS_RESPONSE(17),
            REQUEST_WILL_RENDER(18),
            REQUEST_DID_RENDER(19),
            AD_FAILED_TO_LOAD(3),
            AD_FAILED_TO_LOAD_NO_FILL(4),
            AD_FAILED_TO_LOAD_INVALID_REQUEST(100),
            AD_FAILED_TO_LOAD_NETWORK_ERROR(101),
            AD_FAILED_TO_LOAD_TIMEOUT(102),
            AD_FAILED_TO_LOAD_CANCELLED(103),
            AD_FAILED_TO_LOAD_NO_ERROR(104),
            AD_FAILED_TO_LOAD_NOT_FOUND(105),
            REQUEST_WILL_UPDATE_GMS_SIGNALS(1000),
            REQUEST_DID_UPDATE_GMS_SIGNALS(1001),
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(1002),
            REQUEST_FAILED_TO_BUILD_URL(1003),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(1004),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(1005),
            REQUEST_FAILED_TO_UPDATE_SIGNALS(1006),
            REQUEST_FAILED_TO_RENDER(1007),
            REQUEST_IS_PREFETCH(1100),
            REQUEST_SAVED_TO_CACHE(1101),
            REQUEST_LOADED_FROM_CACHE(1102),
            REQUEST_PREFETCH_INTERCEPTED(1103),
            BANNER_SIZE_INVALID(10000),
            BANNER_SIZE_VALID(10001),
            ANDROID_WEBVIEW_CRASH(10002),
            OFFLINE_UPLOAD(10003),
            DELAY_PAGE_LOAD_CANCELLED_AD(10004);

            private static final zzdqz<EnumC0165zza> zzeg = new zzsj();
            private final int value;

            EnumC0165zza(int i2) {
                this.value = i2;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + EnumC0165zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdra
            public final int zzab() {
                return this.value;
            }
        }

        public static final class zzb extends zzdqw.zza<zza, zzb> implements zzdsi {
            private zzb() {
                super(zza.zzbsd);
            }

            /* synthetic */ zzb(zzsh zzshVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzbsd = zzaVar;
            zzdqw.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqw
        protected final Object zza(int i2, Object obj, Object obj2) {
            zzsh zzshVar = null;
            switch (zzsh.zzdi[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(zzshVar);
                case 3:
                    return zzdqw.zza(zzbsd, "\u0001\u0000", (Object[]) null);
                case 4:
                    return zzbsd;
                case 5:
                    zzdsp<zza> zzcVar = zzdv;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
                            zzcVar = zzdv;
                            if (zzcVar == null) {
                                zzcVar = new zzdqw.zzc<>(zzbsd);
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
