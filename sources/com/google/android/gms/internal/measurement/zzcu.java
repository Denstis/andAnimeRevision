package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import b.e.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzcu implements zzcb {
    private static final Map<String, zzcu> zza = new a();
    private final SharedPreferences zzb;
    private volatile Map<String, ?> zze;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.zzct
        private final zzcu zza;

        {
            this.zza = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.zza.zza(sharedPreferences, str);
        }
    };
    private final Object zzd = new Object();
    private final List<zzcc> zzf = new ArrayList();

    private zzcu(SharedPreferences sharedPreferences) {
        this.zzb = sharedPreferences;
        this.zzb.registerOnSharedPreferenceChangeListener(this.zzc);
    }

    static zzcu zza(Context context, String str) {
        zzcu zzcuVar;
        SharedPreferences sharedPreferences;
        if (!((!zzby.zza() || str.startsWith("direct_boot:")) ? true : zzby.zza(context))) {
            return null;
        }
        synchronized (zzcu.class) {
            zzcuVar = zza.get(str);
            if (zzcuVar == null) {
                if (str.startsWith("direct_boot:")) {
                    if (zzby.zza()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    sharedPreferences = context.getSharedPreferences(str.substring(12), 0);
                } else {
                    sharedPreferences = context.getSharedPreferences(str, 0);
                }
                zzcuVar = new zzcu(sharedPreferences);
                zza.put(str, zzcuVar);
            }
        }
        return zzcuVar;
    }

    static synchronized void zza() {
        for (zzcu zzcuVar : zza.values()) {
            zzcuVar.zzb.unregisterOnSharedPreferenceChangeListener(zzcuVar.zzc);
        }
        zza.clear();
    }

    @Override // com.google.android.gms.internal.measurement.zzcb
    public final Object zza(String str) {
        Map<String, ?> all = this.zze;
        if (all == null) {
            synchronized (this.zzd) {
                all = this.zze;
                if (all == null) {
                    all = this.zzb.getAll();
                    this.zze = all;
                }
            }
        }
        if (all != null) {
            return all.get(str);
        }
        return null;
    }

    final /* synthetic */ void zza(SharedPreferences sharedPreferences, String str) {
        synchronized (this.zzd) {
            this.zze = null;
            zzcl.zza();
        }
        synchronized (this) {
            Iterator<zzcc> it = this.zzf.iterator();
            while (it.hasNext()) {
                it.next().zza();
            }
        }
    }
}
