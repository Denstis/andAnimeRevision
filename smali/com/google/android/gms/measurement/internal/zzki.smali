###### Class com.google.android.gms.measurement.internal.zzki (com.google.android.gms.measurement.internal.zzki)
.class public final Lcom/google/android/gms/measurement/internal/zzki;
.super Lcom/google/android/gms/measurement/internal/zzkb;
.source ""


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze()I

    move-result v2

    if-ge v1, v2, :cond_1d

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zza()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzgn;[B)Lcom/google/android/gms/internal/measurement/zzgn;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lcom/google/android/gms/internal/measurement/zzgn;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeq;->zzb()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza([BLcom/google/android/gms/internal/measurement/zzeq;)Lcom/google/android/gms/internal/measurement/zzgn;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgn;->zza([B)Lcom/google/android/gms/internal/measurement/zzgn;

    move-result-object p0

    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    const-string p0, "Dynamic "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_13

    const-string p0, "Sequence "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    const-string p0, "Session-Scoped "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/util/BitSet;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_38

    const-wide/16 v5, 0x0

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v1, :cond_2e

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v5

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_2e

    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_2e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_38
    return-object v2
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    :goto_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_36

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    goto :goto_4d

    :cond_36
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_40

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    goto :goto_4d

    :cond_40
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4d

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    :cond_4d
    :goto_4d
    if-ltz v1, :cond_53

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    return-void

    :cond_53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbj$zzc;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zze()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzf;

    move-result-object v1

    const-string v2, "}\n"

    if-eqz v1, :cond_b0

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zza()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zze()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzf()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzh()I

    move-result v3

    if-lez v3, :cond_aa

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    :cond_a7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbj$zzd;

    move-result-object p3

    const-string v1, "number_filter"

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzd;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzd;)V
    .registers 6

    if-nez p4, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zza()Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzc()Z

    move-result p3

    if-eqz p3, :cond_34

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzd()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "match_as_float"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_34
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzf()Ljava/lang/String;

    move-result-object p3

    const-string v0, "comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzh()Ljava/lang/String;

    move-result-object p3

    const-string v0, "min_comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzj()Ljava/lang/String;

    move-result-object p3

    const-string p4, "max_comparison_value"

    invoke-static {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/lang/String;)V
    .registers 13

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzd()I

    move-result p2

    const/16 p4, 0xa

    const/4 v0, 0x4

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz p2, :cond_47

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzc()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_3f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_2c

    :cond_44
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzb()I

    move-result p2

    if-eqz p2, :cond_79

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zza()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_71

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_5e

    :cond_76
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzf()I

    move-result p2

    const/4 p4, 0x0

    const-string v3, "}\n"

    if-eqz p2, :cond_d6

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zze()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_a6

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zza()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_b6

    :cond_b5
    move-object v4, p4

    :goto_b6
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzc()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_ce

    :cond_cd
    move-object v4, p4

    :goto_ce
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_93

    :cond_d3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzh()I

    move-result p2

    if-eqz p2, :cond_147

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzg()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_ed
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    add-int/lit8 v4, p3, 0x1

    if-eqz p3, :cond_100

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_100
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza()Z

    move-result p3

    if-eqz p3, :cond_10f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_110

    :cond_10f
    move-object p3, p4

    :goto_110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzc()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_121
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v0, 0x1

    if-eqz v0, :cond_138

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_138
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v7

    goto :goto_121

    :cond_13d
    const-string p3, "]"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v4

    goto :goto_ed

    :cond_144
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_147
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static zza(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static zza(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_23

    div-int/lit8 v0, p1, 0x40

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzb()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzc()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzd()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzf()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzg()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic e_()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkc;->e_()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method final zza([B)J
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkm;->zzd()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkm;->zzi()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_20
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_16} :catch_1c
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_2d

    :catch_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_1a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbj$zzb;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzh()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzk()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzg()Lcom/google/android/gms/internal/measurement/zzbj$zzd;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "event_count_filter"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzd;)V

    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbj$zzc;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbj$zzc;)V

    goto :goto_66

    :cond_77
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbj$zze;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zze()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzf()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzh()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzd()Lcom/google/android/gms/internal/measurement/zzbj$zzc;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbj$zzc;)V

    const-string p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbr$zzf;)Ljava/lang/String;
    .registers 18

    if-nez p1, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzf;->zza()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "}\n"

    if-eqz v2, :cond_3de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    if-eqz v2, :cond_17

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "bundle {\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zza()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "protocol_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzq()Ljava/lang/String;

    move-result-object v5

    const-string v6, "platform"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzz()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzaa()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "gmp_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzab()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzac()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "uploading_gmp_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzbc()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzbd()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "dynamite_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_85
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzau()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzav()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "config_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzam()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gmp_app_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzbb()Ljava/lang/String;

    move-result-object v5

    const-string v6, "admob_app_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzy()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzar()Z

    move-result v5

    if-eqz v5, :cond_cf

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzas()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "app_version_major"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_cf
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzaq()Ljava/lang/String;

    move-result-object v5

    const-string v6, "firebase_instance_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzah()Z

    move-result v5

    if-eqz v5, :cond_eb

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzai()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "dev_cert_hash"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_eb
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzw()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_store"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzg()Z

    move-result v5

    if-eqz v5, :cond_107

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzh()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "upload_timestamp_millis"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_107
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzi()Z

    move-result v5

    if-eqz v5, :cond_11a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzj()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "start_timestamp_millis"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_11a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzk()Z

    move-result v5

    if-eqz v5, :cond_12d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzl()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "end_timestamp_millis"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_12d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzm()Z

    move-result v5

    if-eqz v5, :cond_140

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzn()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "previous_bundle_start_timestamp_millis"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_140
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzo()Z

    move-result v5

    if-eqz v5, :cond_153

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "previous_bundle_end_timestamp_millis"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_instance_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzad()Ljava/lang/String;

    move-result-object v5

    const-string v6, "resettable_device_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzay()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ds_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzae()Z

    move-result v5

    if-eqz v5, :cond_18a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzaf()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "limited_ad_tracking"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_18a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "os_version"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzs()Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_model"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_default_language"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzu()Z

    move-result v5

    if-eqz v5, :cond_1b8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "time_zone_offset_minutes"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1b8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzaj()Z

    move-result v5

    if-eqz v5, :cond_1cb

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzak()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "bundle_sequential_index"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1cb
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzan()Z

    move-result v5

    if-eqz v5, :cond_1de

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzao()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "service_upload"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1de
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzal()Ljava/lang/String;

    move-result-object v5

    const-string v6, "health_monitor"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzaw()Z

    move-result v5

    if-eqz v5, :cond_204

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzax()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_204

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzax()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_204
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzaz()Z

    move-result v5

    if-eqz v5, :cond_217

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzba()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "retry_counter"

    invoke-static {v0, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_217
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zze()Ljava/util/List;

    move-result-object v5

    const-string v6, "double_value"

    const-string v7, "int_value"

    const-string v8, "string_value"

    const-string v9, "name"

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v5, :cond_299

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22b
    :goto_22b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_299

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    if-eqz v12, :cond_22b

    invoke-static {v0, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v13, "user_property {\n"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zza()Z

    move-result v13

    if-eqz v13, :cond_250

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzb()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_251

    :cond_250
    move-object v13, v10

    :goto_251
    const-string v14, "set_timestamp_millis"

    invoke-static {v0, v11, v14, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v11, v9, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v11, v8, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzf()Z

    move-result v13

    if-eqz v13, :cond_27b

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzg()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_27c

    :cond_27b
    move-object v13, v10

    :goto_27c
    invoke-static {v0, v11, v7, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzh()Z

    move-result v13

    if-eqz v13, :cond_28e

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzi()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_28f

    :cond_28e
    move-object v12, v10

    :goto_28f
    invoke-static {v0, v11, v6, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22b

    :cond_299
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzap()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_2fc

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a7
    :goto_2a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2fc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbr$zza;

    if-eqz v13, :cond_2a7

    invoke-static {v0, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v14, "audience_membership {\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zza()Z

    move-result v14

    if-eqz v14, :cond_2d0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzb()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "audience_id"

    invoke-static {v0, v11, v15, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2d0
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzf()Z

    move-result v14

    if-eqz v14, :cond_2e3

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzg()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v15, "new_audience"

    invoke-static {v0, v11, v15, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2e3
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    move-result-object v14

    const-string v15, "current_data"

    invoke-static {v0, v11, v15, v14, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    move-result-object v13

    const-string v14, "previous_data"

    invoke-static {v0, v11, v14, v13, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a7

    :cond_2fc
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzc()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3d6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_306
    :goto_306
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    if-eqz v5, :cond_306

    invoke-static {v0, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v12, "event {\n"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v12

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v11, v9, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzd()Z

    move-result v12

    if-eqz v12, :cond_33e

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "timestamp_millis"

    invoke-static {v0, v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_33e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzf()Z

    move-result v12

    if-eqz v12, :cond_351

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzg()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "previous_timestamp_millis"

    invoke-static {v0, v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_351
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzh()Z

    move-result v12

    if-eqz v12, :cond_364

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzi()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "count"

    invoke-static {v0, v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_364
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzb()I

    move-result v12

    if-eqz v12, :cond_3ce

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zza()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3ce

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_374
    :goto_374
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3ce

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    if-eqz v12, :cond_374

    const/4 v13, 0x3

    invoke-static {v0, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    const-string v14, "param {\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v14

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v13, v9, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzc()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v13, v8, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzd()Z

    move-result v14

    if-eqz v14, :cond_3b0

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_3b1

    :cond_3b0
    move-object v14, v10

    :goto_3b1
    invoke-static {v0, v13, v7, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzf()Z

    move-result v14

    if-eqz v14, :cond_3c3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzg()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_3c4

    :cond_3c3
    move-object v12, v10

    :goto_3c4
    invoke-static {v0, v13, v6, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_374

    :cond_3ce
    invoke-static {v0, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_306

    :cond_3d6
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_3de
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_4b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    shl-long/2addr v4, p2

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_74
    move v8, p2

    move p2, p1

    move p1, v8

    if-ltz p1, :cond_8c

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_8c

    add-int/lit8 p2, p1, -0x1

    goto :goto_74

    :cond_8c
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;Ljava/lang/Object;)V
    .registers 5

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_18

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    return-void

    :cond_18
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_26

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    return-void

    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_34

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;Ljava/lang/Object;)V
    .registers 5

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_18

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    return-void

    :cond_18
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_26

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    return-void

    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_34

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e

    cmp-long v2, p3, v0

    if-lez v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzb()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzcj:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    return v0

    :cond_2a
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    return v0

    :cond_3e
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzb()V

    return-void
.end method

.method final zzb([B)[B
    .registers 7

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_13
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    :cond_1e
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_39

    :goto_38
    throw p1

    :goto_39
    goto :goto_38
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    return-void
.end method

.method final zzc([B)[B
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    return-void
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzf()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_8e

    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzam:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    :try_start_48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_76} :catch_77

    goto :goto_86

    :catch_77
    move-exception v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_86
    :goto_86
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8d

    return-object v1

    :cond_8d
    return-object v2

    :cond_8e
    :goto_8e
    return-object v1
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzki;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzac;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzj()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzah;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzeu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzft;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzew;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzff;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzw;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method
