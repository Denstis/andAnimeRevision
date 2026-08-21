###### Class com.google.android.gms.internal.ads.zzasa (com.google.android.gms.internal.ads.zzasa)
.class final Lcom/google/android/gms/internal/ads/zzasa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic zzdov:Lcom/google/android/gms/internal/ads/zzarv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzarv;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasa;->zzdov:Lcom/google/android/gms/internal/ads/zzarv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasa;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasa;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasa;->zzdov:Lcom/google/android/gms/internal/ads/zzarv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzarv;->zza(Lcom/google/android/gms/internal/ads/zzarv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasa;->zzdov:Lcom/google/android/gms/internal/ads/zzarv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzarv;->zzb(Lcom/google/android/gms/internal/ads/zzarv;)Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzdve;->zzhvm:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasa;->zzdov:Lcom/google/android/gms/internal/ads/zzarv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzarv;->zzb(Lcom/google/android/gms/internal/ads/zzarv;)Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdve;->zzhvm:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwl:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasa;->zzdov:Lcom/google/android/gms/internal/ads/zzarv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzarv;->zzb(Lcom/google/android/gms/internal/ads/zzarv;)Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdve;->zzhvm:Lcom/google/android/gms/internal/ads/zzdvi;

    const-string v2, "image/png"

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzdvi;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasa;->zzdov:Lcom/google/android/gms/internal/ads/zzarv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzarv;->zzb(Lcom/google/android/gms/internal/ads/zzarv;)Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdve;->zzhvm:Lcom/google/android/gms/internal/ads/zzdvi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;->zzhua:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwk:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;

    monitor-exit v1

    return-void

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_49

    throw v0
.end method
