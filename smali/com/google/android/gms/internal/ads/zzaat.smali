###### Class com.google.android.gms.internal.ads.zzaat (com.google.android.gms.internal.ads.zzaat)
.class public final Lcom/google/android/gms/internal/ads/zzaat;
.super Lcom/google/android/gms/internal/ads/zzabd;
.source ""


# static fields
.field private static final zzcvn:I

.field private static final zzcvo:I

.field private static final zzcvp:I

.field private static final zzcvq:I


# instance fields
.field private final backgroundColor:I

.field private final textColor:I

.field private final textSize:I

.field private final zzcvr:Ljava/lang/String;

.field private final zzcvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcvt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzabi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcvu:I

.field private final zzcvv:I

.field private final zzcvw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvn:I

    const/16 v0, 0xcc

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvo:I

    sput v0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvp:I

    sget v0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvn:I

    sput v0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvq:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvt:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvr:Ljava/lang/String;

    if-eqz p2, :cond_2f

    const/4 p1, 0x0

    :goto_16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2f

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvt:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_2f
    if-eqz p3, :cond_36

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_38

    :cond_36
    sget p1, Lcom/google/android/gms/internal/ads/zzaat;->zzcvp:I

    :goto_38
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->backgroundColor:I

    if-eqz p4, :cond_41

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_43

    :cond_41
    sget p1, Lcom/google/android/gms/internal/ads/zzaat;->zzcvq:I

    :goto_43
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->textColor:I

    if-eqz p5, :cond_4c

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4e

    :cond_4c
    const/16 p1, 0xc

    :goto_4e
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->textSize:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvu:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvv:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvw:Z

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->backgroundColor:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvr:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->textColor:I

    return v0
.end method

.method public final getTextSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->textSize:I

    return v0
.end method

.method public final zzqe()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzabi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvt:Ljava/util/List;

    return-object v0
.end method

.method public final zzqf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvs:Ljava/util/List;

    return-object v0
.end method

.method public final zzqg()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvu:I

    return v0
.end method

.method public final zzqh()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzcvv:I

    return v0
.end method
