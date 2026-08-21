###### Class com.google.android.gms.internal.ads.zzasu (com.google.android.gms.internal.ads.zzasu)
.class final synthetic Lcom/google/android/gms/internal/ads/zzasu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatc;


# static fields
.field static final zzdpu:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasu;->zzdpu:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbeb;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getCurrentScreenClass()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    return-object p1

    :cond_e
    const-string p1, ""

    return-object p1
.end method
