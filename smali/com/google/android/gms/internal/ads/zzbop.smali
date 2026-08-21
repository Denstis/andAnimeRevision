###### Class com.google.android.gms.internal.ads.zzbop (com.google.android.gms.internal.ads.zzbop)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbop;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpo;


# static fields
.field static final zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbop;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbop;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbop;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onResume()V

    return-void
.end method
