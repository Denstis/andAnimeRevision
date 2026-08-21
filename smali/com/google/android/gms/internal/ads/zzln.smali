###### Class com.google.android.gms.internal.ads.zzln (com.google.android.gms.internal.ads.zzln)
.class final Lcom/google/android/gms/internal/ads/zzln;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmd;


# instance fields
.field private final track:I

.field private final synthetic zzazs:Lcom/google/android/gms/internal/ads/zzli;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzli;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzln;->track:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzln;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzln;->track:I

    return p0
.end method


# virtual methods
.method public final isReady()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzln;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzli;->zzas(I)Z

    move-result v0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzln;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzli;->zza(ILcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I

    move-result p1

    return p1
.end method

.method public final zzeb(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzln;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzli;->zzd(IJ)V

    return-void
.end method

.method public final zzhe()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzli;->zzhe()V

    return-void
.end method
