###### Class com.google.android.gms.internal.measurement.zzft (com.google.android.gms.internal.measurement.zzft)
.class public Lcom/google/android/gms/internal/measurement/zzft;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzeq;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/zzdu;

.field private volatile zzc:Lcom/google/android/gms/internal/measurement/zzgo;

.field private volatile zzd:Lcom/google/android/gms/internal/measurement/zzdu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeq;->zza()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzft;->zza:Lcom/google/android/gms/internal/measurement/zzeq;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzgo;)Lcom/google/android/gms/internal/measurement/zzgo;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    if-nez v0, :cond_1c

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    goto :goto_1c

    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/internal/measurement/zzdu;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;
    :try_end_11
    .catch Lcom/google/android/gms/internal/measurement/zzfo; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    goto :goto_9

    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/internal/measurement/zzdu;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    goto :goto_9

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1

    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzft;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzft;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzft;->zzc()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzft;->zzc()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzdu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zzbt()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzft;->zzb(Lcom/google/android/gms/internal/measurement/zzgo;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzgq;->zzbt()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzft;->zzb(Lcom/google/android/gms/internal/measurement/zzgo;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzgo;)Lcom/google/android/gms/internal/measurement/zzgo;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:Lcom/google/android/gms/internal/measurement/zzdu;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzgo;->zzbn()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzdu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/internal/measurement/zzdu;

    :goto_16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzgo;->zzbh()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v0

    goto :goto_16

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:Lcom/google/android/gms/internal/measurement/zzdu;

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method
