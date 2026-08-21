###### Class com.google.android.gms.internal.ads.zzbyx (com.google.android.gms.internal.ads.zzbyx)
.class public final Lcom/google/android/gms/internal/ads/zzbyx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafb;


# instance fields
.field private final zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

.field private final zzfqf:Lcom/google/android/gms/internal/ads/zzaqt;

.field private final zzfqg:Ljava/lang/String;

.field private final zzfqh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdle:Lcom/google/android/gms/internal/ads/zzaqt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfqf:Lcom/google/android/gms/internal/ads/zzaqt;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzddf:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfqg:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzddg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfqh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaqt;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfqf:Lcom/google/android/gms/internal/ads/zzaqt;

    if-eqz v0, :cond_5

    move-object p1, v0

    :cond_5
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqt;->type:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaqt;->zzdnv:I

    goto :goto_f

    :cond_c
    const-string v0, ""

    const/4 p1, 0x1

    :goto_f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapw;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfqg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfqh:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbnr;->zzb(Lcom/google/android/gms/internal/ads/zzapy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzra()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnr;->onRewardedVideoStarted()V

    return-void
.end method

.method public final zzrb()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnr;->onRewardedVideoCompleted()V

    return-void
.end method
