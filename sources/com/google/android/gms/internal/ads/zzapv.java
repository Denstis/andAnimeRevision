package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import com.google.android.exoplayer2.C;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzapv extends ContextWrapper {
    private Context zzdnt;
    private WeakReference<Activity> zzdnu;

    private zzapv(Context context) {
        super(context);
        this.zzdnu = new WeakReference<>(null);
    }

    public static Context zzaa(Context context) {
        return context instanceof zzapv ? ((zzapv) context).getBaseContext() : zzl(context);
    }

    private final synchronized Intent zzd(Intent intent) {
        if (this.zzdnt != null && intent.getComponent() != null && intent.getComponent().getPackageName().equals(this.zzdnt.getPackageName())) {
            Intent intent2 = (Intent) intent.clone();
            intent2.setClassName(super.getPackageName(), intent.getComponent().getClassName());
            return intent2;
        }
        return intent;
    }

    private final synchronized void zze(Intent intent) {
        Activity activity = this.zzdnu.get();
        if (activity == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            super.startActivity(intent);
            return;
        }
        try {
            Intent intent2 = (Intent) intent.clone();
            intent2.setFlags(intent.getFlags() & (-268435457));
            activity.startActivity(intent2);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "");
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            super.startActivity(intent);
        }
    }

    private static Context zzl(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public static zzapv zzz(Context context) {
        return new zzapv(zzl(context));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized ApplicationInfo getApplicationInfo() {
        if (this.zzdnt != null) {
            return this.zzdnt.getApplicationInfo();
        }
        return super.getApplicationInfo();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageName() {
        if (this.zzdnt != null) {
            return this.zzdnt.getPackageName();
        }
        return super.getPackageName();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageResourcePath() {
        if (this.zzdnt != null) {
            return this.zzdnt.getPackageResourcePath();
        }
        return super.getPackageResourcePath();
    }

    public final synchronized void setAppPackageName(String str) {
        this.zzdnt = super.createPackageContext(str, 0);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized void startActivity(Intent intent) {
        zze(zzd(intent));
    }
}
