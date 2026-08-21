###### Class com.google.android.gms.internal.ads.zzma (com.google.android.gms.internal.ads.zzma)
.class final Lcom/google/android/gms/internal/ads/zzma;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private length:I

.field private zzamu:[I

.field private zzamv:[J

.field private zzamx:[J

.field private zzavk:[I

.field private zzbbv:I

.field private zzbbw:[I

.field private zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

.field private zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

.field private zzbbz:I

.field private zzbca:I

.field private zzbcb:I

.field private zzbcc:J

.field private zzbcd:J

.field private zzbce:Z

.field private zzbcf:Z

.field private zzbcg:Lcom/google/android/gms/internal/ads/zzgo;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbw:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzjg;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbce:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;ZZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzlz;)I
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzma;->zzhq()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_24

    if-eqz p4, :cond_12

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzih;->setFlags(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a6

    monitor-exit p0

    return v3

    :cond_12
    :try_start_12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;

    if-eqz p2, :cond_22

    if-nez p3, :cond_1c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;

    if-eq p2, p5, :cond_22

    :cond_1c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_a6

    monitor-exit p0

    return v1

    :cond_22
    monitor-exit p0

    return v2

    :cond_24
    if-nez p3, :cond_9c

    :try_start_26
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_2f

    goto :goto_9c

    :cond_2f
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_a6

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-eqz p1, :cond_3c

    monitor-exit p0

    return v2

    :cond_3c
    :try_start_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-wide v0, p1, p5

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzik;->zzamb:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget p1, p1, p5

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzih;->setFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget p1, p1, p5

    iput p1, p6, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-wide v0, p1, p5

    iput-wide v0, p6, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-object p1, p1, p5

    iput-object p1, p6, Lcom/google/android/gms/internal/ads/zzlz;->zzapp:Lcom/google/android/gms/internal/ads/zzjg;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcc:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzik;->zzamb:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcc:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    if-ne p1, p2, :cond_86

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    :cond_86
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    if-lez p1, :cond_92

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-wide p2, p1, p2

    move-wide p1, p2

    goto :goto_98

    :cond_92
    iget-wide p1, p6, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    iget p3, p6, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    :goto_98
    iput-wide p1, p6, Lcom/google/android/gms/internal/ads/zzlz;->zzbbu:J
    :try_end_9a
    .catchall {:try_start_3c .. :try_end_9a} :catchall_a6

    monitor-exit p0

    return v3

    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a6

    monitor-exit p0

    return v1

    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(JIJILcom/google/android/gms/internal/ads/zzjg;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbce:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_eb

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbce:Z

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcf:Z

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzma;->zzec(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    aput-wide p1, v0, v3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    aput-wide p4, p1, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    aput p6, p1, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    aput p3, p1, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    aput-object p7, p1, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbw:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    aput v1, p1, p2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    if-ne p1, p2, :cond_dc

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    add-int/lit16 p1, p1, 0x3e8

    new-array p2, p1, [I

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [I

    new-array p6, p1, [I

    new-array p7, p1, [Lcom/google/android/gms/internal/ads/zzjg;

    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzgo;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbw:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbw:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbx:[Lcom/google/android/gms/internal/ads/zzjg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbw:[I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I
    :try_end_da
    .catchall {:try_start_c .. :try_end_da} :catchall_eb

    monitor-exit p0

    return-void

    :cond_dc
    :try_start_dc
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    if-ne p1, p2, :cond_e9

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I
    :try_end_e9
    .catchall {:try_start_dc .. :try_end_e9} :catchall_eb

    :cond_e9
    monitor-exit p0

    return-void

    :catchall_eb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(JZ)J
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzma;->zzhq()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_14

    goto :goto_5f

    :cond_14
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcd:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_61

    cmp-long v0, p1, v3

    if-lez v0, :cond_1e

    if-nez p3, :cond_1e

    monitor-exit p0

    return-wide v1

    :cond_1e
    const/4 p3, 0x0

    :try_start_1f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    const/4 v3, -0x1

    const/4 p3, -0x1

    const/4 v4, 0x0

    :goto_24
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    if-eq v0, v5, :cond_41

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamx:[J

    aget-wide v6, v5, v0

    cmp-long v5, v6, p1

    if-gtz v5, :cond_41

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzavk:[I

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_39

    move p3, v4

    :cond_39
    add-int/lit8 v0, v0, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    rem-int/2addr v0, v5
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_61

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_41
    if-ne p3, v3, :cond_45

    monitor-exit p0

    return-wide v1

    :cond_45
    :try_start_45
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    add-int/2addr p1, p3

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    aget-wide p2, p1, p2
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_61

    monitor-exit p0

    return-wide p2

    :cond_5f
    :goto_5f
    monitor-exit p0

    return-wide v1

    :catchall_61
    move-exception p1

    monitor-exit p0

    goto :goto_65

    :goto_64
    throw p1

    :goto_65
    goto :goto_64
.end method

.method public final declared-synchronized zzec(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcd:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcd:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzgo;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcf:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    monitor-exit p0

    return v1

    :cond_9
    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcf:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzof;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_19

    if-eqz v2, :cond_15

    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzhh()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcc:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcd:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzhn()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbce:Z

    return-void
.end method

.method public final zzho()V
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcd:J

    return-void
.end method

.method public final zzhp()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzhq()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public final declared-synchronized zzhr()Lcom/google/android/gms/internal/ads/zzgo;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcf:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbcg:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzhs()J
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzma;->zzhq()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_35

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_b
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbv:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbca:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzbbz:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzma;->length:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamv:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzma;->zzamu:[I

    aget v0, v1, v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_35

    int-to-long v0, v0

    add-long/2addr v2, v0

    monitor-exit p0

    return-wide v2

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
