###### Class com.google.android.gms.internal.ads.zzkp (com.google.android.gms.internal.ads.zzkp)
.class public final Lcom/google/android/gms/internal/ads/zzkp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzkp$zza;
    }
.end annotation


# static fields
.field private static final zzaze:Lcom/google/android/gms/internal/ads/zzkm;

.field private static final zzazf:Ljava/util/regex/Pattern;

.field private static final zzazg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzkp$zza;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzkm;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzazh:Landroid/util/SparseIntArray;

.field private static final zzazi:Landroid/util/SparseIntArray;

.field private static final zzazj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzazk:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "OMX.google.raw.decoder"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzaze:Lcom/google/android/gms/internal/ads/zzkm;

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazf:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazg:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazk:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazh:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazh:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    const/16 v3, 0x4d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazh:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/16 v4, 0x58

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazh:Landroid/util/SparseIntArray;

    const/16 v4, 0x8

    const/16 v5, 0x64

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v5, 0x10

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v6, 0x20

    const/16 v7, 0x14

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v7, 0x40

    const/16 v8, 0x15

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v8, 0x80

    const/16 v9, 0x16

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v9, 0x100

    const/16 v10, 0x1e

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v10, 0x200

    const/16 v11, 0x1f

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v11, 0x400

    invoke-virtual {v0, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v12, 0x800

    const/16 v13, 0x28

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v13, 0x1000

    const/16 v14, 0x29

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v14, 0x2000

    const/16 v15, 0x2a

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v15, 0x4000

    const/16 v14, 0x32

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v14, 0x33

    const v12, 0x8000

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    const/16 v12, 0x34

    const/high16 v14, 0x10000

    invoke-virtual {v0, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v12, "L30"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L60"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L63"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L90"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L93"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L120"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L123"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L150"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L153"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L156"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L180"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L183"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L186"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H30"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H60"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H63"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H90"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H93"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H120"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H123"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H150"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H153"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H156"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H183"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H186"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_21

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_21
    const/4 v0, 0x1

    :try_start_22
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4d

    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, v2

    goto :goto_65

    :cond_4d
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_c4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_65} :catch_dc

    :goto_65
    sget-object p1, Lcom/google/android/gms/internal/ads/zzkp;->zzazh:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_98

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC profile: "

    :goto_8a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_98
    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazi:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_be

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC level: "

    goto :goto_8a

    :cond_be
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_c4
    :try_start_c4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d8

    :cond_d3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d8
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_db} :catch_dc

    return-object v3

    :catch_dc
    nop

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_ec

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f1

    :cond_ec
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f1
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzkp$zza;Lcom/google/android/gms/internal/ads/zzks;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzkp$zza;",
            "Lcom/google/android/gms/internal/ads/zzks;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzkm;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkp$zza;->mimeType:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzks;->getCodecCount()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzks;->zzgx()Z

    move-result v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_2ad

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzks;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_2ae

    const-string v11, ".secure"

    if-nez v0, :cond_1af

    if-nez v6, :cond_30

    :try_start_28
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_1af

    :cond_30
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v0, v13, :cond_68

    const-string v0, "CIPAACDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPMP3Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPVorbisDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPAMRNBDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "AACDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "MP3Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto/16 :goto_1af

    :cond_68
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v13, 0x12

    if-ge v0, v13, :cond_78

    const-string v0, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto/16 :goto_1af

    :cond_78
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-ge v0, v13, :cond_90

    const-string v0, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "a70"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto/16 :goto_1af

    :cond_90
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v13, 0x10

    if-ne v0, v13, :cond_118

    const-string v0, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "dlxu"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "protou"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "ville"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "villeplus"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "villec2"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v14, "gee"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6602"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6603"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6606"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6616"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "L36h"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "SO-02E"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_1af

    :cond_118
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-ne v0, v13, :cond_14d

    const-string v0, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    const-string v0, "C1504"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1505"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1604"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1605"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    goto :goto_1af

    :cond_14d
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_14f} :catch_2ae

    const-string v13, "jflte"

    const/16 v14, 0x13

    if-gt v0, v14, :cond_198

    :try_start_155
    const-string v0, "OMX.SEC.vp8.dec"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    const-string v0, "samsung"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzof;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v15, "d2"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v15, "serrano"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v15, "santos"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v15, "t0"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_198

    goto :goto_1af

    :cond_198
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-gt v0, v14, :cond_1ad

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string v0, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    goto :goto_1af

    :cond_1ad
    const/4 v0, 0x1

    goto :goto_1b0

    :cond_1af
    :goto_1af
    const/4 v0, 0x0

    :goto_1b0
    if-eqz v0, :cond_2a3

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1b8
    if-ge v15, v14, :cond_2a3

    aget-object v12, v13, v15

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1c0} :catch_2ae

    if-eqz v0, :cond_299

    :try_start_1c2
    invoke-virtual {v9, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzks;->zza(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    sget v2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1cc} :catch_22e

    move/from16 v16, v5

    const/16 v5, 0x16

    if-gt v2, v5, :cond_1fa

    :try_start_1d2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzof;->MODEL:Ljava/lang/String;

    const-string v5, "ODROID-XU3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e6

    sget-object v2, Lcom/google/android/gms/internal/ads/zzof;->MODEL:Ljava/lang/String;

    const-string v5, "Nexus 10"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    :cond_1e6
    const-string v2, "OMX.Exynos.AVC.Decoder"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f6

    const-string v2, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    :cond_1f6
    const/4 v2, 0x1

    goto :goto_1fb

    :catch_1f8
    move-exception v0

    goto :goto_231

    :cond_1fa
    const/4 v2, 0x0

    :goto_1fb
    if-eqz v6, :cond_204

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzkp$zza;->zzayy:Z

    if-eq v5, v7, :cond_202

    goto :goto_204

    :cond_202
    :goto_202
    const/4 v5, 0x0

    goto :goto_20b

    :cond_204
    :goto_204
    if-nez v6, :cond_214

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzkp$zza;->zzayy:Z

    if-nez v5, :cond_214

    goto :goto_202

    :goto_20b
    invoke-static {v10, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzkm;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29b

    :cond_214
    const/4 v5, 0x0

    if-nez v6, :cond_22c

    if-eqz v7, :cond_22c

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_221} :catch_1f8

    const/4 v5, 0x1

    :try_start_222
    invoke-static {v7, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzkm;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_229} :catch_22a

    return-object v3

    :catch_22a
    move-exception v0

    goto :goto_232

    :cond_22c
    const/4 v5, 0x1

    goto :goto_29b

    :catch_22e
    move-exception v0

    move/from16 v16, v5

    :goto_231
    const/4 v5, 0x1

    :goto_232
    :try_start_232
    sget v2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_234} :catch_2ae

    const/16 v7, 0x17

    const-string v5, "MediaCodecUtil"

    if-gt v2, v7, :cond_264

    :try_start_23a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_264

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29b

    :cond_264
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_299} :catch_2ae

    :cond_299
    move/from16 v16, v5

    :goto_29b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v16

    goto/16 :goto_1b8

    :cond_2a3
    move/from16 v16, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v16

    goto/16 :goto_14

    :cond_2ad
    return-object v3

    :catch_2ae
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkt;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzkr;)V

    goto :goto_2b7

    :goto_2b6
    throw v1

    :goto_2b7
    goto :goto_2b6
