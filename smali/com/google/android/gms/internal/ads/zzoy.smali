###### Class com.google.android.gms.internal.ads.zzoy (com.google.android.gms.internal.ads.zzoy)
.class final Lcom/google/android/gms/internal/ads/zzoy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahc:Lcom/google/android/gms/internal/ads/zzil;

.field private final synthetic zzbjg:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzov;Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzahc:Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzahc:Lcom/google/android/gms/internal/ads/zzil;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzow;->zze(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void
.end method
