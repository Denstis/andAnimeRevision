###### Class com.google.android.gms.internal.ads.zzbqq (com.google.android.gms.internal.ads.zzbqq)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbqq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpo;


# static fields
.field static final zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbqq;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqp;->onHide()V

    return-void
.end method
