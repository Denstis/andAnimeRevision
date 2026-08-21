###### Class com.google.android.gms.internal.ads.zzew (com.google.android.gms.internal.ads.zzew)
.class public final Lcom/google/android/gms/internal/ads/zzew;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# static fields
.field private static volatile zzaac:Ljava/lang/String;

.field private static final zzzz:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzew;->zzzz:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V
    .registers 14

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->zzaac:Ljava/lang/String;

    if-nez v0, :cond_25

    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->zzzz:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzew;->zzaac:Ljava/lang/String;

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzew;->zzaac:Ljava/lang/String;

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-enter v0

    :try_start_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzew;->zzaac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1
.end method
