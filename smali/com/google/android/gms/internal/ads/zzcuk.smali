###### Class com.google.android.gms.internal.ads.zzcuk (com.google.android.gms.internal.ads.zzcuk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcuk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# static fields
.field static final zzghu:Lcom/google/android/gms/internal/ads/zzcva;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcuk;->zzghu:Lcom/google/android/gms/internal/ads/zzcva;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdLoaded()V

    return-void
.end method
