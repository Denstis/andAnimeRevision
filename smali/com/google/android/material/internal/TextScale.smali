###### Class com.google.android.material.internal.TextScale (com.google.android.material.internal.TextScale)
.class public Lcom/google/android/material/internal/TextScale;
.super Lb/q/n;
.source ""


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/q/n;-><init>()V

    return-void
.end method

.method private captureValues(Lb/q/t;)V
    .registers 4

    iget-object v0, p1, Lb/q/t;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lb/q/t;->a:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "android:textscale:scale"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method


# virtual methods
.method public captureEndValues(Lb/q/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Lb/q/t;)V

    return-void
.end method

.method public captureStartValues(Lb/q/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Lb/q/t;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
    .registers 8

    const/4 p1, 0x0

    if-eqz p2, :cond_59

    if-eqz p3, :cond_59

    iget-object v0, p2, Lb/q/t;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_59

    iget-object v0, p3, Lb/q/t;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_12

    goto :goto_59

    :cond_12
    check-cast v0, Landroid/widget/TextView;

    iget-object p2, p2, Lb/q/t;->a:Ljava/util/Map;

    iget-object p3, p3, Lb/q/t;->a:Ljava/util/Map;

    const-string v1, "android:textscale:scale"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2d

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_2f

    :cond_2d
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2f
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_3f
    cmpl-float p3, p2, v3

    if-nez p3, :cond_44

    return-object p1

    :cond_44
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p3, 0x0

    aput p2, p1, p3

    const/4 p2, 0x1

    aput v3, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/internal/TextScale$1;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_59
    :goto_59
    return-object p1
.end method

###### Class com.google.android.material.internal.TextScale.AnonymousClass1 (com.google.android.material.internal.TextScale$1)
.class Lcom/google/android/material/internal/TextScale$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/TextScale;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/TextScale;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/material/internal/TextScale$1;->this$0:Lcom/google/android/material/internal/TextScale;

    iput-object p2, p0, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method
