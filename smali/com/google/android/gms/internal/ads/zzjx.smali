###### Class com.google.android.gms.internal.ads.zzjx (com.google.android.gms.internal.ads.zzjx)
.class final Lcom/google/android/gms/internal/ads/zzjx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjv;


# instance fields
.field private final zzaut:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzavb:I

.field private final zzavc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzju;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzavb:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzavc:I

    return-void
.end method


# virtual methods
.method public final zzgj()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzavc:I

    return v0
.end method

.method public final zzgk()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzavb:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v0

    :cond_a
    return v0
.end method

.method public final zzgl()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzavb:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
