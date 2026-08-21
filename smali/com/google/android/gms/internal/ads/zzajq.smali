###### Class com.google.android.gms.internal.ads.zzajq (com.google.android.gms.internal.ads.zzajq)
.class final synthetic Lcom/google/android/gms/internal/ads/zzajq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxk;


# static fields
.field static final zzbty:Lcom/google/android/gms/internal/ads/zzaxk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajq;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbeg;->zzan(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbed;

    move-result-object p1

    return-object p1
.end method
