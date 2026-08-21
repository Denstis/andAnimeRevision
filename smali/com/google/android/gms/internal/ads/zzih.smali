###### Class com.google.android.gms.internal.ads.zzih (com.google.android.gms.internal.ads.zzih)
.class public Lcom/google/android/gms/internal/ads/zzih;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzih;->flags:I

    return-void
.end method

.method public final setFlags(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzih;->flags:I

    return-void
.end method

.method public final zzfu()Z
    .registers 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzih;->zzw(I)Z

    move-result v0

    return v0
.end method

.method public final zzfv()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzih;->zzw(I)Z

    move-result v0

    return v0
.end method

.method public final zzfw()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzih;->zzw(I)Z

    move-result v0

    return v0
.end method

.method public final zzv(I)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzih;->flags:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzih;->flags:I

    return-void
.end method

.method protected final zzw(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzih;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
