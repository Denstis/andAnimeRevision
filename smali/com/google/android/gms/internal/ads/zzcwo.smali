###### Class com.google.android.gms.internal.ads.zzcwo (com.google.android.gms.internal.ads.zzcwo)
.class public final Lcom/google/android/gms/internal/ads/zzcwo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static final synthetic zza(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_1e

    :try_start_5
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    if-eqz p0, :cond_11

    const/4 p1, 0x0

    :try_start_e
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcwo;->zza(Ljava/lang/Throwable;Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_27

    :cond_11
    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    throw p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v1

    :try_start_15
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v0

    :try_start_1a
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    :try_start_1f
    throw p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    if-eqz p0, :cond_26

    :try_start_23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcwo;->zza(Ljava/lang/Throwable;Ljava/io/InputStream;)V

    :cond_26
    throw v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static zze(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcwn;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzcwn (com.google.android.gms.internal.ads.zzcwn)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcwn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgks:Ljava/io/InputStream;

.field private final zzgkt:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzgks:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzgkt:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzgks:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzgkt:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwo;->zza(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
