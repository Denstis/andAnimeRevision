###### Class com.google.android.material.shape.ShapePath (com.google.android.material.shape.ShapePath)
.class public Lcom/google/android/material/shape/ShapePath;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapePath$PathArcOperation;,
        Lcom/google/android/material/shape/ShapePath$PathQuadOperation;,
        Lcom/google/android/material/shape/ShapePath$PathLineOperation;,
        Lcom/google/android/material/shape/ShapePath$PathOperation;
    }
.end annotation


# instance fields
.field public endX:F

.field public endY:F

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .registers 11

    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    iput p5, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    iput p6, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float v0, p1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    add-float/2addr p5, p6

    float-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    add-float p3, p2, p4

    mul-float p3, p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    iput p3, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/ShapePath$PathOperation;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public lineTo(FF)V
    .registers 5

    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    iput p2, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public quadToPoint(FFFF)V
    .registers 6

    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;-><init>()V

    iput p1, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    iput p2, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    iput p3, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    iput p4, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    iput p4, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public reset(FF)V
    .registers 3

    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    iput p2, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    iput p2, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.PathArcOperation (com.google.android.material.shape.ShapePath$PathArcOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public startAngle:F

.field public sweepAngle:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    iput p2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    iput p3, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    iput p4, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.PathLineOperation (com.google.android.material.shape.ShapePath$PathLineOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.PathOperation (com.google.android.material.shape.ShapePath$PathOperation)
.class public abstract Lcom/google/android/material/shape/ShapePath$PathOperation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PathOperation"
.end annotation


# instance fields
.field protected final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
.end method

###### Class com.google.android.material.shape.ShapePath.PathQuadOperation (com.google.android.material.shape.ShapePath$PathQuadOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F

.field public controlY:F

.field public endX:F

.field public endY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
