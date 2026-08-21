###### Class com.google.android.gms.internal.measurement.zzel (com.google.android.gms.internal.measurement.zzel)
.class final Lcom/google/android/gms/internal/measurement/zzel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzeg;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzeg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzff;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzeg;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzeg;->zzc:Lcom/google/android/gms/internal/measurement/zzel;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzeg;)Lcom/google/android/gms/internal/measurement/zzel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg;->zzc:Lcom/google/android/gms/internal/measurement/zzel;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzel;-><init>(Lcom/google/android/gms/internal/measurement/zzeg;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzim;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzim;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzek;->zza:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_ac

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzf()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzt()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzr()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4e
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgz;->zza()Lcom/google/android/gms/internal/measurement/zzgz;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzhd;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzg()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zze()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_7a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzi()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_8c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzp()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzd()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_9e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzn()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object p1

    return-object p1

    :pswitch_a3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzk()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_9e
        :pswitch_95
        :pswitch_8c
        :pswitch_83
        :pswitch_7a
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_25
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method private final zza(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfv;

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzn()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(Lcom/google/android/gms/internal/measurement/zzdu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    :cond_20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, p2, :cond_10

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_2d
    if-eqz p2, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzm()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzl()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_44

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_2d

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
.end method

.method private static zzb(I)V
    .registers 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzg()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzhd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzeg;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzeg;->zzb:I

    if-ge v2, v3, :cond_36

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzeg;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/measurement/zzeg;->zza:I

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzhe;Lcom/google/android/gms/internal/measurement/zzeq;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzeg;->zza(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzeg;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzeg;->zza:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd(I)V

    return-object v1

    :cond_36
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzc(I)V
    .registers 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzg()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzhd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I

    :try_start_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzhe;Lcom/google/android/gms/internal/measurement/zzeq;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_24

    if-ne p1, p2, :cond_1f

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I

    return-object v1

    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzg()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I

    throw p1
.end method

.method private final zzd(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    if-eqz v0, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    :goto_12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I

    if-ne v0, v1, :cond_1b

    goto :goto_1e

    :cond_1b
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_1e
    :goto_1e
    const v0, 0x7fffffff

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzhd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzeo;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzeo;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_38

    if-ne p1, v1, :cond_33

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzel;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzeo;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_21

    return-void

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzeo;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_4a

    return-void

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_38

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8a

    if-ne v0, v1, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzel;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6f

    return-void

    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_a0

    return-void

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_8a

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    if-eqz v1, :cond_1b

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v1

    if-eq v1, v0, :cond_7

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzgf;Lcom/google/android/gms/internal/measurement/zzeq;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzgf<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzgf;->zzb:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzgf;->zzd:Ljava/lang/Object;

    :goto_14
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zza()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5b

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_64

    if-nez v5, :cond_5b

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_46

    if-eq v4, v0, :cond_39

    :try_start_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzc()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_14

    :cond_33
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_39
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzgf;->zzc:Lcom/google/android/gms/internal/measurement/zzim;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzgf;->zzd:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/measurement/zzel;->zza(Lcom/google/android/gms/internal/measurement/zzim;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_14

    :cond_46
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzgf;->zza:Lcom/google/android/gms/internal/measurement/zzim;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzel;->zza(Lcom/google/android/gms/internal/measurement/zzim;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4d
    .catch Lcom/google/android/gms/internal/measurement/zzfn; {:try_start_2c .. :try_end_4d} :catch_4e
    .catchall {:try_start_2c .. :try_end_4d} :catchall_64

    goto :goto_14

    :catch_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzc()Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_14

    :cond_55
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_64

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd(I)V

    return-void

    :catchall_64
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd(I)V

    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzhd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfc;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_35

    if-ne p1, v1, :cond_30

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int v3, v1, p1

    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_46

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_88

    if-ne v0, v1, :cond_83

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_76

    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_60

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_98

    return-void
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzeq;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_26

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    if-eqz v1, :cond_1b

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v1

    if-eq v1, v0, :cond_7

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
.end method

.method public final zzc(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzc()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzc:I

    if-ne v0, v1, :cond_f

    goto :goto_16

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb(I)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()D
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zze()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zze()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zze()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zze()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zze()F
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzc()F

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzf()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_38

    if-ne p1, v1, :cond_33

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzel;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzg()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_21

    return-void

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_4a

    return-void

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_38

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8a

    if-ne v0, v1, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzel;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6f

    return-void

    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_a0

    return-void

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_8a

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzg()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_35

    if-ne p1, v1, :cond_30

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int v3, v1, p1

    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_46

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_88

    if-ne v0, v1, :cond_83

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_76

    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_60

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_98

    return-void
.end method

.method public final zzh()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzds;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzds;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzi()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzi()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzi()J
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzj()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzdu;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzel;->zzn()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method public final zzk()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzi()Z

    move-result v0

    return v0
.end method

.method public final zzl()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzm()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzn()Lcom/google/android/gms/internal/measurement/zzdu;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzl()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v0

    return-object v0
.end method

.method public final zzn(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_35

    if-ne p1, v1, :cond_30

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int v3, v1, p1

    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_46

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_88

    if-ne v0, v1, :cond_83

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_76

    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_60

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzel;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_98

    return-void
.end method

.method public final zzo()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    return v0
.end method

.method public final zzo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_38

    if-ne p1, v1, :cond_33

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzel;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_21

    return-void

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_4a

    return-void

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_38

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8a

    if-ne v0, v1, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzel;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6f

    return-void

    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_a0

    return-void

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_8a

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzp()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzn()I

    move-result v0

    return v0
.end method

.method public final zzp(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzq()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzo()I

    move-result v0

    return v0
.end method

.method public final zzq(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzr()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzel;->zzd(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzb:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzd:I

    return-void
.end method

.method public final zzr()J
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzq()I

    move-result v0

    return v0
.end method

.method public final zzt()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzel;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->zzr()J

    move-result-wide v0

    return-wide v0
.end method
