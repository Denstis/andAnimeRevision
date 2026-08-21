###### Class com.google.android.exoplayer2.ui.SubtitleView (com.google.android.exoplayer2.ui.SubtitleView)
.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/text/TextOutput;


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    const p1, 0x3d5a511a    # 0.0533f

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    sget-object p1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method private getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    return-object v0
.end method

.method private isCaptionManagerEnabled()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private resolveCueTextSize(Lcom/google/android/exoplayer2/text/Cue;II)F
    .registers 7

    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_18

    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    const/4 v2, 0x1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_f

    goto :goto_18

    :cond_f
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveTextSize(IFII)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_18
    :goto_18
    return v1
.end method

.method private resolveTextSize(IFII)F
    .registers 5

    if-eqz p1, :cond_f

    const/4 p4, 0x1

    if-eq p1, p4, :cond_b

    const/4 p3, 0x2

    if-eq p1, p3, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    return p2

    :cond_b
    int-to-float p1, p3

    :goto_c
    mul-float p2, p2, p1

    return p2

    :cond_f
    int-to-float p1, p4

    goto :goto_c
.end method

.method private setTextSize(IF)V
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_b

    return-void

    :cond_b
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v13, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v12, v3, v4

    if-le v12, v14, :cond_82

    if-gt v13, v15, :cond_2e

    goto :goto_82

    :cond_2e
    sub-int v11, v12, v14

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    invoke-direct {v0, v4, v5, v3, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveTextSize(IFII)F

    move-result v17

    const/4 v4, 0x0

    cmpg-float v4, v17, v4

    if-gtz v4, :cond_3e

    return-void

    :cond_3e
    :goto_3e
    if-ge v2, v1, :cond_82

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    invoke-direct {v0, v5, v3, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveCueTextSize(Lcom/google/android/exoplayer2/text/Cue;II)F

    move-result v10

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v9, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    move/from16 v16, v9

    move/from16 v9, v17

    move/from16 v18, v11

    move/from16 v11, v16

    move/from16 v19, v12

    move-object/from16 v12, p1

    move/from16 v20, v13

    move v13, v15

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v15, v20

    move/from16 v16, v19

    invoke-virtual/range {v4 .. v16}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v15, v22

    goto :goto_3e

    :cond_82
    :goto_82
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFixedTextSize(IF)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_f
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUserDefaultStyle()V
    .registers 3

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_17

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isCaptionManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    goto :goto_19

    :cond_17
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    :goto_19
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    return-void
.end method

.method public setUserDefaultTextSize()V
    .registers 3

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    goto :goto_13

    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_13
    const v1, 0x3d5a511a    # 0.0533f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method
