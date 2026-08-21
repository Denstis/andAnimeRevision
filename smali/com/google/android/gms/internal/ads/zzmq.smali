###### Class com.google.android.gms.internal.ads.zzmq (com.google.android.gms.internal.ads.zzmq)
.class public final Lcom/google/android/gms/internal/ads/zzmq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final viewportHeight:I

.field public final viewportWidth:I

.field public final zzbdk:Ljava/lang/String;

.field public final zzbdl:Ljava/lang/String;

.field public final zzbdm:Z

.field public final zzbdn:Z

.field public final zzbdo:I

.field public final zzbdp:I

.field public final zzbdq:I

.field public final zzbdr:Z

.field public final zzbds:Z

.field public final zzbdt:Z


# direct methods
.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const/4 v12, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzmq;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdk:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdl:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdm:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdn:Z

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdp:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdq:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdr:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmq;->viewportWidth:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmq;->viewportHeight:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdt:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_56

    const-class v2, Lcom/google/android/gms/internal/ads/zzmq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_56

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmq;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdn:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbdn:Z

    if-ne v2, v3, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdo:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbdo:I

    if-ne v2, v3, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdp:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbdp:I

    if-ne v2, v3, :cond_56

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdr:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbdr:Z

    if-ne v2, v3, :cond_56

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    if-ne v2, v3, :cond_56

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdt:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbdt:Z

    if-ne v2, v3, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->viewportWidth:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->viewportWidth:I

    if-ne v2, v3, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->viewportHeight:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->viewportHeight:I

    if-ne v2, v3, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdq:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzbdq:I

    if-ne v2, p1, :cond_56

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_56

    return v0

    :cond_56
    :goto_56
    return v1
.end method

.method public final hashCode()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdn:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdo:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdp:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdq:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdr:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbdt:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->viewportWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->viewportHeight:I

    add-int/2addr v1, v0

    return v1
.end method
