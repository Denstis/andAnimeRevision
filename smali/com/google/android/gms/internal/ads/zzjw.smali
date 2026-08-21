###### Class com.google.android.gms.internal.ads.zzjw (com.google.android.gms.internal.ads.zzjw)
.class final Lcom/google/android/gms/internal/ads/zzjw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public index:I

.field public final length:I

.field public zzauu:I

.field public zzauv:J

.field private final zzauw:Z

.field private final zzaux:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzauy:Lcom/google/android/gms/internal/ads/zzoc;

.field private zzauz:I

.field private zzava:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzoc;Lcom/google/android/gms/internal/ads/zzoc;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauy:Lcom/google/android/gms/internal/ads/zzoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzaux:Lcom/google/android/gms/internal/ads/zzoc;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauw:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjw;->length:I

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzava:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjw;->index:I

    return-void
.end method


# virtual methods
.method public final zzgm()Z
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->index:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjw;->length:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauw:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzaux:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzis()J

    move-result-wide v2

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzaux:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauv:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->index:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauz:I

    if-ne v0, v2, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauy:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauu:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauy:Lcom/google/android/gms/internal/ads/zzoc;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzava:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzava:I

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauy:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    :goto_43
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzauz:I

    :cond_45
    return v1
.end method
