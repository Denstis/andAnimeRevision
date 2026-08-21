###### Class com.google.android.gms.internal.ads.zzik (com.google.android.gms.internal.ads.zzik)
.class public final Lcom/google/android/gms/internal/ads/zzik;
.super Lcom/google/android/gms/internal/ads/zzih;
.source ""


# instance fields
.field public final zzama:Lcom/google/android/gms/internal/ads/zzig;

.field public zzamb:J

.field private final zzamc:I

.field public zzcq:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzih;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzig;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzig;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzamc:I

    return-void
.end method

.method private final zzy(I)Ljava/nio/ByteBuffer;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final clear()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzih;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_a
    return-void
.end method

.method public final zzfx()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzih;->zzw(I)Z

    move-result v0

    return v0
.end method

.method public final zzx(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzy(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    return-void

    :cond_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_19

    return-void

    :cond_19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzy(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez v1, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2f
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    return-void
.end method
