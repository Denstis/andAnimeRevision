###### Class com.google.android.gms.internal.ads.zzbap (com.google.android.gms.internal.ads.zzbap)
.class public final Lcom/google/android/gms/internal/ads/zzbap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzcu:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzl(Ljava/nio/ByteBuffer;)J
    .registers 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzcu:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaq;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->zzedb:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;-><init>(Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzba;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdvl;->zzbdc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbb;

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzbd;

    if-eqz v4, :cond_24

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbd;

    goto :goto_3a

    :cond_39
    move-object p1, v1

    :goto_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdvl;->zzbdc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbb;

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzbg;

    if-eqz v4, :cond_42

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbg;

    :cond_55
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbg;->getDuration()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbg;->zzq()J

    move-result-wide v0

    div-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzcu:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzcu:J
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_66} :catch_67

    return-wide v0

    :catch_67
    return-wide v2
.end method
