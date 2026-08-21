###### Class com.google.android.gms.ads.MobileAdsInitProvider (com.google.android.gms.ads.MobileAdsInitProvider)
.class public Lcom/google/android/gms/ads/MobileAdsInitProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdkWithMembers;
.end annotation


# instance fields
.field private final zzabi:Lcom/google/android/gms/internal/ads/zzxi;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxi;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxi;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxi;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxi;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxi;->onCreate()Z

    move-result v0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzxi;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzabi:Lcom/google/android/gms/internal/ads/zzxi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzxi;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
