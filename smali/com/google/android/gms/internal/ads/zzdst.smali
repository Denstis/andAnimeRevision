###### Class com.google.android.gms.internal.ads.zzdst (com.google.android.gms.internal.ads.zzdst)
.class final Lcom/google/android/gms/internal/ads/zzdst;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdse;


# instance fields
.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final zzhnb:[Ljava/lang/Object;

.field private final zzhne:Lcom/google/android/gms/internal/ads/zzdsg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdst;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhnb:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_16

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->flags:I

    return-void

    :cond_16
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_1b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_2b

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1b

    :cond_2b
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->flags:I

    return-void
.end method


# virtual methods
.method public final zzbay()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhld:I

    return v0

    :cond_9
    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhle:I

    return v0
.end method

.method public final zzbaz()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbba()Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    return-object v0
.end method

.method final zzbbg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->info:Ljava/lang/String;

    return-object v0
.end method

.method final zzbbh()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhnb:[Ljava/lang/Object;

    return-object v0
.end method
