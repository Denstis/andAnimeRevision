###### Class com.google.android.exoplayer2.ui.PlayerView (com.google.android.exoplayer2.ui.PlayerView)
.class public Lcom/google/android/exoplayer2/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerView$ShowBuffering;
    }
.end annotation


# static fields
.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_MONO360_VIEW:I = 0x3

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2


# instance fields
.field private final artworkView:Landroid/widget/ImageView;

.field private final bufferingView:Landroid/view/View;

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private customErrorMessage:Ljava/lang/CharSequence;

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;

.field private keepContentOnPlayerReset:Z

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private textureViewRotation:I

.field private useArtwork:Z

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_3e

    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    :goto_3e
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_42
    sget v3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_view:I

    const/16 v5, 0x1388

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_c4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    :try_start_54
    sget v9, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v10, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_default_artwork:I

    invoke-virtual {v8, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    sget v15, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_timeout:I

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_on_touch:I

    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v18, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_b2
    .catchall {:try_start_54 .. :try_end_b2} :catchall_bf

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move v8, v7

    move/from16 v16, v13

    move v13, v3

    move v7, v5

    move/from16 v3, v17

    move/from16 v5, v18

    goto :goto_d3

    :catchall_bf
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_c4
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1388

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_d3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView$1;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_f8

    invoke-static {v3, v15}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    :cond_f8
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v3, :cond_109

    if-eqz v9, :cond_109

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_109
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_153

    if-eqz v14, :cond_153

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    if-eq v14, v4, :cond_13f

    const/4 v4, 0x3

    if-eq v14, v4, :cond_123

    new-instance v4, Landroid/view/SurfaceView;

    invoke-direct {v4, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    :goto_120
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_145

    :cond_123
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v9, 0xf

    if-lt v4, v9, :cond_12b

    const/4 v4, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v4, 0x0

    :goto_12c
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance v4, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;-><init>(Landroid/content/Context;)V

    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->setSurfaceListener(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;)V

    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    goto :goto_120

    :cond_13f
    new-instance v4, Landroid/view/TextureView;

    invoke-direct {v4, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    goto :goto_120

    :goto_145
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_156

    :cond_153
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    :goto_156
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v11, :cond_172

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v3, :cond_172

    const/4 v3, 0x1

    goto :goto_173

    :cond_172
    const/4 v3, 0x0

    :goto_173
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v12, :cond_181

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    :cond_181
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v3, :cond_197

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    :cond_197
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_1a8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1a8
    iput v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_1bb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1bb
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_1cf

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v6, 0x0

    goto :goto_1fa

    :cond_1cf
    if-eqz v4, :cond_1f6

    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v6, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1fa

    :cond_1f6
    const/4 v0, 0x0

    const/4 v6, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    :goto_1fa
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_1ff

    goto :goto_200

    :cond_1ff
    const/4 v7, 0x0

    :goto_200
    iput v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    iput-boolean v13, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v16, :cond_20f

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_20f

    const/4 v6, 0x1

    :cond_20f
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/Player;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ui/PlayerView;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return p1
.end method

.method static synthetic access$400(Landroid/view/TextureView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_43

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_43

    if-nez p1, :cond_16

    goto :goto_43

    :cond_16
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    div-float v4, v1, v4

    int-to-float p1, p1

    invoke-virtual {v3, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v1, p1

    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_47

    :cond_43
    :goto_43
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :goto_47
    return-void
.end method

.method private closeShutter()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 3

    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private isDpadKey(I)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x13

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_27

    const/16 v0, 0x16

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_27

    const/16 v0, 0x14

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_27

    const/16 v0, 0x15

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_27

    const/16 v0, 0x17

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method private isPlayingAd()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private maybeShowController(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2c

    if-nez v0, :cond_2c

    if-eqz v1, :cond_2f

    :cond_2c
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    :cond_2f
    return-void
.end method

.method private setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v3, :cond_27

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object p1, v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return v0
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_25

    if-lez v2, :cond_25

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_25
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_1c

    if-eq v0, v1, :cond_1d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return v1
.end method

.method private showController(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    goto :goto_d

    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_d
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowTimeoutMs(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 3

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_8

    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_8
    if-eqz p1, :cond_e

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_e
    return-void
.end method

.method private toggleControllerVisibility()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_9

    goto :goto_20

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_1f

    :cond_16
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method private updateBuffering()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, v3, :cond_21

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v1, :cond_26

    goto :goto_28

    :cond_26
    const/16 v2, 0x8

    :goto_28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method private updateErrorMessage()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_12
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_28

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    :cond_28
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_46

    :cond_3f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_75

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_75

    :cond_f
    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_18

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    :cond_18
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_20
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_3a

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    return-void

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v1, :cond_71

    const/4 v1, 0x0

    :goto_42
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_68

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_65

    const/4 v3, 0x0

    :goto_4d
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    if-ge v3, v4, :cond_65

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v4, :cond_62

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v4

    if-eqz v4, :cond_62

    return-void

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_68
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_71

    return-void

    :cond_71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    return-void

    :cond_75
    :goto_75
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_7f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    :cond_7f
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-nez v0, :cond_38

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_38
    const/4 v1, 0x1

    :cond_39
    if-eqz v1, :cond_3e

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :cond_3e
    return v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public getControllerAutoShow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    :cond_7
    return-void
.end method

.method public isControllerVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_a

    instance-of p3, p3, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->onPause()V

    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->onResume()V

    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->performClick()Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez p1, :cond_9

    goto :goto_e

    :cond_9
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    :cond_17
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_e

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_a
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    :cond_9
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_a

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_a
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_21

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_2a

    return-void

    :cond_2a
    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_4b

    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_5e

    :cond_4b
    instance-of v5, v4, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    if-eqz v5, :cond_55

    check-cast v4, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_5e

    :cond_55
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_5e

    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$TextComponent;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    :cond_6b
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_76
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_7d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_7d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_c6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_b2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_9a

    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_ad

    :cond_9a
    instance-of v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    if-eqz v2, :cond_a4

    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_ad

    :cond_a4
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_ad

    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_ad
    :goto_ad
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    :cond_b2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_bd

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$TextComponent;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    :cond_bd
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_c9

    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :goto_c9
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    :cond_9
    return-void
.end method

.method public setShowBuffering(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShowBuffering(I)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setUseArtwork(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eq v1, p1, :cond_17

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_17
    return-void
.end method

.method public setUseController(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_12

    return-void

    :cond_12
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    :goto_1a
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_29

    :cond_1e
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    goto :goto_1a

    :cond_29
    :goto_29
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showController()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerView.AnonymousClass1 (com.google.android.exoplayer2.ui.PlayerView$1)
.class synthetic Lcom/google/android/exoplayer2/ui/PlayerView$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.ui.PlayerView.ComponentListener (com.google.android.exoplayer2.ui.PlayerView$ComponentListener)
.class final Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/video/VideoListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;
.implements Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$400(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$800(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$900(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_26

    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V

    :goto_26
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :cond_15
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/b;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1400(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    return p1
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/h;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/b;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_d

    if-nez p1, :cond_7

    goto :goto_d

    :cond_7
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_f

    :cond_d
    :goto_d
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_5b

    const/16 p2, 0x5a

    if-eq p3, p2, :cond_21

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_23

    :cond_21
    div-float/2addr v0, p1

    move p1, v0

    :cond_23
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_34
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$302(Lcom/google/android/exoplayer2/ui/PlayerView;I)I

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4a
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$400(Landroid/view/TextureView;I)V

    :cond_5b
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p4}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1300(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1300(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurface(Landroid/view/Surface;)V

    :cond_17
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerView.ShowBuffering (com.google.android.exoplayer2.ui.PlayerView$ShowBuffering)
.class public interface abstract annotation Lcom/google/android/exoplayer2/ui/PlayerView$ShowBuffering;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ShowBuffering"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
