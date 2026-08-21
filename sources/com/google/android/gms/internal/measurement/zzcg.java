package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.b;

/* JADX INFO: loaded from: classes.dex */
final class zzcg implements zzcb {
    private static zzcg zza;
    private final Context zzb;
    private final ContentObserver zzc;

    private zzcg() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzcg(Context context) {
        this.zzb = context;
        this.zzc = new zzci(this, null);
        context.getContentResolver().registerContentObserver(zzbw.zza, true, this.zzc);
    }

    static zzcg zza(Context context) {
        zzcg zzcgVar;
        synchronized (zzcg.class) {
            if (zza == null) {
                zza = b.a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzcg(context) : new zzcg();
            }
            zzcgVar = zza;
        }
        return zzcgVar;
    }

    static synchronized void zza() {
        if (zza != null && zza.zzb != null && zza.zzc != null) {
            zza.zzb.getContentResolver().unregisterContentObserver(zza.zzc);
        }
        zza = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzcb
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final String zza(final String str) {
        if (this.zzb == null) {
            return null;
        }
        try {
            return (String) zzce.zza(new zzcd(this, str) { // from class: com.google.android.gms.internal.measurement.zzcf
                private final zzcg zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzcd
                public final Object zza() {
                    return this.zza.zzb(this.zzb);
                }
            });
        } catch (IllegalStateException | SecurityException e2) {
            String strValueOf = String.valueOf(str);
            Log.e("GservicesLoader", strValueOf.length() != 0 ? "Unable to read GServices for: ".concat(strValueOf) : new String("Unable to read GServices for: "), e2);
            return null;
        }
    }

    final /* synthetic */ String zzb(String str) {
        return zzbw.zza(this.zzb.getContentResolver(), str, (String) null);
    }
}
