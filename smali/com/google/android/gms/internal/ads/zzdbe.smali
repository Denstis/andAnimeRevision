###### Class com.google.android.gms.internal.ads.zzdbe (com.google.android.gms.internal.ads.zzdbe)
.class final Lcom/google/android/gms/internal/ads/zzdbe;
.super Lcom/google/android/gms/internal/ads/zzdbd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbd<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient length:I

.field private final transient offset:I

.field private final synthetic zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbd;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbe;->zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbd;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdbe;->offset:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdbe;->length:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->length:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzr(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbe;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->length:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbe;->zzt(II)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p1

    return-object p1
.end method

.method final zzaok()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->zzaok()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaol()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->zzaol()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbe;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzaom()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->zzaol()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbe;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbe;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzaoo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzt(II)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzf(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbe;->zzgpc:Lcom/google/android/gms/internal/ads/zzdbd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbe;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbd;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbd;

    return-object p1
.end method
