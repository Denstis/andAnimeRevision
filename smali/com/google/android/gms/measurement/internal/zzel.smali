###### Class com.google.android.gms.measurement.internal.zzel (com.google.android.gms.measurement.internal.zzel)
.class public final Lcom/google/android/gms/measurement/internal/zzel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzf:Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzej<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;

.field private volatile zzg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzej;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;",
            "Lcom/google/android/gms/measurement/internal/zzej<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zze:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzg:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzd:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Lcom/google/android/gms/measurement/internal/zzej;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzej;Lcom/google/android/gms/measurement/internal/zzek;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzel;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzej;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_72

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzem;->zza:Lcom/google/android/gms/measurement/internal/zzw;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    return-object p1

    :cond_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Ljava/lang/Object;

    monitor-enter p1

    :try_start_11
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/lang/Object;

    :goto_20
    monitor-exit p1

    return-object v0

    :cond_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_6d

    :try_start_23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzap;->zzcs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzel;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_3b} :catch_5a

    if-nez v1, :cond_52

    const/4 v1, 0x0

    :try_start_3e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Lcom/google/android/gms/measurement/internal/zzej;

    if-eqz v2, :cond_48

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_48} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_48} :catch_5a

    :catch_48
    :cond_48
    :try_start_48
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_5a

    :try_start_4b
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/lang/Object;

    monitor-exit v2

    goto :goto_2b

    :catchall_4f
    move-exception p1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1

    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_5a} :catch_5a

    :catch_5a
    nop

    :cond_5b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Lcom/google/android/gms/measurement/internal/zzej;

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    return-object p1

    :cond_62
    :try_start_62
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/zzej;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_66} :catch_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_66} :catch_67

    return-object p1

    :catch_67
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    return-object p1

    :catch_6a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    return-object p1

    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    :goto_70
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    throw p1

    :catchall_72
    move-exception p1

    goto :goto_70
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Ljava/lang/String;

    return-object v0
.end method
