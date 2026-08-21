###### Class com.google.android.gms.internal.ads.zzaof (com.google.android.gms.internal.ads.zzaof)
.class final Lcom/google/android/gms/internal/ads/zzaof;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic zzdip:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final synthetic zzdiq:Lcom/google/android/gms/internal/ads/zzaod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaod;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzdiq:Lcom/google/android/gms/internal/ads/zzaod;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzdip:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzdiq:Lcom/google/android/gms/internal/ads/zzaod;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaod;->zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzdip:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_d
    :try_start_d
    const-string v0, "AdMob exception reporter failed reporting the exception."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzdip:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzdip:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_22

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_22
    throw v0
.end method
