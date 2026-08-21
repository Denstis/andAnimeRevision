###### Class com.google.android.gms.internal.ads.zzl (com.google.android.gms.internal.ads.zzl)
.class final Lcom/google/android/gms/internal/ads/zzl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzw:Lcom/google/android/gms/internal/ads/zzq;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzz;

.field private final zzy:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzl;->zzw:Lcom/google/android/gms/internal/ads/zzq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzl;->zzx:Lcom/google/android/gms/internal/ads/zzz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzl;->zzy:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzw:Lcom/google/android/gms/internal/ads/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->isCanceled()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzx:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzbi:Lcom/google/android/gms/internal/ads/zzae;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzw:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzl;->zzx:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzz;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zza(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzw:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzl;->zzx:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzz;->zzbi:Lcom/google/android/gms/internal/ads/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Lcom/google/android/gms/internal/ads/zzae;)V

    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzx:Lcom/google/android/gms/internal/ads/zzz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzbj:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzw:Lcom/google/android/gms/internal/ads/zzq;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    goto :goto_38

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzw:Lcom/google/android/gms/internal/ads/zzq;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zzc(Ljava/lang/String;)V

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzl;->zzy:Ljava/lang/Runnable;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3f
    return-void
.end method
