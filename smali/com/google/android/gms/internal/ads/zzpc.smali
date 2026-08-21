###### Class com.google.android.gms.internal.ads.zzpc (com.google.android.gms.internal.ads.zzpc)
.class final Lcom/google/android/gms/internal/ads/zzpc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbjg:Lcom/google/android/gms/internal/ads/zzov;

.field private final synthetic zzbjk:I

.field private final synthetic zzbjl:I

.field private final synthetic zzbjm:I

.field private final synthetic zzbjn:F


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzov;IIIF)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjk:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjl:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjm:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjn:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzow;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjk:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjl:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjm:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbjn:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzow;->zzb(IIIF)V

    return-void
.end method
