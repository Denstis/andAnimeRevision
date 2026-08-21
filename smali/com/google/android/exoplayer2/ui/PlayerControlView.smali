###### Class com.google.android.exoplayer2.ui.PlayerControlView (com.google.android.exoplayer2.ui.PlayerControlView)
.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adGroupTimesMs:[J

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private fastForwardMs:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final rewindButton:Landroid/view/View;

.field private rewindMs:I

.field private scrubbing:Z

.field private showMultiWindowTimeBar:Z

.field private showShuffleButton:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/view/View;

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private visibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_control_view:I

    const/16 p3, 0x1388

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    if-eqz p4, :cond_66

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    invoke-virtual {v0, p4, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    :try_start_27
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_rewind_increment:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_fastforward_increment:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_timeout:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    invoke-virtual {p4, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    invoke-static {p4, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z
    :try_end_5d
    .catchall {:try_start_27 .. :try_end_5d} :catchall_61

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_66

    :catchall_61
    move-exception p1

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_66
    :goto_66
    new-instance p4, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    new-instance p4, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    new-instance p4, Ljava/util/Formatter;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    new-array p4, p3, [J

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    new-array p4, p3, [Z

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    new-array p4, p3, [J

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    new-array p3, p3, [Z

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    new-instance p3, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    new-instance p3, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    new-instance p3, Lcom/google/android/exoplayer2/ui/c;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/c;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    new-instance p3, Lcom/google/android/exoplayer2/ui/a;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/TimeBar;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz p2, :cond_e8

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/ui/TimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    :cond_e8
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz p2, :cond_f9

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f9
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz p2, :cond_10a

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10a
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    if-eqz p2, :cond_11b

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11b
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    if-eqz p2, :cond_12c

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12c
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz p2, :cond_13d

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13d
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz p2, :cond_14e

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14e
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_161

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_161
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/view/View;

    if-eqz p2, :cond_172

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeBarMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->next()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previous()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForward()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewind()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/PlaybackPreparer;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerControlView;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekToTimeBarPosition(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_24

    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_21

    return v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method private fastForward()V
    .registers 8

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_22

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_22
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(J)V

    return-void
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .registers 3

    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private hideAfterTimeout()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    if-lez v0, :cond_1e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    :cond_1e
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    :cond_25
    :goto_25
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x58

    if-ne p0, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method private isPlaying()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private next()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3a

    :cond_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_2d

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(IJ)V

    goto :goto_3a

    :cond_2d
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_3a

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(IJ)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private previous()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4d

    :cond_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_48

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-lez v5, :cond_3f

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_48

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v1, :cond_48

    :cond_3f
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(IJ)V

    goto :goto_4d

    :cond_48
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(J)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private requestPlayPauseFocus()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_17

    :cond_e
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_17
    :goto_17
    return-void
.end method

.method private rewind()V
    .registers 5

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(J)V

    return-void
.end method

.method private seekTo(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    :cond_d
    return-void
.end method

.method private seekTo(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(IJ)V

    return-void
.end method

.method private seekToTimeBarPosition(J)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_24

    goto :goto_34

    :cond_24
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_2a

    move-wide p1, v3

    goto :goto_34

    :cond_2a
    sub-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    :goto_34
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(IJ)V

    return-void
.end method

.method private setButtonEnabled(ZLandroid/view/View;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_b
    const p1, 0x3e99999a    # 0.3f

    :goto_e
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateAll()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method private updateNavigation()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_c

    goto/16 :goto_8d

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v3, :cond_4d

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    :goto_4e
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v4, :cond_5c

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    :cond_5c
    const/4 v4, 0x1

    goto :goto_61

    :cond_5e
    const/4 v0, 0x0

    const/4 v3, 0x0

    :cond_60
    const/4 v4, 0x0

    :goto_61
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    if-lez v0, :cond_73

    if-eqz v3, :cond_73

    const/4 v0, 0x1

    goto :goto_74

    :cond_73
    const/4 v0, 0x0

    :goto_74
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    if-lez v0, :cond_80

    if-eqz v3, :cond_80

    goto :goto_81

    :cond_80
    const/4 v1, 0x0

    :goto_81
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v0, :cond_8d

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private updatePlayPauseButton()V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_4d

    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    or-int/2addr v1, v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_2a

    const/16 v6, 0x8

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v5, :cond_48

    if-nez v0, :cond_3d

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    if-eqz v1, :cond_4d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseFocus()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private updateProgress()V
    .registers 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1d8

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_e

    goto/16 :goto_1d8

    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_13c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v5

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v7, :cond_2b

    const/4 v7, 0x0

    goto :goto_2c

    :cond_2b
    move v7, v5

    :goto_2c
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v8, :cond_36

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_37

    :cond_36
    move v8, v5

    :goto_37
    move-wide v9, v2

    move-wide v12, v9

    const/4 v11, 0x0

    :goto_3a
    if-gt v7, v8, :cond_f5

    if-ne v7, v5, :cond_42

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v12

    :cond_42
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v7, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move/from16 v16, v7

    iget-wide v6, v14, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v19, v6, v17

    if-nez v19, :cond_5e

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto/16 :goto_f5

    :cond_5e
    iget v6, v14, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    :goto_60
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v14, v7, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v6, v14, :cond_e6

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v7

    move v14, v11

    const/4 v11, 0x0

    :goto_73
    if-ge v11, v7, :cond_de

    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v15, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v20

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v15, v20, v22

    if-nez v15, :cond_8f

    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v23, v5

    iget-wide v4, v15, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v15, v4, v17

    if-nez v15, :cond_8c

    goto :goto_d8

    :cond_8c
    move-wide/from16 v20, v4

    goto :goto_91

    :cond_8f
    move/from16 v23, v5

    :goto_91
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    add-long v20, v20, v4

    cmp-long v4, v20, v2

    if-ltz v4, :cond_d8

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v15, v20, v4

    if-gtz v15, :cond_d8

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v5, v4

    if-ne v14, v5, :cond_c2

    array-length v5, v4

    if-nez v5, :cond_af

    const/4 v4, 0x1

    goto :goto_b2

    :cond_af
    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    :goto_b2
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    :cond_c2
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    add-long v20, v9, v20

    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v20

    aput-wide v20, v4, v14

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v5

    aput-boolean v5, v4, v14

    add-int/lit8 v14, v14, 0x1

    :cond_d8
    :goto_d8
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v23

    const/4 v4, 0x1

    goto :goto_73

    :cond_de
    move/from16 v23, v5

    add-int/lit8 v6, v6, 0x1

    move v11, v14

    const/4 v4, 0x1

    goto/16 :goto_60

    :cond_e6
    move/from16 v23, v5

    iget-wide v4, v7, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    add-long/2addr v9, v4

    add-int/lit8 v7, v16, 0x1

    move/from16 v5, v23

    const/4 v4, 0x1

    goto/16 :goto_3a

    :cond_f2
    move-wide v9, v2

    move-wide v12, v9

    const/4 v11, 0x0

    :cond_f5
    :goto_f5
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v4

    add-long/2addr v4, v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentBufferedPosition()J

    move-result-wide v6

    add-long/2addr v6, v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_13e

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    array-length v1, v1

    add-int v8, v11, v1

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v10, v9

    if-le v8, v10, :cond_123

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    :cond_123
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    const/4 v12, 0x0

    invoke-static {v9, v12, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v9, v12, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-interface {v1, v9, v10, v8}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    goto :goto_13e

    :cond_13c
    move-wide v4, v2

    move-wide v6, v4

    :cond_13e
    :goto_13e
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v1, :cond_14d

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v8, v9, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14d
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v1, :cond_160

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    if-nez v8, :cond_160

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v8, v9, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_160
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_171

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v6, v7}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    :cond_171
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_17c

    const/4 v1, 0x1

    goto :goto_180

    :cond_17c
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    :goto_180
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1d8

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v2

    const-wide/16 v6, 0x3e8

    if-eqz v2, :cond_1d3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d3

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1a3

    goto :goto_1d3

    :cond_1a3
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1d0

    const/16 v2, 0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/2addr v2, v6

    int-to-long v6, v2

    rem-long/2addr v4, v6

    sub-long v4, v6, v4

    const-wide/16 v8, 0x5

    div-long v8, v6, v8

    cmp-long v2, v4, v8

    if-gez v2, :cond_1c6

    add-long/2addr v4, v6

    :cond_1c6
    cmpl-float v2, v1, v3

    if-nez v2, :cond_1cb

    goto :goto_1ce

    :cond_1cb
    long-to-float v2, v4

    div-float/2addr v2, v1

    float-to-long v4, v2

    :goto_1ce
    move-wide v6, v4

    goto :goto_1d3

    :cond_1d0
    const-wide/16 v1, 0xc8

    move-wide v6, v1

    :cond_1d3
    :goto_1d3
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d8
    :goto_1d8
    return-void
.end method

.method private updateRepeatModeButton()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_5f

    :cond_f
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    if-nez v1, :cond_19

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    return-void

    :cond_22
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_4c

    if-eq v0, v1, :cond_40

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    goto :goto_5a

    :cond_34
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    goto :goto_57

    :cond_40
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    goto :goto_57

    :cond_4c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    :goto_57
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private updateShuffleButton()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/view/View;

    if-nez v0, :cond_f

    goto :goto_3c

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    if-nez v1, :cond_19

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setButtonEnabled(ZLandroid/view/View;)V

    goto :goto_3c

    :cond_22
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2e

    :cond_2b
    const v1, 0x3e99999a    # 0.3f

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private updateTimeBarMode()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    if-eqz v1, :cond_17

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isHandledMediaKey(I)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_67

    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_66

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForward()V

    goto :goto_66

    :cond_1f
    const/16 v1, 0x59

    if-ne v0, v1, :cond_27

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewind()V

    goto :goto_66

    :cond_27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_66

    const/16 p1, 0x55

    if-eq v0, p1, :cond_5a

    const/16 p1, 0x57

    if-eq v0, p1, :cond_56

    const/16 p1, 0x58

    if-eq v0, p1, :cond_52

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4a

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_42

    goto :goto_66

    :cond_42
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_66

    :cond_4a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v3}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_66

    :cond_52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previous()V

    goto :goto_66

    :cond_56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->next()V

    goto :goto_66

    :cond_5a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    :cond_66
    :goto_66
    return v3

    :cond_67
    :goto_67
    return v2
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    :cond_16
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public hide()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    :cond_27
    return-void
.end method

.method public isVisible()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_20

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    goto :goto_2f

    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    :cond_7
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_c

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_18

    :cond_c
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    :goto_18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardMs:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 6

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

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :cond_20
    :goto_20
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_28

    return-void

    :cond_28
    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    :cond_2f
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    :cond_38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 5

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_17

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    :goto_13
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_2e

    :cond_17
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    if-ne v0, v1, :cond_25

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_2e

    :cond_25
    if-ne p1, v1, :cond_2e

    if-ne v0, v2, :cond_2e

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    goto :goto_13

    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindMs:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeBarMode()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    :cond_b
    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    return-void
.end method

.method public show()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseFocus()V

    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerControlView.AnonymousClass1 (com.google.android.exoplayer2.ui.PlayerControlView$1)
.class synthetic Lcom/google/android/exoplayer2/ui/PlayerControlView$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.ui.PlayerControlView.ComponentListener (com.google.android.exoplayer2.ui.PlayerControlView$ComponentListener)
.class final Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_10a

    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_26

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_10a

    :cond_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_35

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_10a

    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_44

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_10a

    :cond_44
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_a3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    if-ne p1, v1, :cond_6b

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/PlaybackPreparer;

    move-result-object p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/PlaybackPreparer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/PlaybackPreparer;->preparePlayback()V

    goto :goto_96

    :cond_6b
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_96

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    goto :goto_b8

    :cond_a3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_bc

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b8
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_10a

    :cond_bc
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_e8

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_10a

    :cond_e8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_10a

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetShuffleModeEnabled(Lcom/google/android/exoplayer2/Player;Z)Z

    :cond_10a
    :goto_10a
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

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$102(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$102(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_15

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$600(Lcom/google/android/exoplayer2/ui/PlayerControlView;J)V

    :cond_15
    return-void
.end method

.method public synthetic onSeekProcessed()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/b;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/b;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerControlView.VisibilityListener (com.google.android.exoplayer2.ui.PlayerControlView$VisibilityListener)
.class public interface abstract Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibilityListener"
.end annotation


# virtual methods
.method public abstract onVisibilityChange(I)V
.end method

###### Class com.google.android.exoplayer2.ui.a (com.google.android.exoplayer2.ui.a)
.class public final synthetic Lcom/google/android/exoplayer2/ui/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.c (com.google.android.exoplayer2.ui.c)
.class public final synthetic Lcom/google/android/exoplayer2/ui/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method
