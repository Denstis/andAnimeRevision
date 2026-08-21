###### Class com.google.android.gms.internal.ads.zzdqg (com.google.android.gms.internal.ads.zzdqg)
.class final Lcom/google/android/gms/internal/ads/zzdqg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzduk;


# instance fields
.field private final zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdqf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdqf;)Lcom/google/android/gms/internal/ads/zzdqg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqg;-><init>(Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-object v0
.end method


# virtual methods
.method public final zza(IF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(IF)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdrx;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/gms/internal/ads/zzdrx<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdry;->zza(Lcom/google/android/gms/internal/ads/zzdrx;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzdry;->zza(Lcom/google/android/gms/internal/ads/zzdqf;Lcom/google/android/gms/internal/ads/zzdrx;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_39
    return-void
.end method

.method public final zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V

    return-void
.end method

.method public final zza(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzdrn;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrn;

    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrn;->zzgq(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(ILjava/lang/String;)V

    goto :goto_25

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    return-void

    :cond_29
    :goto_29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3d
    return-void
.end method

.method public final zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdsv;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzdqg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final zza(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzge(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfz(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaa(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzaa(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaa(II)V

    return-void
.end method

.method public final zzab(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzab(II)V

    return-void
.end method

.method public final zzac(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzac(II)V

    return-void
.end method

.method public final zzad(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzad(II)V

    return-void
.end method

.method public final zzak(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzad(II)V

    return-void
.end method

.method public final zzal(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaa(II)V

    return-void
.end method

.method public final zzayy()I
    .registers 2

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlg:I

    return v0
.end method

.method public final zzb(ID)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(ID)V

    return-void
.end method

.method public final zzb(ILjava/lang/Object;)V
    .registers 4

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(ILcom/google/android/gms/internal/ads/zzdpm;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(ILcom/google/android/gms/internal/ads/zzdsg;)V

    return-void
.end method

.method public final zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdsg;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    return-void
.end method

.method public final zzb(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdpm;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdsv;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzdqg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final zzb(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgh(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgc(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzad(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfd(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfa(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzd(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfa(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zze(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfg(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfc(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzi(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzf(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzf(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzg(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IJ)V

    return-void
.end method

.method public final zzg(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzg(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IZ)V

    return-void
.end method

.method public final zzgm(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    return-void
.end method

.method public final zzgn(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    return-void
.end method

.method public final zzh(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(IJ)V

    return-void
.end method

.method public final zzh(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgj(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfz(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaa(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzi(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzi(IJ)V

    return-void
.end method

.method public final zzi(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzbi(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzbh(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzab(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzk(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgi(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgc(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzad(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfh(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfc(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzi(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzm(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgg(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgb(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzac(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzff(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfb(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final zzo(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IJ)V

    return-void
.end method

.method public final zzp(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhgh:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzi(IJ)V

    return-void
.end method
