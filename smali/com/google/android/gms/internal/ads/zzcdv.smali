###### Class com.google.android.gms.internal.ads.zzcdv (com.google.android.gms.internal.ads.zzcdv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcdv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# static fields
.field static final zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdv;->zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v0, "Timed out waiting for ad response."

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
