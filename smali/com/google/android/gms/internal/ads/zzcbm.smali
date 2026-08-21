###### Class com.google.android.gms.internal.ads.zzcbm (com.google.android.gms.internal.ads.zzcbm)
.class final Lcom/google/android/gms/internal/ads/zzcbm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private label:Ljava/lang/String;

.field private zzfrz:Lcom/google/android/gms/internal/ads/zzcyd;

.field private zzfsa:Lcom/google/android/gms/internal/ads/zzcyd;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcyd;Lcom/google/android/gms/internal/ads/zzcyd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbm;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbm;->zzfrz:Lcom/google/android/gms/internal/ads/zzcyd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbm;->zzfsa:Lcom/google/android/gms/internal/ads/zzcyd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcbm;)Lcom/google/android/gms/internal/ads/zzcyd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcbm;->zzfsa:Lcom/google/android/gms/internal/ads/zzcyd;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcbm;)Lcom/google/android/gms/internal/ads/zzcyd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcbm;->zzfrz:Lcom/google/android/gms/internal/ads/zzcyd;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcbm;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcbm;->label:Ljava/lang/String;

    return-object p0
.end method
