###### Class com.google.android.exoplayer2.ui.TrackSelectionView (com.google.android.exoplayer2.ui.TrackSelectionView)
.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;
    }
.end annotation


# instance fields
.field private allowAdaptiveSelections:Z

.field private final componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

.field private final defaultView:Landroid/widget/CheckedTextView;

.field private final disableView:Landroid/widget/CheckedTextView;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isDisabled:Z

.field private override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

.field private rendererIndex:I

.field private final selectableItemBackgroundResourceId:I

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private trackViews:[[Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [I

    const/4 v1, 0x0

    const v2, 0x101030e

    aput v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    new-instance p1, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    const p2, 0x109000f

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->applySelection()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private applySelection()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v1, :cond_19

    iget v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    goto :goto_1e

    :cond_19
    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :goto_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void
.end method

.method public static getDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;",
            "I)",
            "Landroid/util/Pair<",
            "Landroid/app/AlertDialog;",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionView;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/google/android/exoplayer2/ui/R$layout;->exo_track_selection_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_track_selection_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->init(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V

    new-instance p2, Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {p2, v1}, Lcom/google/android/exoplayer2/ui/e;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getTracksAdding([II)[I
    .registers 3

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method

.method private static getTracksRemoving([II)[I
    .registers 8

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v4, p0, v2

    if-eq v4, p1, :cond_13

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onDisableViewClicked()V

    goto :goto_13

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onDefaultViewClicked()V

    goto :goto_13

    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onTrackViewClicked(Landroid/view/View;)V

    :goto_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    return-void
.end method

.method private onDefaultViewClicked()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    return-void
.end method

.method private onDisableViewClicked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    return-void
.end method

.method private onTrackViewClicked(Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v4, 0x1

    if-eqz v3, :cond_51

    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v5, v2, :cond_51

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-nez v5, :cond_27

    goto :goto_51

    :cond_27
    iget v0, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_45

    if-ne v0, v4, :cond_3b

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    goto :goto_5c

    :cond_3b
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getTracksRemoving([II)[I

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    goto :goto_4e

    :cond_45
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getTracksAdding([II)[I

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    :goto_4e
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_5c

    :cond_51
    :goto_51
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v3, v4, [I

    aput v1, v3, v0

    invoke-direct {p1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    :goto_5c
    return-void
.end method

.method private updateViewStates()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_45

    const/4 v1, 0x0

    :goto_20
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v1, v5, :cond_42

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v5, :cond_3b

    iget v6, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v6, v0, :cond_3b

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->containsTrack(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    :goto_3c
    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_45
    return-void
.end method

.method private updateViews()V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    const/4 v2, 0x3

    if-lt v0, v2, :cond_f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    :goto_19
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v3, 0x0

    if-eqz v2, :cond_f0

    if-nez v0, :cond_22

    goto/16 :goto_f0

    :cond_22
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    iget v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->override:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v2, v2, [[Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    :goto_55
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v5, :cond_ec

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eqz v5, :cond_77

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-le v5, v1, :cond_77

    iget v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v0, v5, v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v5

    if-eqz v5, :cond_77

    const/4 v5, 0x1

    goto :goto_78

    :cond_77
    const/4 v5, 0x0

    :goto_78
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v7, v7, [Landroid/widget/CheckedTextView;

    aput-object v7, v6, v2

    const/4 v6, 0x0

    :goto_81
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_e8

    if-nez v6, :cond_92

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {v7, v8, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_92
    if-eqz v5, :cond_98

    const v7, 0x1090010

    goto :goto_9b

    :cond_98
    const v7, 0x109000f

    :goto_9b
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v8, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    iget v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/exoplayer2/ui/TrackNameProvider;->getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v0, v8, v2, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_d6

    invoke-virtual {v7, v1}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_dc

    :cond_d6
    invoke-virtual {v7, v3}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    invoke-virtual {v7, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :goto_dc
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v8, v8, v2

    aput-object v7, v8, v6

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    :cond_e8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_55

    :cond_ec
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    return-void

    :cond_f0
    :goto_f0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    return-void
.end method

.method public setAllowAdaptiveSelections(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    :cond_9
    return-void
.end method

.method public setShowDisableOption(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lcom/google/android/exoplayer2/ui/TrackNameProvider;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.TrackSelectionView.AnonymousClass1 (com.google.android.exoplayer2.ui.TrackSelectionView$1)
.class synthetic Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.ui.TrackSelectionView.ComponentListener (com.google.android.exoplayer2.ui.TrackSelectionView$ComponentListener)
.class Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->access$100(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.e (com.google.android.exoplayer2.ui.e)
.class public final synthetic Lcom/google/android/exoplayer2/ui/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->b:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->b:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    return-void
.end method
