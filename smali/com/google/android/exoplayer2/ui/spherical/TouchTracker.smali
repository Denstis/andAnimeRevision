###### Class com.google.android.exoplayer2.ui.spherical.TouchTracker (com.google.android.exoplayer2.ui.spherical.TouchTracker)
.class Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;
    }
.end annotation


# static fields
.field static final MAX_PITCH_DEGREES:F = 45.0f


# instance fields
.field private final accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final listener:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;

.field private final previousTouchPointPx:Landroid/graphics/PointF;

.field private final pxPerDegrees:F

.field private volatile roll:F

.field private singleTapListener:Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;F)V
    .registers 5

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->listener:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;

    iput p3, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->pxPerDegrees:F

    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->roll:F

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p4, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget p2, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->roll:F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p4, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, p2, p1

    mul-float v3, p4, p3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float p4, p4, p1

    mul-float p2, p2, p3

    add-float/2addr p4, p2

    add-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget p1, v0, Landroid/graphics/PointF;->y:F

    const/high16 p2, 0x42340000    # 45.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x3dcc0000    # -45.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->listener:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;->onScrollChange(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->singleTapListener:Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRoll(F)V
    .registers 2

    neg-float p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->roll:F

    return-void
.end method

.method public setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->singleTapListener:Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.spherical.TouchTracker.Listener (com.google.android.exoplayer2.ui.spherical.TouchTracker$Listener)
.class interface abstract Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onScrollChange(Landroid/graphics/PointF;)V
.end method
