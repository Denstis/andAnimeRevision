###### Class com.google.android.gms.internal.ads.zzapo (com.google.android.gms.internal.ads.zzapo)
.class final Lcom/google/android/gms/internal/ads/zzapo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzapj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzdno:Lcom/google/android/gms/internal/ads/zzapl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapl;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzdno:Lcom/google/android/gms/internal/ads/zzapl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapo;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzdno:Lcom/google/android/gms/internal/ads/zzapl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapl;->zza(Lcom/google/android/gms/internal/ads/zzapl;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapn;

    if-eqz v0, :cond_42

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzapn;->zzdnm:J

    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zzcmb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-nez v1, :cond_42

    new-instance v1, Lcom/google/android/gms/internal/ads/zzapm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapn;->zzdnn:Lcom/google/android/gms/internal/ads/zzapj;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzapm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapm;->zzti()Lcom/google/android/gms/internal/ads/zzapj;

    move-result-object v0

    goto :goto_4d

    :cond_42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapm;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapm;->zzti()Lcom/google/android/gms/internal/ads/zzapj;

    move-result-object v0

    :goto_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzdno:Lcom/google/android/gms/internal/ads/zzapl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzapl;->zza(Lcom/google/android/gms/internal/ads/zzapl;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzapn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzdno:Lcom/google/android/gms/internal/ads/zzapl;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzapn;-><init>(Lcom/google/android/gms/internal/ads/zzapl;Lcom/google/android/gms/internal/ads/zzapj;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
