###### Class com.google.android.gms.internal.ads.zzdsm (com.google.android.gms.internal.ads.zzdsm)
.class final Lcom/google/android/gms/internal/ads/zzdsm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdsv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

.field private final zzhnf:Z

.field private final zzhno:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzhnp:Lcom/google/android/gms/internal/ads/zzdql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdsg;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzdql;->zzm(Lcom/google/android/gms/internal/ads/zzdsg;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnf:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdsg;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdsm<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsm;-><init>(Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdsg;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnf:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnf:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final newInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazy()Lcom/google/android/gms/internal/ads/zzdsf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdsf;->zzazq()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;Lcom/google/android/gms/internal/ads/zzdqj;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzdsw;",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzaz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzaj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v3

    :cond_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzays()I

    move-result v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_8e

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_19

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_19
    :try_start_19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->getTag()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3e

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdsg;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdsw;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdqm;)V

    goto :goto_82

    :cond_34
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;)Z

    move-result v4

    goto :goto_83

    :cond_39
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayt()Z

    move-result v4

    goto :goto_83

    :cond_3e
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    :cond_41
    :goto_41
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzays()I

    move-result v8

    if-eq v8, v5, :cond_6f

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->getTag()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5a

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayd()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdsg;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_41

    :cond_5a
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_69

    if-eqz v6, :cond_64

    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdsw;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdqm;)V

    goto :goto_41

    :cond_64
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayc()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v7

    goto :goto_41

    :cond_69
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayt()Z

    move-result v8

    if-nez v8, :cond_41

    :cond_6f
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->getTag()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_89

    if-eqz v7, :cond_82

    if-eqz v6, :cond_7f

    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdpm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdqm;)V

    goto :goto_82

    :cond_7f
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdpm;)V
    :try_end_82
    .catchall {:try_start_19 .. :try_end_82} :catchall_8e

    :cond_82
    :goto_82
    const/4 v4, 0x1

    :goto_83
    if-nez v4, :cond_c

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_89
    :try_start_89
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbag()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p2

    throw p2
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    :goto_93
    throw p2

    :goto_94
    goto :goto_93
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzduk;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazi()Lcom/google/android/gms/internal/ads/zzduh;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzduh;->zzhqu:Lcom/google/android/gms/internal/ads/zzduh;

    if-ne v3, v4, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazj()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazk()Z

    move-result v3

    if-nez v3, :cond_4b

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzdrj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqo;->zzab()I

    move-result v2

    if-eqz v3, :cond_43

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrj;->zzbam()Lcom/google/android/gms/internal/ads/zzdrh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrl;->zzaxg()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    goto :goto_47

    :cond_43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_47
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;)V

    goto :goto_a

    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzdpl;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v2

    if-ne v1, v2, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbby()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzazz()Lcom/google/android/gms/internal/ads/zzdqm;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_18
    if-ge p3, p4, :cond_a4

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v2, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_51

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_4c

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhga:Lcom/google/android/gms/internal/ads/zzdqj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    ushr-int/lit8 v5, v2, 0x3

    invoke-virtual {p3, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdsg;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zze;

    if-nez v0, :cond_43

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p3

    goto :goto_18

    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_4c
    invoke-static {v2, p2, v4, p4, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p3

    goto :goto_18

    :cond_51
    const/4 p3, 0x0

    move-object v2, p1

    :goto_53
    if-ge v4, p4, :cond_99

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v5, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_7b

    const/4 v8, 0x3

    if-eq v6, v8, :cond_65

    goto :goto_90

    :cond_65
    if-nez v0, :cond_72

    if-ne v7, v3, :cond_90

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zze([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget-object v2, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpm;

    goto :goto_53

    :cond_72
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_7b
    if-nez v7, :cond_90

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    iget-object v5, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhga:Lcom/google/android/gms/internal/ads/zzdqj;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-virtual {v0, v5, v6, p3}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdsg;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zze;

    goto :goto_53

    :cond_90
    :goto_90
    const/16 v6, 0xc

    if-eq v5, v6, :cond_99

    invoke-static {v5, p2, v4, p4, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    goto :goto_53

    :cond_99
    if-eqz v2, :cond_a1

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    :cond_a1
    move p3, v4

    goto/16 :goto_18

    :cond_a4
    if-ne p3, p4, :cond_a7

    return-void

    :cond_a7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbai()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    goto :goto_ad

    :goto_ac
    throw p1

    :goto_ad
    goto :goto_ac
.end method

.method public final zzak(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzak(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzak(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzau(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzba(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnf:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zzazd()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final zzaw(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnf:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(Lcom/google/android/gms/internal/ads/zzdql;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
