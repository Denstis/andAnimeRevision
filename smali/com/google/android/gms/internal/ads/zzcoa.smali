###### Class com.google.android.gms.internal.ads.zzcoa (com.google.android.gms.internal.ads.zzcoa)
.class public final Lcom/google/android/gms/internal/ads/zzcoa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcnx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbml:Lcom/google/android/gms/internal/ads/zzatr;

.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzgee:Lcom/google/android/gms/internal/ads/zzcru;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcru<",
            "Lcom/google/android/gms/internal/ads/zzcrx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpd;Lcom/google/android/gms/internal/ads/zzcwe;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcpd<",
            "Lcom/google/android/gms/internal/ads/zzcrx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzatr;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgee:Lcom/google/android/gms/internal/ads/zzcru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzlk:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzbml:Lcom/google/android/gms/internal/ads/zzatr;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzcrx;)Lcom/google/android/gms/internal/ads/zzcnx;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoa;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcwe;->zzbll:Lcom/google/android/gms/internal/ads/zzua;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzua;->zzccn:[Lcom/google/android/gms/internal/ads/zzua;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzua;->zzabd:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzua;->zzcco:Z

    move-object v10, v1

    move v11, v6

    goto :goto_35

    :cond_12
    array-length v6, v1

    move-object v10, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_18
    if-ge v7, v6, :cond_35

    aget-object v12, v1, v7

    iget-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzua;->zzcco:Z

    if-nez v13, :cond_26

    if-nez v8, :cond_26

    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzua;->zzabd:Ljava/lang/String;

    move-object v10, v8

    const/4 v8, 0x1

    :cond_26
    iget-boolean v12, v12, Lcom/google/android/gms/internal/ads/zzua;->zzcco:Z

    if-eqz v12, :cond_2e

    if-nez v9, :cond_2e

    const/4 v9, 0x1

    const/4 v11, 0x1

    :cond_2e
    if-eqz v8, :cond_32

    if-nez v9, :cond_35

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_35
    :goto_35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoa;->zzlk:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_58

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcoa;->zzbml:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzatr;->zzuh()Lcom/google/android/gms/internal/ads/zzaui;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaui;->zzvk()Ljava/lang/String;

    move-result-object v8

    move v9, v1

    move-object v1, v8

    move v8, v7

    move v7, v2

    goto :goto_5c

    :cond_58
    move-object v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzua;->zzccn:[Lcom/google/android/gms/internal/ads/zzua;

    if-eqz v12, :cond_c4

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_68
    const-string v4, "|"

    if-ge v14, v13, :cond_b1

    aget-object v5, v12, v14

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzua;->zzcco:Z

    if-eqz v6, :cond_75

    const/4 v6, 0x0

    const/4 v15, 0x1

    goto :goto_ae

    :cond_75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_7e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzua;->width:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_8e

    const/4 v4, 0x0

    cmpl-float v6, v7, v4

    if-eqz v6, :cond_8e

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzua;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_90

    :cond_8e
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzua;->width:I

    :goto_90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzua;->height:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_a8

    const/4 v6, 0x0

    cmpl-float v4, v7, v6

    if-eqz v4, :cond_a9

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzua;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_ab

    :cond_a8
    const/4 v6, 0x0

    :cond_a9
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzua;->height:I

    :goto_ab
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_ae
    add-int/lit8 v14, v14, 0x1

    goto :goto_68

    :cond_b1
    if-eqz v15, :cond_c4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_be

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bf

    :cond_be
    const/4 v5, 0x0

    :goto_bf
    const-string v4, "320x50"

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Lcom/google/android/gms/internal/ads/zzcnx;

    move-object v2, v12

    move-object v4, v10

    move v5, v11

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcnx;-><init>(Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;)V

    return-object v12
.end method

.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcnx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgee:Lcom/google/android/gms/internal/ads/zzcru;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcru;->zzalv()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcnz;-><init>(Lcom/google/android/gms/internal/ads/zzcoa;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcnz (com.google.android.gms.internal.ads.zzcnz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcnz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# instance fields
.field private final zzged:Lcom/google/android/gms/internal/ads/zzcoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcoa;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzged:Lcom/google/android/gms/internal/ads/zzcoa;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzged:Lcom/google/android/gms/internal/ads/zzcoa;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zza(Lcom/google/android/gms/internal/ads/zzcrx;)Lcom/google/android/gms/internal/ads/zzcnx;

    move-result-object p1

    return-object p1
.end method
