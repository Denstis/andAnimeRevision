###### Class com.google.android.gms.internal.ads.zzpd (com.google.android.gms.internal.ads.zzpd)
.class final Lcom/google/android/gms/internal/ads/zzpd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahj:Lcom/google/android/gms/internal/ads/zzil;

.field private final synthetic zzbjg:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzov;Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzahj:Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzahj:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzahj:Lcom/google/android/gms/internal/ads/zzil;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzow;->zzf(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void
.end method
