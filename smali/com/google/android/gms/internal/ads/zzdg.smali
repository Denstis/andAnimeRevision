###### Class com.google.android.gms.internal.ads.zzdg (com.google.android.gms.internal.ads.zzdg)
.class public final Lcom/google/android/gms/internal/ads/zzdg;
.super Lcom/google/android/gms/internal/ads/zzdd;
.source ""


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzdg;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdg;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzdg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;Lcom/google/android/gms/internal/ads/zzbk$zza;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdx;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;",
            "Lcom/google/android/gms/internal/ads/zzbk$zza;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzce()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdd;->zzwo:Z

    if-nez v0, :cond_b

    goto :goto_2d

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzbz()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Lcom/google/android/gms/internal/ads/zzdx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;Lcom/google/android/gms/internal/ads/zzbk$zza;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzet;

    const/16 v7, 0x18

    const-string v3, "1ZdlqvbjLHrlsj3y/9QBfBegKjUOs/o1A88UhYHQ4Jmy6BR/w0ghZ+Zr+YvoOH1m"

    const-string v4, "dIiWdqkuIrENjYXIlbMEe8d+ulqMtIBUuOR2KqmaBXc="

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2d
    :goto_2d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Lcom/google/android/gms/internal/ads/zzdx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;Lcom/google/android/gms/internal/ads/zzbk$zza;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
