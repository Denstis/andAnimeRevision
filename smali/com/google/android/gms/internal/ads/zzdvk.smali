###### Class com.google.android.gms.internal.ads.zzdvk (com.google.android.gms.internal.ads.zzdvk)
.class public abstract Lcom/google/android/gms/internal/ads/zzdvk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbb;


# static fields
.field private static zzcp:Lcom/google/android/gms/internal/ads/zzdvt;


# instance fields
.field private type:Ljava/lang/String;

.field private zzauv:J

.field private zzhwm:Lcom/google/android/gms/internal/ads/zzbe;

.field zzhwo:Z

.field private zzhwp:Z

.field private zzhwq:Ljava/nio/ByteBuffer;

.field private zzhwr:J

.field private zzhws:J

.field private zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

.field private zzhwu:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzdvk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvt;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvk;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhws:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwu:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->type:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwp:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwo:Z

    return-void
.end method

.method private final declared-synchronized zzbda()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-nez v0, :cond_3a

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvk;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    const-string v1, "mem mapping "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvk;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvt;->zzhr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwr:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhws:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdvn;->zzh(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwq:Ljava/nio/ByteBuffer;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2f} :catch_33
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3c

    const/4 v0, 0x1

    :try_start_30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwp:Z

    goto :goto_3a

    :catch_33
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3c

    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwm:Lcom/google/android/gms/internal/ads/zzbe;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdvn;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzba;)V
    .registers 10

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwr:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwr:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzauv:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhws:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdvn;->zzew(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwp:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwo:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzbdb()V

    return-void
.end method

.method public final declared-synchronized zzbdb()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzbda()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvk;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    const-string v1, "parsing details of "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvk;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvt;->zzhr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwq:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwq:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwo:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzg(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwu:Ljava/nio/ByteBuffer;

    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwq:Ljava/nio/ByteBuffer;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    :cond_40
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract zzg(Ljava/nio/ByteBuffer;)V
.end method
