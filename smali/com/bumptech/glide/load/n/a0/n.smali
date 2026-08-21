###### Class com.bumptech.glide.load.n.a0.n (com.bumptech.glide.load.n.a0.n)
.class public Lcom/bumptech/glide/load/n/a0/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/a0/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/a0/n$b;,
        Lcom/bumptech/glide/load/n/a0/n$c;
    }
.end annotation


# static fields
.field private static final d:[Landroid/graphics/Bitmap$Config;

.field private static final e:[Landroid/graphics/Bitmap$Config;

.field private static final f:[Landroid/graphics/Bitmap$Config;

.field private static final g:[Landroid/graphics/Bitmap$Config;

.field private static final h:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/a0/n$c;

.field private final b:Lcom/bumptech/glide/load/n/a0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/a0/h<",
            "Lcom/bumptech/glide/load/n/a0/n$b;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_20

    array-length v3, v0

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    array-length v3, v0

    sub-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v4, v0, v3

    :cond_20
    sput-object v0, Lcom/bumptech/glide/load/n/a0/n;->d:[Landroid/graphics/Bitmap$Config;

    sget-object v0, Lcom/bumptech/glide/load/n/a0/n;->d:[Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/n/a0/n;->e:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/n/a0/n;->f:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/n/a0/n;->g:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/n/a0/n;->h:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/a0/n$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/a0/n$c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/a0/n;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    new-instance v0, Lcom/bumptech/glide/load/n/a0/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/a0/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/a0/n;->b:Lcom/bumptech/glide/load/n/a0/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/a0/n;->c:Ljava/util/Map;

    return-void
.end method

.method private a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/n/a0/n$b;
    .registers 11

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a0/n;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/n/a0/n$c;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/n/a0/n$b;

    move-result-object v0

    invoke-static {p2}, Lcom/bumptech/glide/load/n/a0/n;->a(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_4c

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/n/a0/n;->b(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v7, p1, 0x8

    if-gt v6, v7, :cond_49

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_39

    if-nez v4, :cond_33

    if-eqz p2, :cond_4c

    goto :goto_39

    :cond_33
    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/bumptech/glide/load/n/a0/n;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/n/a0/d;->a(Lcom/bumptech/glide/load/n/a0/m;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/n/a0/n;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v4}, Lcom/bumptech/glide/load/n/a0/n$c;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/n/a0/n$b;

    move-result-object v0

    goto :goto_4c

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method private a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/a0/n;->b(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1b

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to decrement empty size, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/n/a0/n;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lcom/bumptech/glide/load/n/a0/n;->e:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_11
    sget-object v0, Lcom/bumptech/glide/load/n/a0/n$a;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v2, 0x2

    if-eq v0, v2, :cond_31

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :cond_2b
    sget-object p0, Lcom/bumptech/glide/load/n/a0/n;->h:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_2e
    sget-object p0, Lcom/bumptech/glide/load/n/a0/n;->g:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_31
    sget-object p0, Lcom/bumptech/glide/load/n/a0/n;->f:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_34
    sget-object p0, Lcom/bumptech/glide/load/n/a0/n;->d:[Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static b(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a0/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a0/n;->b:Lcom/bumptech/glide/load/n/a0/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/a0/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lc/a/a/t/k;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/n/a0/n;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_15
    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p1, p2, p3}, Lc/a/a/t/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/n/a0/n;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/n/a0/n$b;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->b:Lcom/bumptech/glide/load/n/a0/h;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/n/a0/h;->a(Lcom/bumptech/glide/load/n/a0/m;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1e

    iget v0, v0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/n/a0/n;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_1e
    return-object v1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-static {p1}, Lc/a/a/t/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/n/a0/n$c;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/n/a0/n$b;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->b:Lcom/bumptech/glide/load/n/a0/h;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/n/a0/h;->a(Lcom/bumptech/glide/load/n/a0/m;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/n/a0/n;->b(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    iget v1, v0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget v0, v0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v1, :cond_31

    goto :goto_36

    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    :goto_36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)I
    .registers 2

    invoke-static {p1}, Lc/a/a/t/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2, p3}, Lc/a/a/t/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    invoke-static {p1, p3}, Lcom/bumptech/glide/load/n/a0/n;->b(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lc/a/a/t/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/n/a0/n;->b(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeConfigStrategy{groupedMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->b:Lcom/bumptech/glide/load/n/a0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_43
    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.a0.n.a (com.bumptech.glide.load.n.a0.n$a)
.class synthetic Lcom/bumptech/glide/load/n/a0/n$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/a0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/load/n/a0/n$a;->a:[I

    :try_start_9
    sget-object v0, Lcom/bumptech/glide/load/n/a0/n$a;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/bumptech/glide/load/n/a0/n$a;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/bumptech/glide/load/n/a0/n$a;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/bumptech/glide/load/n/a0/n$a;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method

###### Class com.bumptech.glide.load.n.a0.n.b (com.bumptech.glide.load.n.a0.n$b)
.class final Lcom/bumptech/glide/load/n/a0/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/a0/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/a0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/a0/n$c;

.field b:I

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/n/a0/n$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/a0/n$b;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a0/n$b;->a:Lcom/bumptech/glide/load/n/a0/n$c;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/n/a0/d;->a(Lcom/bumptech/glide/load/n/a0/m;)V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .registers 3

    iput p1, p0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    iput-object p2, p0, Lcom/bumptech/glide/load/n/a0/n$b;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/n/a0/n$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    check-cast p1, Lcom/bumptech/glide/load/n/a0/n$b;

    iget v0, p0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a0/n$b;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/n/a0/n$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, Lc/a/a/t/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n$b;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/n/a0/n$b;->b:I

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a0/n$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/n/a0/n;->b(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.a0.n.c (com.bumptech.glide.load.n.a0.n$c)
.class Lcom/bumptech/glide/load/n/a0/n$c;
.super Lcom/bumptech/glide/load/n/a0/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/a0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/n/a0/d<",
        "Lcom/bumptech/glide/load/n/a0/n$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/a0/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lcom/bumptech/glide/load/n/a0/m;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/a0/n$c;->a()Lcom/bumptech/glide/load/n/a0/n$b;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/bumptech/glide/load/n/a0/n$b;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/n/a0/n$b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/n/a0/n$b;-><init>(Lcom/bumptech/glide/load/n/a0/n$c;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/n/a0/n$b;
    .registers 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/a0/d;->b()Lcom/bumptech/glide/load/n/a0/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/n/a0/n$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/n/a0/n$b;->a(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
