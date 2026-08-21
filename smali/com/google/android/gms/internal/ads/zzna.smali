###### Class com.google.android.gms.internal.ads.zzna (com.google.android.gms.internal.ads.zzna)
.class public final Lcom/google/android/gms/internal/ads/zzna;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzbee:Lcom/google/android/gms/internal/ads/zzmk;

.field public final zzbef:Lcom/google/android/gms/internal/ads/zzmv;

.field public final zzbeg:Ljava/lang/Object;

.field public final zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzmv;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzgz;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbee:Lcom/google/android/gms/internal/ads/zzmk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbeg:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzna;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzof;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzna;->zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzof;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v0
.end method
