###### Class com.google.android.gms.internal.ads.zzdqm (com.google.android.gms.internal.ads.zzdqm)
.class final Lcom/google/android/gms/internal/ads/zzdqm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/android/gms/internal/ads/zzdqo<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzhhs:Lcom/google/android/gms/internal/ads/zzdqm;


# instance fields
.field final zzhhp:Lcom/google/android/gms/internal/ads/zzdta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdta<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzhhq:Z

.field private zzhhr:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqm;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhs:Lcom/google/android/gms/internal/ads/zzdqm;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzgy(I)Lcom/google/android/gms/internal/ads/zzdta;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdta;->zzgy(I)Lcom/google/android/gms/internal/ads/zzdta;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqm;->zzaxj()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdue;ILjava/lang/Object;)I
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdue;->zzhqa:Lcom/google/android/gms/internal/ads/zzdue;

    if-ne p0, v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzn(Lcom/google/android/gms/internal/ads/zzdsg;)Z

    shl-int/lit8 p1, p1, 0x1

    :cond_10
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Lcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdqo;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdta;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdrh;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrh;->zzbak()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdqf;Lcom/google/android/gms/internal/ads/zzdue;ILjava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdue;->zzhqa:Lcom/google/android/gms/internal/ads/zzdue;

    if-ne p1, v0, :cond_15

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdqx;->zzn(Lcom/google/android/gms/internal/ads/zzdsg;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzb(Lcom/google/android/gms/internal/ads/zzdqf;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    return-void

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdue;->zzbch()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzz(II)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdqp;->zzhgt:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_f2

    goto/16 :goto_f1

    :pswitch_29
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzdra;

    if-eqz p1, :cond_37

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdra;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdra;->zzab()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfz(I)V

    return-void

    :cond_37
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfz(I)V

    goto/16 :goto_f1

    :pswitch_42
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfb(J)V

    return-void

    :pswitch_4c
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgb(I)V

    return-void

    :pswitch_56
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfc(J)V

    return-void

    :pswitch_60
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgc(I)V

    return-void

    :pswitch_6a
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    return-void

    :pswitch_74
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz p1, :cond_7e

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-void

    :cond_7e
    check-cast p3, [B

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk([BII)V

    return-void

    :pswitch_86
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz p1, :cond_90

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-void

    :cond_90
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzhi(Ljava/lang/String;)V

    return-void

    :pswitch_96
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V

    return-void

    :pswitch_9c
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzb(Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-void

    :pswitch_a2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzbh(Z)V

    return-void

    :pswitch_ac
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgc(I)V

    return-void

    :pswitch_b6
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfc(J)V

    return-void

    :pswitch_c0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfz(I)V

    return-void

    :pswitch_ca
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfa(J)V

    return-void

    :pswitch_d4
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfa(J)V

    return-void

    :pswitch_de
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzf(F)V

    return-void

    :pswitch_e8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(D)V

    :goto_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_de
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b6
        :pswitch_ac
        :pswitch_a2
        :pswitch_9c
        :pswitch_96
        :pswitch_86
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_29
    .end packed-switch
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazj()Z

    move-result v0

    if-eqz v0, :cond_33

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazh()Lcom/google/android/gms/internal/ads/zzdue;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Object;)V

    goto :goto_19

    :cond_29
    move-object p2, v0

    goto :goto_3a

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazh()Lcom/google/android/gms/internal/ads/zzdue;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Object;)V

    :goto_3a
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzdrh;

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdta;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqx;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqp;->zzhhv:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdue;->zzbcg()Lcom/google/android/gms/internal/ads/zzduh;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_50

    goto :goto_43

    :pswitch_15
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdsg;

    if-nez p0, :cond_26

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdrh;

    if-eqz p0, :cond_43

    goto :goto_26

    :pswitch_1e
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_26

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdra;

    if-eqz p0, :cond_43

    :cond_26
    :goto_26
    const/4 v1, 0x1

    goto :goto_43

    :pswitch_28
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdpm;

    if-nez p0, :cond_26

    instance-of p0, p1, [B

    if-eqz p0, :cond_43

    goto :goto_26

    :pswitch_31
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_42

    :pswitch_34
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_42

    :pswitch_37
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_42

    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_42

    :pswitch_3d
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_42

    :pswitch_40
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_42
    move v1, v0

    :cond_43
    :goto_43
    if-eqz v1, :cond_46

    return-void

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4f

    :goto_4e
    throw p0

    :goto_4f
    goto :goto_4e

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_28
        :pswitch_1e
        :pswitch_15
    .end packed-switch
.end method

.method private static zzal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdsl;->zzbbb()Lcom/google/android/gms/internal/ads/zzdsl;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_1a

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1a
    return-object p0
.end method

.method public static zzazc()Lcom/google/android/gms/internal/ads/zzdqm;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zzdqo<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/ads/zzdqm<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhs:Lcom/google/android/gms/internal/ads/zzdqm;

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqo<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazh()Lcom/google/android/gms/internal/ads/zzdue;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzab()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazj()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazk()Z

    move-result p0

    const/4 v2, 0x0

    check-cast p1, Ljava/util/List;

    if-eqz p0, :cond_36

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Lcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    :cond_2b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgl(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdue;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3a

    :cond_4a
    return v2

    :cond_4b
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdue;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqp;->zzhgt:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdra;

    if-eqz p0, :cond_22

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdra;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdra;->zzab()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgj(I)I

    move-result p0

    return p0

    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgj(I)I

    move-result p0

    return p0

    :pswitch_2d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzff(J)I

    move-result p0

    return p0

    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgg(I)I

    move-result p0

    return p0

    :pswitch_43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfh(J)I

    move-result p0

    return p0

    :pswitch_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgi(I)I

    move-result p0

    return p0

    :pswitch_59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p0

    return p0

    :pswitch_64
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz p0, :cond_6f

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzda(Lcom/google/android/gms/internal/ads/zzdpm;)I

    move-result p0

    return p0

    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzab([B)I

    move-result p0

    return p0

    :pswitch_76
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz p0, :cond_81

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzda(Lcom/google/android/gms/internal/ads/zzdpm;)I

    move-result p0

    return p0

    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzhj(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_88
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzdrh;

    if-eqz p0, :cond_93

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(Lcom/google/android/gms/internal/ads/zzdrl;)I

    move-result p0

    return p0

    :cond_93
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk(Lcom/google/android/gms/internal/ads/zzdsg;)I

    move-result p0

    return p0

    :pswitch_9a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzl(Lcom/google/android/gms/internal/ads/zzdsg;)I

    move-result p0

    return p0

    :pswitch_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzbi(Z)I

    move-result p0

    return p0

    :pswitch_ac
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgh(I)I

    move-result p0

    return p0

    :pswitch_b7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfg(J)I

    move-result p0

    return p0

    :pswitch_c2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzge(I)I

    move-result p0

    return p0

    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result p0

    return p0

    :pswitch_d8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfd(J)I

    move-result p0

    return p0

    :pswitch_e3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(F)I

    move-result p0

    return p0

    :pswitch_ee
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method private static zzb(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazi()Lcom/google/android/gms/internal/ads/zzduh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzduh;->zzhqu:Lcom/google/android/gms/internal/ads/zzduh;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4d

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazj()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_33

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdsi;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    :cond_33
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdsg;

    if-eqz v0, :cond_40

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdsi;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4d

    return v1

    :cond_40
    instance-of p0, p0, Lcom/google/android/gms/internal/ads/zzdrh;

    if-eqz p0, :cond_45

    return v3

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    return v3
.end method

.method private final zzc(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzdrh;

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrh;->zzbak()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    :cond_12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazj()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdqo;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zzal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdta;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_44
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazi()Lcom/google/android/gms/internal/ads/zzduh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzduh;->zzhqu:Lcom/google/android/gms/internal/ads/zzduh;

    if-ne v1, v2, :cond_7f

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdqo;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zzal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdta;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5c
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzdsl;

    if-eqz v2, :cond_69

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsl;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqo;->zza(Lcom/google/android/gms/internal/ads/zzdsl;Lcom/google/android/gms/internal/ads/zzdsl;)Lcom/google/android/gms/internal/ads/zzdsl;

    move-result-object p1

    goto :goto_79

    :cond_69
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazx()Lcom/google/android/gms/internal/ads/zzdsf;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqo;->zza(Lcom/google/android/gms/internal/ads/zzdsf;Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsf;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdsf;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    :goto_79
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdta;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zzal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdta;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzd(Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazi()Lcom/google/android/gms/internal/ads/zzduh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzduh;->zzhqu:Lcom/google/android/gms/internal/ads/zzduh;

    if-ne v2, v3, :cond_3a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazj()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzazk()Z

    move-result v2

    if-nez v2, :cond_3a

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdqo;->zzab()I

    move-result p0

    if-eqz v0, :cond_33

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(ILcom/google/android/gms/internal/ads/zzdrl;)I

    move-result p0

    return p0

    :cond_33
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzd(ILcom/google/android/gms/internal/ads/zzdsg;)I

    move-result p0

    return p0

    :cond_3a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqm;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbo()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzgz(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbp()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    return-object v0
.end method

.method final descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbq()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrm;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbq()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdqm;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdta;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdta;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isImmutable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhq:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbo()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzgz(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbp()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhr:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdta;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrm;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdta;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdqm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqm<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbo()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzgz(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zzc(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbp()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zzc(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final zzaxj()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhq:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzaxj()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhq:Z

    return-void
.end method

.method public final zzazd()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbo()I

    move-result v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzgz(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zzd(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbp()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zzd(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method
