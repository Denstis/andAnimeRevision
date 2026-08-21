###### Class com.google.android.gms.internal.ads.zzbla (com.google.android.gms.internal.ads.zzbla)
.class public final Lcom/google/android/gms/internal/ads/zzbla;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzels:Lcom/google/android/gms/internal/ads/zzcvz;

.field private final zzfbi:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzffi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbla;->zzels:Lcom/google/android/gms/internal/ads/zzcvz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbla;->zzfbi:Lcom/google/android/gms/internal/ads/zzcvr;

    if-nez p3, :cond_b

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_b
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbla;->zzffi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzafp()Lcom/google/android/gms/internal/ads/zzcvz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbla;->zzels:Lcom/google/android/gms/internal/ads/zzcvz;

    return-object v0
.end method

.method public final zzafq()Lcom/google/android/gms/internal/ads/zzcvr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbla;->zzfbi:Lcom/google/android/gms/internal/ads/zzcvr;

    return-object v0
.end method

.method public final zzafr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbla;->zzffi:Ljava/lang/String;

    return-object v0
.end method
