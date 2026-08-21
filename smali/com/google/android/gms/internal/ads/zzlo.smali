###### Class com.google.android.gms.internal.ads.zzlo (com.google.android.gms.internal.ads.zzlo)
.class final Lcom/google/android/gms/internal/ads/zzlo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzapk:Lcom/google/android/gms/internal/ads/zziy;

.field private final zzbaz:[Lcom/google/android/gms/internal/ads/zziw;

.field private zzbba:Lcom/google/android/gms/internal/ads/zziw;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zziw;Lcom/google/android/gms/internal/ads/zziy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaz:[Lcom/google/android/gms/internal/ads/zziw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbba:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziw;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbba:Lcom/google/android/gms/internal/ads/zziw;

    :cond_a
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziv;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zziw;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbba:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaz:[Lcom/google/android/gms/internal/ads/zziw;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    :try_start_d
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zziw;->zza(Lcom/google/android/gms/internal/ads/zziv;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbba:Lcom/google/android/gms/internal/ads/zziw;
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_15} :catch_1e
    .catchall {:try_start_d .. :try_end_15} :catchall_19

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziv;->zzgb()V

    goto :goto_24

    :catchall_19
    move-exception p2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziv;->zzgb()V

    throw p2

    :catch_1e
    :cond_1e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziv;->zzgb()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbba:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zziw;->zza(Lcom/google/android/gms/internal/ads/zziy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbba:Lcom/google/android/gms/internal/ads/zziw;

    return-object p1

    :cond_30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzmj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaz:[Lcom/google/android/gms/internal/ads/zziw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zza([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method