.end method

.method public static zzbb(Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_fa

    goto :goto_40

    :sswitch_19
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :sswitch_23
    const-string v5, "hev1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :sswitch_2c
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x3

    goto :goto_41

    :sswitch_36
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x2

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v2, -0x1

    :goto_41
    if-eqz v2, :cond_4f

    if-eq v2, v8, :cond_4f

    if-eq v2, v7, :cond_4a

    if-eq v2, v6, :cond_4a

    return-object v0

    :cond_4a
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzkp;->zza(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4f
    array-length v2, v1

    const/4 v3, 0x4

    const-string v4, "Ignoring malformed HEVC codec string: "

    const-string v5, "MediaCodecUtil"

    if-ge v2, v3, :cond_6f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6b

    :cond_66
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6b
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6f
    sget-object v2, Lcom/google/android/gms/internal/ads/zzkp;->zzazf:Ljava/util/regex/Pattern;

    aget-object v3, v1, v8

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_95

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_91

    :cond_8c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_91
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_95
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const/4 v7, 0x1

    goto :goto_ab

    :cond_a3
    const-string v3, "2"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    :goto_ab
    sget-object p0, Lcom/google/android/gms/internal/ads/zzkp;->zzazj:Ljava/util/Map;

    aget-object v1, v1, v6

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_d6

    const-string p0, "Unknown HEVC level string: "

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_cc

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d2

    :cond_cc
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    :goto_d2
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_d6
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_e0
    const-string v1, "Unknown HEVC profile string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f6

    :cond_f1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f6
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_data_fa
    .sparse-switch
        0x2ddf23 -> :sswitch_36
        0x2ddf24 -> :sswitch_2c
        0x30d038 -> :sswitch_23
        0x310dbc -> :sswitch_19
    .end sparse-switch
.end method

.method public static zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkm;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzkm;

    return-object p0
.end method

.method private static declared-synchronized zzd(Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzkm;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzkp;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzkp$zza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzkp$zza;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzkp;->zzazg:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_90

    if-eqz v2, :cond_14

    monitor-exit v0

    return-object v2

    :cond_14
    :try_start_14
    sget v2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_21

    new-instance v2, Lcom/google/android/gms/internal/ads/zzku;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzku;-><init>(Z)V

    goto :goto_26

    :cond_21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzkr;)V

    :goto_26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzkp;->zza(Lcom/google/android/gms/internal/ads/zzkp$zza;Lcom/google/android/gms/internal/ads/zzks;)Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_85

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_85

    sget p1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-gt v4, p1, :cond_85

    sget p1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v4, 0x17

    if-gt p1, v4, :cond_85

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzkr;)V

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzkp;->zza(Lcom/google/android/gms/internal/ads/zzkp$zza;Lcom/google/android/gms/internal/ads/zzks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_85

    const-string p1, "MediaCodecUtil"

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzkm;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Assuming: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzkp;->zzazg:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_14 .. :try_end_8e} :catchall_90

    monitor-exit v0

    return-object p0

    :catchall_90
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zzgv()Lcom/google/android/gms/internal/ads/zzkm;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkp;->zzaze:Lcom/google/android/gms/internal/ads/zzkm;

    return-object v0
.end method

.method public static zzgw()I
    .registers 12

    sget v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6d

    const/4 v0, 0x0

    const-string v2, "video/avc"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzgu()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v0, v3, :cond_5a

    aget-object v5, v2, v0

    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/high16 v6, 0x900000

    const/high16 v7, 0x200000

    const v8, 0x65400

    const/16 v9, 0x6300

    const/4 v10, 0x1

    const v11, 0x18c00

    if-eq v5, v10, :cond_51

    const/4 v10, 0x2

    if-eq v5, v10, :cond_51

    sparse-switch v5, :sswitch_data_70

    const/4 v5, -0x1

    goto :goto_53

    :sswitch_31
    const/high16 v5, 0x900000

    goto :goto_53

    :sswitch_34
    const v5, 0x564000

    goto :goto_53

    :sswitch_38
    const/high16 v5, 0x220000

    goto :goto_53

    :sswitch_3b
    const/high16 v5, 0x200000

    goto :goto_53

    :sswitch_3e
    const/high16 v5, 0x140000

    goto :goto_53

    :sswitch_41
    const v5, 0xe1000

    goto :goto_53

    :sswitch_45
    const v5, 0x65400

    goto :goto_53

    :sswitch_49
    const v5, 0x31800

    goto :goto_53

    :sswitch_4d
    const v5, 0x18c00

    goto :goto_53

    :cond_51
    const/16 v5, 0x6300

    :goto_53
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_5a
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_64

    const v0, 0x54600

    goto :goto_67

    :cond_64
    const v0, 0x2a300

    :goto_67
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_6b
    sput v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazk:I

    :cond_6d
    sget v0, Lcom/google/android/gms/internal/ads/zzkp;->zzazk:I

    return v0

    :sswitch_data_70
    .sparse-switch
        0x8 -> :sswitch_4d
        0x10 -> :sswitch_4d
        0x20 -> :sswitch_4d
        0x40 -> :sswitch_49
        0x80 -> :sswitch_45
        0x100 -> :sswitch_45
        0x200 -> :sswitch_41
        0x400 -> :sswitch_3e
        0x800 -> :sswitch_3b
        0x1000 -> :sswitch_3b
        0x2000 -> :sswitch_38
        0x4000 -> :sswitch_34
        0x8000 -> :sswitch_31
        0x10000 -> :sswitch_31
    .end sparse-switch
.end method

###### Class com.google.android.gms.internal.ads.zzkp.zza (com.google.android.gms.internal.ads.zzkp$zza)
.class final Lcom/google/android/gms/internal/ads/zzkp$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzkp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final zzayy:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkp$zza;->mimeType:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzkp$zza;->zzayy:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzkp$zza;

    if-eq v2, v3, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzkp$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkp$zza;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkp$zza;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkp$zza;->zzayy:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzkp$zza;->zzayy:Z

    if-ne v2, p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp$zza;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkp$zza;->zzayy:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x4cf

    goto :goto_17

    :cond_15
    const/16 v1, 0x4d5

    :goto_17
    add-int/2addr v0, v1

    return v0
.end method
