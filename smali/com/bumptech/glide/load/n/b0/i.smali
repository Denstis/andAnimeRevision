###### Class com.bumptech.glide.load.n.b0.i (com.bumptech.glide.load.n.b0.i)
.class public final Lcom/bumptech/glide/load/n/b0/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/b0/i$b;,
        Lcom/bumptech/glide/load/n/b0/i$a;,
        Lcom/bumptech/glide/load/n/b0/i$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/b0/i$a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bumptech/glide/load/n/b0/i$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/b0/i;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/bumptech/glide/load/n/b0/i$a;->b:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/n/b0/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p1, Lcom/bumptech/glide/load/n/b0/i$a;->h:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_16

    :cond_14
    iget v0, p1, Lcom/bumptech/glide/load/n/b0/i$a;->h:I

    :goto_16
    iput v0, p0, Lcom/bumptech/glide/load/n/b0/i;->d:I

    iget-object v0, p1, Lcom/bumptech/glide/load/n/b0/i$a;->b:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/n/b0/i$a;->f:F

    iget v2, p1, Lcom/bumptech/glide/load/n/b0/i$a;->g:F

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/n/b0/i;->a(Landroid/app/ActivityManager;FF)I

    move-result v0

    iget-object v1, p1, Lcom/bumptech/glide/load/n/b0/i$a;->c:Lcom/bumptech/glide/load/n/b0/i$c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/n/b0/i$c;->b()I

    move-result v1

    iget-object v2, p1, Lcom/bumptech/glide/load/n/b0/i$a;->c:Lcom/bumptech/glide/load/n/b0/i$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/n/b0/i$c;->a()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, p1, Lcom/bumptech/glide/load/n/b0/i$a;->e:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Lcom/bumptech/glide/load/n/b0/i$a;->d:F

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p0, Lcom/bumptech/glide/load/n/b0/i;->d:I

    sub-int v3, v0, v3

    add-int v4, v1, v2

    if-gt v4, v3, :cond_50

    iput v1, p0, Lcom/bumptech/glide/load/n/b0/i;->b:I

    iput v2, p0, Lcom/bumptech/glide/load/n/b0/i;->a:I

    goto :goto_69

    :cond_50
    int-to-float v1, v3

    iget v2, p1, Lcom/bumptech/glide/load/n/b0/i$a;->e:F

    iget v3, p1, Lcom/bumptech/glide/load/n/b0/i$a;->d:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/n/b0/i;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/n/b0/i$a;->e:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/load/n/b0/i;->a:I

    :goto_69
    const/4 v1, 0x3

    const-string v2, "MemorySizeCalculator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_dd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/n/b0/i;->b:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/n/b0/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pool size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/n/b0/i;->a:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/n/b0/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", byte array size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/n/b0/i;->d:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/n/b0/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memory class limited? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_aa

    const/4 v3, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v3, 0x0

    :goto_ab
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", max size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/b0/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memoryClass: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/bumptech/glide/load/n/b0/i$a;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isLowMemoryDevice: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bumptech/glide/load/n/b0/i$a;->b:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/n/b0/i;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    return-void
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .registers 4

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-static {p0}, Lcom/bumptech/glide/load/n/b0/i;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_10

    move p1, p2

    :cond_10
    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/i;->c:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/n/b0/i;->d:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/n/b0/i;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/n/b0/i;->b:I

    return v0
.end method

###### Class com.bumptech.glide.load.n.b0.i.a (com.bumptech.glide.load.n.b0.i$a)
.class public final Lcom/bumptech/glide/load/n/b0/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/b0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final i:I


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/app/ActivityManager;

.field c:Lcom/bumptech/glide/load/n/b0/i$c;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    sput v0, Lcom/bumptech/glide/load/n/b0/i$a;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->d:F

    sget v0, Lcom/bumptech/glide/load/n/b0/i$a;->i:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->e:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->f:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->g:F

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->h:I

    iput-object p1, p0, Lcom/bumptech/glide/load/n/b0/i$a;->a:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->b:Landroid/app/ActivityManager;

    new-instance v0, Lcom/bumptech/glide/load/n/b0/i$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/n/b0/i$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/b0/i$a;->c:Lcom/bumptech/glide/load/n/b0/i$c;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_46

    iget-object p1, p0, Lcom/bumptech/glide/load/n/b0/i$a;->b:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/n/b0/i;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/load/n/b0/i$a;->e:F

    :cond_46
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/n/b0/i;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/n/b0/i;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/n/b0/i;-><init>(Lcom/bumptech/glide/load/n/b0/i$a;)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.b0.i.b (com.bumptech.glide.load.n.b0.i$b)
.class final Lcom/bumptech/glide/load/n/b0/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/b0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/b0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/b0/i$b;->a:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/i$b;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/i$b;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

###### Class com.bumptech.glide.load.n.b0.i.c (com.bumptech.glide.load.n.b0.i$c)
.class interface abstract Lcom/bumptech/glide/load/n/b0/i$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/b0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method
