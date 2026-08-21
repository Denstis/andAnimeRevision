###### Class com.google.android.gms.internal.ads.zzbnt (com.google.android.gms.internal.ads.zzbnt)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbnt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpo;


# static fields
.field static final zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbna;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbna;->onAdLeftApplication()V

    return-void
.end method
