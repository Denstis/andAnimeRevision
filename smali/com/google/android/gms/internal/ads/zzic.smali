###### Class com.google.android.gms.internal.ads.zzic (com.google.android.gms.internal.ads.zzic)
.class final Lcom/google/android/gms/internal/ads/zzic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;


# instance fields
.field private zzafm:I

.field private zzaia:I

.field private zzajf:Ljava/nio/ByteBuffer;

.field private zzaki:I

.field private zzakm:Ljava/nio/ByteBuffer;

.field private zzakn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaki:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzafm:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzajf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzajf:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakn:Z

    return-void
.end method

.method public final isActive()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    if-eqz v0, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->flush()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaki:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzafm:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    return-void
.end method

.method public final zzb(III)Z
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_15

    if-eq p3, v0, :cond_15

    const/high16 v1, -0x80000000

    if-eq p3, v1, :cond_15

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p3, v1, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhh;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(III)V

    throw v0

    :cond_15
    :goto_15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaki:I

    if-ne v1, p1, :cond_23

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzafm:I

    if-ne v1, p2, :cond_23

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    if-ne v1, p3, :cond_23

    const/4 p1, 0x0

    return p1

    :cond_23
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaki:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzafm:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    if-ne p3, v0, :cond_2f

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    :cond_2f
    const/4 p1, 0x1

    return p1
.end method

.method public final zzeo()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakn:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzajf:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzet()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzafm:I

    return v0
.end method

.method public final zzeu()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final zzev()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakn:Z

    return-void
.end method

.method public final zzew()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzajf:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzajf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzi(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x3

    if-eq v3, v5, :cond_20

    if-eq v3, v6, :cond_21

    if-ne v3, v4, :cond_1a

    div-int/lit8 v2, v2, 0x2

    goto :goto_23

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_20
    div-int/2addr v2, v6

    :cond_21
    shl-int/lit8 v2, v2, 0x1

    :goto_23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_3a

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    goto :goto_3f

    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_3f
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzaia:I

    if-eq v2, v5, :cond_81

    if-eq v2, v6, :cond_68

    if-ne v2, v4, :cond_62

    :goto_47
    if-ge v0, v1, :cond_9c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_47

    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_68
    :goto_68
    if-ge v0, v1, :cond_9c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_81
    :goto_81
    if-ge v0, v1, :cond_9c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_81

    :cond_9c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzakm:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzajf:Ljava/nio/ByteBuffer;

    return-void
.end method
