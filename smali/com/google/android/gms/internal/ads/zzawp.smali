###### Class com.google.android.gms.internal.ads.zzawp (com.google.android.gms.internal.ads.zzawp)
.class public final Lcom/google/android/gms/internal/ads/zzawp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static zzdvc:Lcom/google/android/gms/internal/ads/zzawp;


# instance fields
.field zzdvd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzwe()Lcom/google/android/gms/internal/ads/zzawp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawp;->zzdvc:Lcom/google/android/gms/internal/ads/zzawp;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawp;->zzdvc:Lcom/google/android/gms/internal/ads/zzawp;

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawp;->zzdvc:Lcom/google/android/gms/internal/ads/zzawp;

    return-object v0
.end method
