###### Class com.google.android.gms.internal.ads.zzarw (com.google.android.gms.internal.ads.zzarw)
.class public final Lcom/google/android/gms/internal/ads/zzarw;
.super Lcom/google/android/gms/internal/ads/zzaqy;
.source ""


# instance fields
.field private final type:Ljava/lang/String;

.field private final zzdnv:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    :goto_11
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqt;)V
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqt;->type:Ljava/lang/String;

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    if-eqz p1, :cond_c

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaqt;->zzdnv:I

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    :goto_d
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->type:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdnv:I

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdnv:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->type:Ljava/lang/String;

    return-object v0
.end method
