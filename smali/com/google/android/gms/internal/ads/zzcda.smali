###### Class com.google.android.gms.internal.ads.zzcda (com.google.android.gms.internal.ads.zzcda)
.class public final Lcom/google/android/gms/internal/ads/zzcda;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method
