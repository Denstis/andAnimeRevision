###### Class com.google.android.gms.internal.ads.zzazl (com.google.android.gms.internal.ads.zzazl)
.class final Lcom/google/android/gms/internal/ads/zzazl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzbpd:Z

.field private zzdyw:Lcom/google/android/gms/internal/ads/zzayw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayw;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzbpd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzdyw:Lcom/google/android/gms/internal/ads/zzayw;

    return-void
.end method

.method private final zzxv()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzbpd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzdyw:Lcom/google/android/gms/internal/ads/zzayw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxd()V

    return-void
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzbpd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazl;->zzxv()V

    return-void
.end method

.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzbpd:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzdyw:Lcom/google/android/gms/internal/ads/zzayw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxd()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazl;->zzxv()V

    :cond_c
    return-void
.end method
