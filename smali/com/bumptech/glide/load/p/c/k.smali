###### Class com.bumptech.glide.load.p.c.k (com.bumptech.glide.load.p.c.k)
.class public abstract Lcom/bumptech/glide/load/p/c/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/p/c/k$g;,
        Lcom/bumptech/glide/load/p/c/k$c;,
        Lcom/bumptech/glide/load/p/c/k$f;,
        Lcom/bumptech/glide/load/p/c/k$b;,
        Lcom/bumptech/glide/load/p/c/k$a;,
        Lcom/bumptech/glide/load/p/c/k$d;,
        Lcom/bumptech/glide/load/p/c/k$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/p/c/k;

.field public static final b:Lcom/bumptech/glide/load/p/c/k;

.field public static final c:Lcom/bumptech/glide/load/p/c/k;

.field public static final d:Lcom/bumptech/glide/load/p/c/k;

.field public static final e:Lcom/bumptech/glide/load/p/c/k;

.field public static final f:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Lcom/bumptech/glide/load/p/c/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/c/k$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/p/c/k;->a:Lcom/bumptech/glide/load/p/c/k;

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/c/k$d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/p/c/k;->b:Lcom/bumptech/glide/load/p/c/k;

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/c/k$a;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/c/k$b;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/c/k$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/p/c/k;->c:Lcom/bumptech/glide/load/p/c/k;

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/c/k$f;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/p/c/k;->d:Lcom/bumptech/glide/load/p/c/k;

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->b:Lcom/bumptech/glide/load/p/c/k;

    sput-object v0, Lcom/bumptech/glide/load/p/c/k;->e:Lcom/bumptech/glide/load/p/c/k;

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->e:Lcom/bumptech/glide/load/p/c/k;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/p/c/k;->f:Lcom/bumptech/glide/load/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
.end method

.method public abstract b(IIII)F
.end method

###### Class com.bumptech.glide.load.p.c.k.a (com.bumptech.glide.load.p.c.k$a)
.class Lcom/bumptech/glide/load/p/c/k$a;
.super Lcom/bumptech/glide/load/p/c/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 5

    sget-object p1, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    return-object p1
.end method

.method public b(IIII)F
    .registers 5

    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_b

    goto :goto_11

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    :goto_11
    return p2
.end method

###### Class com.bumptech.glide.load.p.c.k.b (com.bumptech.glide.load.p.c.k$b)
.class Lcom/bumptech/glide/load/p/c/k$b;
.super Lcom/bumptech/glide/load/p/c/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 5

    sget-object p1, Lcom/bumptech/glide/load/p/c/k$g;->b:Lcom/bumptech/glide/load/p/c/k$g;

    return-object p1
.end method

.method public b(IIII)F
    .registers 5

    int-to-float p2, p2

    int-to-float p4, p4

    div-float/2addr p2, p4

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ge p2, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x0

    :goto_1d
    shl-int p1, p2, p3

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

###### Class com.bumptech.glide.load.p.c.k.c (com.bumptech.glide.load.p.c.k$c)
.class Lcom/bumptech/glide/load/p/c/k$c;
.super Lcom/bumptech/glide/load/p/c/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 5

    sget-object p1, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    return-object p1
.end method

.method public b(IIII)F
    .registers 6

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->a:Lcom/bumptech/glide/load/p/c/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/p/c/k;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.p.c.k.d (com.bumptech.glide.load.p.c.k$d)
.class Lcom/bumptech/glide/load/p/c/k$d;
.super Lcom/bumptech/glide/load/p/c/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 5

    sget-object p1, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    return-object p1
.end method

.method public b(IIII)F
    .registers 5

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.p.c.k.e (com.bumptech.glide.load.p.c.k$e)
.class Lcom/bumptech/glide/load/p/c/k$e;
.super Lcom/bumptech/glide/load/p/c/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 5

    sget-object p1, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    return-object p1
.end method

.method public b(IIII)F
    .registers 5

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.p.c.k.f (com.bumptech.glide.load.p.c.k$f)
.class Lcom/bumptech/glide/load/p/c/k$f;
.super Lcom/bumptech/glide/load/p/c/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 5

    sget-object p1, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    return-object p1
.end method

.method public b(IIII)F
    .registers 5

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

###### Class com.bumptech.glide.load.p.c.k.g (com.bumptech.glide.load.p.c.k$g)
.class public final enum Lcom/bumptech/glide/load/p/c/k$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/p/c/k$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bumptech/glide/load/p/c/k$g;

.field public static final enum c:Lcom/bumptech/glide/load/p/c/k$g;

.field private static final synthetic d:[Lcom/bumptech/glide/load/p/c/k$g;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$g;

    const/4 v1, 0x0

    const-string v2, "MEMORY"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/p/c/k$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/p/c/k$g;->b:Lcom/bumptech/glide/load/p/c/k$g;

    new-instance v0, Lcom/bumptech/glide/load/p/c/k$g;

    const/4 v2, 0x1

    const-string v3, "QUALITY"

    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/load/p/c/k$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bumptech/glide/load/p/c/k$g;

    sget-object v3, Lcom/bumptech/glide/load/p/c/k$g;->b:Lcom/bumptech/glide/load/p/c/k$g;

    aput-object v3, v0, v1

    sget-object v1, Lcom/bumptech/glide/load/p/c/k$g;->c:Lcom/bumptech/glide/load/p/c/k$g;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/p/c/k$g;->d:[Lcom/bumptech/glide/load/p/c/k$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/p/c/k$g;
    .registers 2

    const-class v0, Lcom/bumptech/glide/load/p/c/k$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/p/c/k$g;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/p/c/k$g;
    .registers 1

    sget-object v0, Lcom/bumptech/glide/load/p/c/k$g;->d:[Lcom/bumptech/glide/load/p/c/k$g;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/p/c/k$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/p/c/k$g;

    return-object v0
.end method
