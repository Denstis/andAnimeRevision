package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzfl {
    final zzga zza;

    zzfl(zzga zzgaVar) {
        this.zza = zzgaVar;
    }

    @VisibleForTesting
    private final boolean zza() {
        try {
            PackageManagerWrapper packageManagerWrapperPackageManager = Wrappers.packageManager(this.zza.zzn());
            if (packageManagerWrapperPackageManager != null) {
                return packageManagerWrapperPackageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            this.zza.zzr().zzv().zza("Failed to retrieve Package Manager to check Play Store compatibility");
            return false;
        } catch (Exception e2) {
            this.zza.zzr().zzv().zza("Failed to retrieve Play Store version", e2);
            return false;
        }
    }

    @VisibleForTesting
    final Bundle zza(String str, com.google.android.gms.internal.measurement.zzd zzdVar) {
        this.zza.zzq().zzd();
        if (zzdVar == null) {
            this.zza.zzr().zzi().zza("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle bundleZza = zzdVar.zza(bundle);
            if (bundleZza != null) {
                return bundleZza;
            }
            this.zza.zzr().zzf().zza("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e2) {
            this.zza.zzr().zzf().zza("Exception occurred while retrieving the Install Referrer", e2.getMessage());
            return null;
        }
    }

    protected final void zza(String str) {
        if (str == null || str.isEmpty()) {
            this.zza.zzr().zzv().zza("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.zza.zzq().zzd();
        if (!zza()) {
            this.zza.zzr().zzv().zza("Install Referrer Reporter is not available");
            return;
        }
        this.zza.zzr().zzv().zza("Install Referrer Reporter is initializing");
        zzfo zzfoVar = new zzfo(this, str);
        this.zza.zzq().zzd();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.zza.zzn().getPackageManager();
        if (packageManager == null) {
            this.zza.zzr().zzi().zza("Failed to obtain Package Manager to verify binding conditions");
            return;
        }
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            this.zza.zzr().zzv().zza("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (resolveInfo.serviceInfo.name == null || !"com.android.vending".equals(str2) || !zza()) {
                this.zza.zzr().zzv().zza("Play Store missing or incompatible. Version 8.3.73 or later required");
                return;
            }
            try {
                this.zza.zzr().zzv().zza("Install Referrer Service is", ConnectionTracker.getInstance().bindService(this.zza.zzn(), new Intent(intent), zzfoVar, 1) ? "available" : "not available");
            } catch (Exception e2) {
                this.zza.zzr().zzf().zza("Exception occurred while binding to Install Referrer Service", e2.getMessage());
            }
        }
    }
}
