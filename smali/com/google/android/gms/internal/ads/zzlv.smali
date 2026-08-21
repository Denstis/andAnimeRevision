###### Class com.google.android.gms.internal.ads.zzlv (com.google.android.gms.internal.ads.zzlv)
.class public final Lcom/google/android/gms/internal/ads/zzlv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlu;


# instance fields
.field private final zzacv:Lcom/google/android/gms/internal/ads/zzhd;

.field private final zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

.field private final zzbbg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzlu;",
            ">;"
        }
    .end annotation
.end field

.field private zzbbh:Lcom/google/android/gms/internal/ads/zzlt;

.field private zzbbi:Lcom/google/android/gms/internal/ads/zzgy;

.field private zzbbj:Ljava/lang/Object;

.field private zzbbk:I

.field private zzbbl:Lcom/google/android/gms/internal/ads/zzlx;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzlu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbg:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbk:I

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbl:Lcom/google/android/gms/internal/ads/zzlx;

    if-nez v0, :cond_3d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgy;->zzep()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-virtual {p2, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzhd;->zzagt:Z

    if-eqz v3, :cond_1c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzlx;-><init>(I)V

    goto :goto_3b

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgy;->zzeq()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbk:I

    goto :goto_3a

    :cond_2b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgy;->zzeq()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbk:I

    if-eq v0, v1, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzlx;-><init>(I)V

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    :goto_3b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbl:Lcom/google/android/gms/internal/ads/zzlx;

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbl:Lcom/google/android/gms/internal/ads/zzlx;

    if-eqz v0, :cond_42

    return-void

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_51

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbi:Lcom/google/android/gms/internal/ads/zzgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbj:Ljava/lang/Object;

    :cond_51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbg:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbh:Lcom/google/android/gms/internal/ads/zzlt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbi:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbj:Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlt;->zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    :cond_62
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzlv;ILcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlv;->zza(ILcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zznc;)Lcom/google/android/gms/internal/ads/zzls;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzls;

    const/4 v1, 0x0

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzlu;->zza(ILcom/google/android/gms/internal/ads/zznc;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzlw;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzlw;-><init>([Lcom/google/android/gms/internal/ads/zzls;)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgc;ZLcom/google/android/gms/internal/ads/zzlt;)V
    .registers 6

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbh:Lcom/google/android/gms/internal/ads/zzlt;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    array-length v1, v0

    if-ge p3, v1, :cond_16

    aget-object v0, v0, p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzly;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzlv;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzlu;->zza(Lcom/google/android/gms/internal/ads/zzgc;ZLcom/google/android/gms/internal/ads/zzlt;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlw;

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzlu;->zzb(Lcom/google/android/gms/internal/ads/zzls;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-void
.end method

.method public final zzhl()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbl:Lcom/google/android/gms/internal/ads/zzlx;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzlu;->zzhl()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void

    :cond_13
    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method public final zzhm()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbbf:[Lcom/google/android/gms/internal/ads/zzlu;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzlu;->zzhm()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
