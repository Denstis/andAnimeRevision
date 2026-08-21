###### Class com.google.android.gms.internal.ads.zzlk (com.google.android.gms.internal.ads.zzlk)
.class final Lcom/google/android/gms/internal/ads/zzlk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzazs:Lcom/google/android/gms/internal/ads/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzli;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlk;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlk;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzli;->zzb(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlk;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzli;->zzc(Lcom/google/android/gms/internal/ads/zzli;)Lcom/google/android/gms/internal/ads/zzlr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlk;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzmf;->zza(Lcom/google/android/gms/internal/ads/zzmg;)V

    :cond_13
    return-void
.end method
