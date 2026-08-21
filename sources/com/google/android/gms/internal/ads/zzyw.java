package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzyw implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzcfz;
    private final Object lock = new Object();
    private final ConditionVariable zzcfw = new ConditionVariable();
    private volatile boolean zzye = false;

    @VisibleForTesting
    private volatile boolean zzcfx = false;
    private SharedPreferences zzcfy = null;
    private Bundle metaData = new Bundle();
    private JSONObject zzcga = new JSONObject();

    private final void zzpt() {
        if (this.zzcfy == null) {
            return;
        }
        try {
            this.zzcga = new JSONObject((String) zzawq.zza(this.zzcfz, new Callable(this) { // from class: com.google.android.gms.internal.ads.zzyy
                private final zzyw zzcgb;

                {
                    this.zzcgb = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzcgb.zzpu();
                }
            }));
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.ads.zzaao, com.google.android.gms.internal.ads.zzzb] */
    public final void initialize(Context context) {
        if (this.zzye) {
            return;
        }
        synchronized (this.lock) {
            if (this.zzye) {
                return;
            }
            if (!this.zzcfx) {
                this.zzcfx = true;
            }
            this.zzcfz = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                this.metaData = Wrappers.packageManager(this.zzcfz).getApplicationInfo(this.zzcfz.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            }
            try {
                Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                if (remoteContext == null && context != null && (remoteContext = context.getApplicationContext()) == null) {
                    remoteContext = context;
                }
                if (remoteContext == null) {
                    return;
                }
                zzuv.zzol();
                this.zzcfy = remoteContext.getSharedPreferences("google_ads_flags", 0);
                if (this.zzcfy != null) {
                    this.zzcfy.registerOnSharedPreferenceChangeListener(this);
                }
                zzaar.zza(new zzzb(this));
                zzpt();
                this.zzye = true;
            } finally {
                this.zzcfx = false;
                this.zzcfw.open();
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzpt();
        }
    }

    public final <T> T zzd(final zzyp<T> zzypVar) {
        if (!this.zzcfw.block(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS)) {
            synchronized (this.lock) {
                if (!this.zzcfx) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzye || this.zzcfy == null) {
            synchronized (this.lock) {
                if (this.zzye && this.zzcfy != null) {
                }
                return zzypVar.zzpq();
            }
        }
        if (zzypVar.getSource() != 2) {
            return (zzypVar.getSource() == 1 && this.zzcga.has(zzypVar.getKey())) ? zzypVar.zza(this.zzcga) : (T) zzawq.zza(this.zzcfz, new Callable(this, zzypVar) { // from class: com.google.android.gms.internal.ads.zzyz
                private final zzyw zzcgb;
                private final zzyp zzcgc;

                {
                    this.zzcgb = this;
                    this.zzcgc = zzypVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzcgb.zze(this.zzcgc);
                }
            });
        }
        Bundle bundle = this.metaData;
        return bundle == null ? zzypVar.zzpq() : zzypVar.zza(bundle);
    }

    final /* synthetic */ Object zze(zzyp zzypVar) {
        return zzypVar.zza(this.zzcfy);
    }

    final /* synthetic */ String zzpu() {
        return this.zzcfy.getString("flag_configuration", "{}");
    }
}
