###### Class com.google.android.gms.internal.ads.zzdbj (com.google.android.gms.internal.ads.zzdbj)
.class public final Lcom/google/android/gms/internal/ads/zzdbj;
.super Lcom/google/android/gms/internal/ads/zzdbb;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbb<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private zzafv:I

.field private zzgpl:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbb;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdbg;->zzdr(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbj;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    goto :goto_3

    :cond_11
    return-object p0
.end method

.method public final synthetic zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzdr(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_39

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v2

    :goto_1d
    and-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_2f

    aput-object p1, v3, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzafv:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzafv:I

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;

    goto :goto_38

    :cond_2f
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_38
    :goto_38
    return-object p0

    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;

    return-object p0
.end method

.method public final synthetic zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbj;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbj;

    return-object p1
.end method

.method public final zzaov()Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbg<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    if-eqz v0, :cond_59

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    if-eqz v2, :cond_3b

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzdr(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_3b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdbg;->zzv(II)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_2a

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    :goto_2a
    move-object v3, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbt;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzafv:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_49

    :cond_3b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdbg;->zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    :goto_49
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgpa:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    return-object v0

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object v0

    return-object v0

    :cond_59
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpu:Lcom/google/android/gms/internal/ads/zzdbt;

    return-object v0
.end method

.method public final synthetic zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzgpl:[Ljava/lang/Object;

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbj;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    goto :goto_b

    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;

    :cond_1c
    return-object p0
.end method
