###### Class com.google.android.gms.internal.ads.zzao (com.google.android.gms.internal.ads.zzao)
.class final Lcom/google/android/gms/internal/ads/zzao;
.super Ljava/lang/Object;
.source ""


# instance fields
.field zzcd:J

.field final zzce:Ljava/lang/String;

.field final zzg:Ljava/lang/String;

.field final zzh:J

.field final zzi:J

.field final zzj:J

.field final zzk:J

.field final zzm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzd;)V
    .registers 16

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzd;->zzg:Ljava/lang/String;

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzd;->zzh:J

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzd;->zzi:J

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzd;->zzj:J

    iget-wide v9, p2, Lcom/google/android/gms/internal/ads/zzd;->zzk:J

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzd;->zzm:Ljava/util/List;

    if-eqz v0, :cond_10

    :cond_e
    move-object v11, v0

    goto :goto_44

    :cond_10
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzd;->zzl:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lcom/google/android/gms/internal/ads/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :goto_44
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzao;->zzce:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    :cond_e
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzao;->zzg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzao;->zzh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzao;->zzi:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzao;->zzj:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzao;->zzk:J

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzao;->zzm:Ljava/util/List;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzan;)Lcom/google/android/gms/internal/ads/zzao;
    .registers 15

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zzb(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_2c

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zza(Lcom/google/android/gms/internal/ads/zzan;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zza(Lcom/google/android/gms/internal/ads/zzan;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zzc(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zzc(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zzc(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zzc(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzal;->zzb(Lcom/google/android/gms/internal/ads/zzan;)Ljava/util/List;

    move-result-object v13

    new-instance p0, Lcom/google/android/gms/internal/ads/zzao;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    :cond_2c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method final zza(Ljava/io/OutputStream;)Z
    .registers 7

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzao;->zzce:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzao;->zzg:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzao;->zzg:Ljava/lang/String;

    :goto_16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzao;->zzh:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzao;->zzi:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzao;->zzj:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzao;->zzk:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzao;->zzm:Ljava/util/List;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzk;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzk;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_3c

    :cond_57
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzal;->zza(Ljava/io/OutputStream;I)V

    :cond_5a
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5d} :catch_5e

    return v1

    :catch_5e
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzag;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
