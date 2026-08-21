###### Class com.google.android.gms.internal.ads.zzxi (com.google.android.gms.internal.ads.zzxi)
.class public final Lcom/google/android/gms/internal/ads/zzxi;
.super Landroid/content/ContentProvider;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static zzh(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v0, "Failed to load metadata: Package name not found."

    goto :goto_18

    :catch_15
    move-exception p0

    const-string v0, "Failed to load metadata: Null pointer exception."

    :goto_18
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxi;->zzh(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzajp;->zzrn()Lcom/google/android/gms/internal/ads/zzajp;

    move-result-object v1

    if-nez v0, :cond_10

    const-string v0, "Metadata was null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    goto :goto_7b

    :cond_10
    :try_start_10
    const-string v2, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_18} :catch_99

    :try_start_18
    const-string v3, "com.google.android.gms.ads.AD_MANAGER_APP"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_20} :catch_90

    :try_start_20
    const-string v4, "com.google.android.gms.ads.DELAY_APP_MEASUREMENT_INIT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_28} :catch_87

    if-eqz v2, :cond_68

    const-string v4, "^/\\d+~.+$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string v3, "^ca-app-pub-[0-9]{16}~[0-9]{10}$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    const-string v3, "Publisher provided Google AdMob App ID in manifest: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_51

    :cond_4b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_51
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_5c
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzajp;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    goto :goto_7b

    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\n\n******************************************************************************\n* Invalid application ID. Follow instructions here:                          *\n* https://googlemobileadssdk.page.link/admob-android-update-manifest         *\n* to find your app ID.                                                       *\n******************************************************************************\n\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7f

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_78
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzajp;->zzm(Landroid/content/Context;)Ljava/lang/Thread;

    :cond_7b
    :goto_7b
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\n\n******************************************************************************\n* The Google Mobile Ads SDK was initialized incorrectly. AdMob publishers    *\n* should follow the instructions here:                                       *\n* https://googlemobileadssdk.page.link/admob-android-update-manifest         *\n* to add a valid App ID inside the AndroidManifest.                          *\n* Google Ad Manager publishers should follow instructions here:              *\n* https://googlemobileadssdk.page.link/ad-manager-android-update-manifest.   *\n******************************************************************************\n\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_87
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.DELAY_APP_MEASUREMENT_INIT metadata must have a boolean value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_90
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.AD_MANAGER_APP metadata must have a boolean value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_99
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The com.google.android.gms.ads.APPLICATION_ID metadata must have a String value."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
