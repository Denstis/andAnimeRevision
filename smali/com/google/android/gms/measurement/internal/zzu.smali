###### Class com.google.android.gms.measurement.internal.zzu (com.google.android.gms.measurement.internal.zzu)
.class abstract Lcom/google/android/gms/measurement/internal/zzu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field zza:Ljava/lang/String;

.field zzb:I

.field zzc:Ljava/lang/Boolean;

.field zzd:Ljava/lang/Boolean;

.field zze:Ljava/lang/Long;

.field zzf:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:I

    return-void
.end method

.method static zza(DLcom/google/android/gms/internal/measurement/zzbj$zzd;)Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzbj$zzd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(JLcom/google/android/gms/internal/measurement/zzbj$zzd;)Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzbj$zzd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzd;)Ljava/lang/Boolean;
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzbj$zzd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    return-object v1
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzew;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzew;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-ne p1, v1, :cond_11

    if-eqz p4, :cond_10

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    :cond_10
    return-object v0

    :cond_11
    if-nez p3, :cond_14

    return-object v0

    :cond_14
    if-nez p2, :cond_21

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-ne p1, v1, :cond_1b

    goto :goto_21

    :cond_1b
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_6e

    return-object v0

    :pswitch_2d
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_31

    :pswitch_3b
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_31

    :pswitch_40
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_31

    :pswitch_45
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_31

    :pswitch_4a
    if-eqz p2, :cond_4e

    const/4 p1, 0x0

    goto :goto_50

    :cond_4e
    const/16 p1, 0x42

    :goto_50
    :try_start_50
    invoke-static {p5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_60
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_50 .. :try_end_60} :catch_61

    return-object p0

    :catch_61
    nop

    if-eqz p6, :cond_6d

    invoke-virtual {p6}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p0

    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6d
    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_2d
    .end packed-switch
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzf;Lcom/google/android/gms/measurement/internal/zzew;)Ljava/lang/Boolean;
    .registers 12
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zza()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-ne v1, v2, :cond_17

    goto/16 :goto_96

    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-ne v1, v2, :cond_26

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzh()I

    move-result v1

    if-nez v1, :cond_2d

    return-object v0

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzc()Z

    move-result v1

    if-nez v1, :cond_2d

    return-object v0

    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzf()Z

    move-result v4

    if-nez v4, :cond_4b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-eq v3, v1, :cond_4b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-ne v3, v1, :cond_40

    goto :goto_4b

    :cond_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzd()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_4f
    move-object v5, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzh()I

    move-result v1

    if-nez v1, :cond_58

    move-object v6, v0

    goto :goto_88

    :cond_58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzf;->zzg()Ljava/util/List;

    move-result-object p1

    if-eqz v4, :cond_60

    :goto_5e
    move-object v6, p1

    goto :goto_88

    :cond_60
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_83
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_5e

    :goto_88
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    if-ne v3, p1, :cond_8e

    move-object v7, v5

    goto :goto_8f

    :cond_8e
    move-object v7, v0

    :goto_8f
    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_96
    :goto_96
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzbj$zzd;D)Ljava/lang/Boolean;
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_110

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    if-ne v0, v2, :cond_14

    goto/16 :goto_110

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    if-ne v0, v2, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzi()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_28
    return-object v1

    :cond_29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zze()Z

    move-result v0

    if-nez v0, :cond_30

    return-object v1

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    if-ne v2, v3, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_66

    :cond_51
    :try_start_51
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzj()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_63} :catch_66

    move-object p1, v2

    move-object v2, v1

    goto :goto_7d

    :catch_66
    :cond_66
    :goto_66
    return-object v1

    :cond_67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    return-object v1

    :cond_72
    :try_start_72
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zzd;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_7b} :catch_110

    move-object p1, v1

    move-object v3, p1

    :goto_7d
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    if-ne v0, v4, :cond_85

    if-eqz p1, :cond_84

    goto :goto_87

    :cond_84
    return-object v1

    :cond_85
    if-eqz v2, :cond_110

    :goto_87
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzq;->zzb:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_104

    const/4 v7, 0x2

    if-eq v0, v7, :cond_f8

    const/4 v8, 0x3

    if-eq v0, v8, :cond_b0

    const/4 p2, 0x4

    if-eq v0, p2, :cond_9e

    goto :goto_110

    :cond_9e
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v4, :cond_ab

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_ab

    const/4 v5, 0x1

    :cond_ab
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b0
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_ec

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v7}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_e7

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_e7

    const/4 v5, 0x1

    :cond_e7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_ec
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f3

    const/4 v5, 0x1

    :cond_f3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f8
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_ff

    const/4 v5, 0x1

    :cond_ff
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_104
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_10b

    const/4 v5, 0x1

    :cond_10b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_110
    :cond_110
    :goto_110
    return-object v1
.end method


# virtual methods
.method abstract zza()I
.end method

.method abstract zzb()Z
.end method
