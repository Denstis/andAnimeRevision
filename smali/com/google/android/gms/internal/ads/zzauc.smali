###### Class com.google.android.gms.internal.ads.zzauc (com.google.android.gms.internal.ads.zzauc)
.class public abstract Lcom/google/android/gms/internal/ads/zzauc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile thread:Ljava/lang/Thread;

.field private final zzdry:Ljava/lang/Runnable;

.field private zzdrz:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Lcom/google/android/gms/internal/ads/zzauc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdry:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdrz:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzauc;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauc;->thread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract zzsx()V
.end method

.method public final zzut()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwj:Lcom/google/android/gms/internal/ads/zzddl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdry:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzf(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method
