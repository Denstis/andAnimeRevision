###### Class com.google.android.gms.internal.ads.zzbth (com.google.android.gms.internal.ads.zzbth)
.class public Lcom/google/android/gms/internal/ads/zzbth;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

.field private final zzfjf:Lcom/google/android/gms/internal/ads/zzuy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzuy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzfjf:Lcom/google/android/gms/internal/ads/zzuy;

    return-void
.end method


# virtual methods
.method public final zzagy()Lcom/google/android/gms/internal/ads/zzbuy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

    return-object v0
.end method

.method public final zzagz()Lcom/google/android/gms/internal/ads/zzuy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzfjf:Lcom/google/android/gms/internal/ads/zzuy;

    return-object v0
.end method
