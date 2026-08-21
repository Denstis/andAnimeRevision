###### Class com.google.android.gms.internal.ads.zzdul (com.google.android.gms.internal.ads.zzdul)
.class public Lcom/google/android/gms/internal/ads/zzdul;
.super Lcom/google/android/gms/internal/ads/zzdus;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/ads/zzdus;"
    }
.end annotation


# instance fields
.field protected zzhqy:Lcom/google/android/gms/internal/ads/zzdun;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdus;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdus;->zzbci()Lcom/google/android/gms/internal/ads/zzdus;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdul;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdup;->zza(Lcom/google/android/gms/internal/ads/zzdul;Lcom/google/android/gms/internal/ads/zzdul;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdun;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdun;->zzhf(I)Lcom/google/android/gms/internal/ads/zzduq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzduq;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public final synthetic zzbci()Lcom/google/android/gms/internal/ads/zzdus;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdul;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdul;

    return-object v0
.end method

.method protected zznx()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdun;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdun;->zzhf(I)Lcom/google/android/gms/internal/ads/zzduq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzduq;->zznx()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method
