###### Class com.google.android.gms.internal.ads.zzcut (com.google.android.gms.internal.ads.zzcut)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcut;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# static fields
.field static final zzghu:Lcom/google/android/gms/internal/ads/zzcva;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcut;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcut;->zzghu:Lcom/google/android/gms/internal/ads/zzcva;

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

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdOpened()V

    return-void
.end method
