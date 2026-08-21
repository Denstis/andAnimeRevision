###### Class com.google.android.gms.internal.ads.zzzk (com.google.android.gms.internal.ads.zzzk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzzk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxk;


# static fields
.field static final zzbty:Lcom/google/android/gms/internal/ads/zzaxk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzk;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzzg;

    move-result-object p1

    return-object p1
.end method
