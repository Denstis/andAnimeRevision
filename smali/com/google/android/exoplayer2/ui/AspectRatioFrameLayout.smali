###### Class com.google.android.exoplayer2.ui.AspectRatioFrameLayout (com.google.android.exoplayer2.ui.AspectRatioFrameLayout)
.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;,
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;,
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
    }
.end annotation


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1

.field public static final RESIZE_MODE_ZOOM:I = 0x4


# instance fields
.field private aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

.field private final aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

.field private resizeMode:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_12
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_23

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_23
    :goto_23
    new-instance p1, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    return-object p0
.end method


# virtual methods
.method public getResizeMode()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    return v0
.end method

.method protected onMeasure(II)V
    .registers 11

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_31

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    return-void

    :cond_31
    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v6, 0x1

    if-eqz v5, :cond_4e

    if-eq v5, v6, :cond_49

    const/4 v7, 0x2

    if-eq v5, v7, :cond_43

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3f

    goto :goto_53

    :cond_3f
    cmpl-float p2, v4, p2

    if-lez p2, :cond_49

    :cond_43
    iget p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    goto :goto_53

    :cond_49
    :goto_49
    iget p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_53

    :cond_4e
    cmpl-float p2, v4, p2

    if-lez p2, :cond_43

    goto :goto_49

    :goto_53
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    invoke-virtual {p2, v1, v3, v6}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_b
    return-void
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.AspectRatioFrameLayout.AnonymousClass1 (com.google.android.exoplayer2.ui.AspectRatioFrameLayout$1)
.class synthetic Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.ui.AspectRatioFrameLayout.AspectRatioListener (com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioListener)
.class public interface abstract Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AspectRatioListener"
.end annotation


# virtual methods
.method public abstract onAspectRatioUpdated(FFZ)V
.end method

###### Class com.google.android.exoplayer2.ui.AspectRatioFrameLayout.AspectRatioUpdateDispatcher (com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioUpdateDispatcher)
.class final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AspectRatioUpdateDispatcher"
.end annotation


# instance fields
.field private aspectRatioMismatch:Z

.field private isScheduled:Z

.field private naturalAspectRatio:F

.field private targetAspectRatio:F

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->access$100(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->access$100(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->targetAspectRatio:F

    iget v2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->naturalAspectRatio:F

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->aspectRatioMismatch:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;->onAspectRatioUpdated(FFZ)V

    return-void
.end method

.method public scheduleUpdate(FFZ)V
    .registers 4

    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->targetAspectRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->naturalAspectRatio:F

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->aspectRatioMismatch:Z

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    if-nez p1, :cond_12

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.AspectRatioFrameLayout.ResizeMode (com.google.android.exoplayer2.ui.AspectRatioFrameLayout$ResizeMode)
.class public interface abstract annotation Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResizeMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
