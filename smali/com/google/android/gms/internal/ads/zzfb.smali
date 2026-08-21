###### Class com.google.android.gms.internal.ads.zzfb (com.google.android.gms.internal.ads.zzfb)
.class public final Lcom/google/android/gms/internal/ads/zzfb;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# instance fields
.field private zzaaf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V
    .registers 14

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzaaf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzax(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzay(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzaaf:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdx;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzaaf:Ljava/util/List;

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzaaf:Ljava/util/List;

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-enter v0

    :try_start_35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzaaf:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzax(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzaaf:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzay(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-exit v0

    return-void

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_59

    throw v1

    :cond_5c
    return-void
.end method
