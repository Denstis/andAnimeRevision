###### Class com.google.android.gms.internal.ads.zzarp (com.google.android.gms.internal.ads.zzarp)
.class final synthetic Lcom/google/android/gms/internal/ads/zzarp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxk;


# static fields
.field static final zzbty:Lcom/google/android/gms/internal/ads/zzaxk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzarp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzarp;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzarg;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/ads/zzarg;

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzarf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
