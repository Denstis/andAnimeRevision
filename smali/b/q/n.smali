###### Class b.q.n (b.q.n)
.class public abstract Lb/q/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/n$f;,
        Lb/q/n$e;,
        Lb/q/n$d;,
        Lb/q/n$g;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Lb/q/g;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb/e/a<",
            "Landroid/animation/Animator;",
            "Lb/q/n$d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Lb/q/u;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/t;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Lb/q/n$f;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/n$g;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Lb/q/r;

.field private mPathMotion:Lb/q/g;

.field private mPaused:Z

.field mPropagation:Lb/q/q;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Lb/q/u;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/t;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lb/q/n;->DEFAULT_MATCH_ORDER:[I

    new-instance v0, Lb/q/n$a;

    invoke-direct {v0}, Lb/q/n$a;-><init>()V

    sput-object v0, Lb/q/n;->STRAIGHT_PATH_MOTION:Lb/q/g;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/q/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/q/n;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/q/n;->mStartDelay:J

    iput-wide v0, p0, Lb/q/n;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lb/q/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, Lb/q/u;

    invoke-direct {v1}, Lb/q/u;-><init>()V

    iput-object v1, p0, Lb/q/n;->mStartValues:Lb/q/u;

    new-instance v1, Lb/q/u;

    invoke-direct {v1}, Lb/q/u;-><init>()V

    iput-object v1, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iput-object v0, p0, Lb/q/n;->mParent:Lb/q/r;

    sget-object v1, Lb/q/n;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lb/q/n;->mMatchOrder:[I

    iput-object v0, p0, Lb/q/n;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/q/n;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/q/n;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Lb/q/n;->mNumInstances:I

    iput-boolean v1, p0, Lb/q/n;->mPaused:Z

    iput-boolean v1, p0, Lb/q/n;->mEnded:Z

    iput-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, Lb/q/n;->STRAIGHT_PATH_MOTION:Lb/q/g;

    iput-object v0, p0, Lb/q/n;->mPathMotion:Lb/q/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/q/n;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/q/n;->mStartDelay:J

    iput-wide v0, p0, Lb/q/n;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lb/q/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/q/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, Lb/q/u;

    invoke-direct {v1}, Lb/q/u;-><init>()V

    iput-object v1, p0, Lb/q/n;->mStartValues:Lb/q/u;

    new-instance v1, Lb/q/u;

    invoke-direct {v1}, Lb/q/u;-><init>()V

    iput-object v1, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iput-object v0, p0, Lb/q/n;->mParent:Lb/q/r;

    sget-object v1, Lb/q/n;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lb/q/n;->mMatchOrder:[I

    iput-object v0, p0, Lb/q/n;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/q/n;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/q/n;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Lb/q/n;->mNumInstances:I

    iput-boolean v1, p0, Lb/q/n;->mPaused:Z

    iput-boolean v1, p0, Lb/q/n;->mEnded:Z

    iput-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, Lb/q/n;->STRAIGHT_PATH_MOTION:Lb/q/g;

    iput-object v0, p0, Lb/q/n;->mPathMotion:Lb/q/g;

    sget-object v0, Lb/q/m;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const/4 v2, -0x1

    const-string v3, "duration"

    const/4 v4, 0x1

    invoke-static {v0, p2, v3, v4, v2}, Landroidx/core/content/c/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_83

    invoke-virtual {p0, v3, v4}, Lb/q/n;->setDuration(J)Lb/q/n;

    :cond_83
    const/4 v3, 0x2

    const-string v4, "startDelay"

    invoke-static {v0, p2, v4, v3, v2}, Landroidx/core/content/c/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_92

    invoke-virtual {p0, v2, v3}, Lb/q/n;->setStartDelay(J)Lb/q/n;

    :cond_92
    const-string v2, "interpolator"

    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/content/c/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_a1

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/q/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/n;

    :cond_a1
    const/4 p1, 0x3

    const-string v1, "matchOrder"

    invoke-static {v0, p2, v1, p1}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b1

    invoke-static {p1}, Lb/q/n;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/q/n;->setMatchOrder([I)V

    :cond_b1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addUnmatched(Lb/e/a;Lb/e/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lb/e/g;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_24

    invoke-virtual {p1, v1}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/t;

    iget-object v4, v2, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    :goto_24
    invoke-virtual {p2}, Lb/e/g;->size()I

    move-result p1

    if-ge v0, p1, :cond_45

    invoke-virtual {p2, v0}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/q/t;

    iget-object v1, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_45
    return-void
.end method

.method private static addViewValues(Lb/q/u;Landroid/view/View;Lb/q/t;)V
    .registers 6

    iget-object v0, p0, Lb/q/u;->a:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1f

    iget-object v1, p0, Lb/q/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1a

    iget-object v1, p0, Lb/q/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    :cond_1a
    iget-object v1, p0, Lb/q/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    :goto_1f
    invoke-static {p1}, Lb/h/o/s;->q(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_38

    iget-object v1, p0, Lb/q/u;->d:Lb/e/a;

    invoke-virtual {v1, p2}, Lb/e/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lb/q/u;->d:Lb/e/a;

    invoke-virtual {v1, p2, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_33
    iget-object v1, p0, Lb/q/u;->d:Lb/e/a;

    invoke-virtual {v1, p2, p1}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p2, p0, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {p2, v1, v2}, Lb/e/d;->c(J)I

    move-result p2

    if-ltz p2, :cond_74

    iget-object p1, p0, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {p1, v1, v2}, Lb/e/d;->b(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7d

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lb/h/o/s;->b(Landroid/view/View;Z)V

    iget-object p0, p0, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {p0, v1, v2, v0}, Lb/e/d;->c(JLjava/lang/Object;)V

    goto :goto_7d

    :cond_74
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lb/h/o/s;->b(Landroid/view/View;Z)V

    iget-object p0, p0, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {p0, v1, v2, p1}, Lb/e/d;->c(JLjava/lang/Object;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private static alreadyContains([II)Z
    .registers 6

    aget v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_f

    aget v3, p0, v2

    if-ne v3, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lb/q/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lb/q/n;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget-object v1, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_3f

    iget-object v4, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    return-void

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_69

    new-instance v1, Lb/q/t;

    invoke-direct {v1}, Lb/q/t;-><init>()V

    iput-object p1, v1, Lb/q/t;->b:Landroid/view/View;

    if-eqz p2, :cond_54

    invoke-virtual {p0, v1}, Lb/q/n;->captureStartValues(Lb/q/t;)V

    goto :goto_57

    :cond_54
    invoke-virtual {p0, v1}, Lb/q/n;->captureEndValues(Lb/q/t;)V

    :goto_57
    iget-object v3, v1, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lb/q/n;->capturePropagationValues(Lb/q/t;)V

    if-eqz p2, :cond_64

    iget-object v3, p0, Lb/q/n;->mStartValues:Lb/q/u;

    goto :goto_66

    :cond_64
    iget-object v3, p0, Lb/q/n;->mEndValues:Lb/q/u;

    :goto_66
    invoke-static {v3, p1, v1}, Lb/q/n;->addViewValues(Lb/q/u;Landroid/view/View;Lb/q/t;)V

    :cond_69
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lb/q/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_7c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    return-void

    :cond_7c
    iget-object v0, p0, Lb/q/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_87

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    return-void

    :cond_87
    iget-object v0, p0, Lb/q/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_90
    if-ge v1, v0, :cond_a4

    iget-object v3, p0, Lb/q/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    return-void

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_a4
    check-cast p1, Landroid/view/ViewGroup;

    :goto_a6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b6

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lb/q/n;->captureHierarchy(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    :cond_b6
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p3, :cond_d

    invoke-static {p1, p2}, Lb/q/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_11

    :cond_d
    invoke-static {p1, p2}, Lb/q/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_11
    :goto_11
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_d

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, Lb/q/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-static {p0, p1}, Lb/q/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_d
    :goto_d
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_d

    if-eqz p3, :cond_9

    invoke-static {p1, p2}, Lb/q/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-static {p1, p2}, Lb/q/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_d
    :goto_d
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_d

    if-eqz p3, :cond_9

    invoke-static {p1, p2}, Lb/q/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-static {p1, p2}, Lb/q/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_d
    :goto_d
    return-object p1
.end method

.method private static getRunningAnimators()Lb/e/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/a<",
            "Landroid/animation/Animator;",
            "Lb/q/n$d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/q/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e/a;

    if-nez v0, :cond_14

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    sget-object v1, Lb/q/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isValueChanged(Lb/q/t;Lb/q/t;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_13

    if-nez p1, :cond_13

    const/4 p2, 0x0

    goto :goto_1d

    :cond_13
    if-eqz p0, :cond_1d

    if-nez p1, :cond_18

    goto :goto_1d

    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_1d
    :goto_1d
    return p2
.end method

.method private matchIds(Lb/e/a;Lb/e/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p1, v2}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/q/t;

    invoke-virtual {p2, v3}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/t;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    iget-object v6, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private matchInstances(Lb/e/a;Lb/e/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lb/e/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3b

    invoke-virtual {p1, v0}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_38

    invoke-virtual {p0, v1}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p2, v1}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/t;

    if-eqz v1, :cond_38

    iget-object v2, v1, Lb/q/t;->b:Landroid/view/View;

    if-eqz v2, :cond_38

    invoke-virtual {p0, v2}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p1, v0}, Lb/e/g;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/t;

    iget-object v3, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_3b
    return-void
.end method

.method private matchItemIds(Lb/e/a;Lb/e/a;Lb/e/d;Lb/e/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/d<",
            "Landroid/view/View;",
            ">;",
            "Lb/e/d<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lb/e/d;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    invoke-virtual {p3, v1}, Lb/e/d;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p3, v1}, Lb/e/d;->a(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Lb/e/d;->b(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p1, v2}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/q/t;

    invoke-virtual {p2, v3}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/t;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    iget-object v6, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private matchNames(Lb/e/a;Lb/e/a;Lb/e/a;Lb/e/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/t;",
            ">;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lb/e/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    invoke-virtual {p3, v1}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p3, v1}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p1, v2}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/q/t;

    invoke-virtual {p2, v3}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/t;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    iget-object v6, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Lb/q/u;Lb/q/u;)V
    .registers 8

    new-instance v0, Lb/e/a;

    iget-object v1, p1, Lb/q/u;->a:Lb/e/a;

    invoke-direct {v0, v1}, Lb/e/a;-><init>(Lb/e/g;)V

    new-instance v1, Lb/e/a;

    iget-object v2, p2, Lb/q/u;->a:Lb/e/a;

    invoke-direct {v1, v2}, Lb/e/a;-><init>(Lb/e/g;)V

    const/4 v2, 0x0

    :goto_f
    iget-object v3, p0, Lb/q/n;->mMatchOrder:[I

    array-length v4, v3

    if-ge v2, v4, :cond_41

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_23

    goto :goto_3e

    :cond_23
    iget-object v3, p1, Lb/q/u;->c:Lb/e/d;

    iget-object v4, p2, Lb/q/u;->c:Lb/e/d;

    invoke-direct {p0, v0, v1, v3, v4}, Lb/q/n;->matchItemIds(Lb/e/a;Lb/e/a;Lb/e/d;Lb/e/d;)V

    goto :goto_3e

    :cond_2b
    iget-object v3, p1, Lb/q/u;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lb/q/u;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lb/q/n;->matchIds(Lb/e/a;Lb/e/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_3e

    :cond_33
    iget-object v3, p1, Lb/q/u;->d:Lb/e/a;

    iget-object v4, p2, Lb/q/u;->d:Lb/e/a;

    invoke-direct {p0, v0, v1, v3, v4}, Lb/q/n;->matchNames(Lb/e/a;Lb/e/a;Lb/e/a;Lb/e/a;)V

    goto :goto_3e

    :cond_3b
    invoke-direct {p0, v0, v1}, Lb/q/n;->matchInstances(Lb/e/a;Lb/e/a;)V

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_41
    invoke-direct {p0, v0, v1}, Lb/q/n;->addUnmatched(Lb/e/a;Lb/e/a;)V

    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 7

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2a

    const/4 v3, 0x3

    aput v3, p0, v2

    goto :goto_5d

    :cond_2a
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    aput v5, p0, v2

    goto :goto_5d

    :cond_35
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x2

    aput v3, p0, v2

    goto :goto_5d

    :cond_41
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v3, 0x4

    aput v3, p0, v2

    goto :goto_5d

    :cond_4d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_5d
    add-int/2addr v2, v5

    goto :goto_f

    :cond_5f
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown match type in matchOrder: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    return-object p0
.end method

.method private runAnimator(Landroid/animation/Animator;Lb/e/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Lb/e/a<",
            "Landroid/animation/Animator;",
            "Lb/q/n$d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    new-instance v0, Lb/q/n$b;

    invoke-direct {v0, p0, p2}, Lb/q/n$b;-><init>(Lb/q/n;Lb/e/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Lb/q/n;->animate(Landroid/animation/Animator;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Lb/q/n$g;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Lb/q/n;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 7

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lb/q/n;->end()V

    goto :goto_3e

    :cond_6
    invoke-virtual {p0}, Lb/q/n;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    invoke-virtual {p0}, Lb/q/n;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_17
    invoke-virtual {p0}, Lb/q/n;->getStartDelay()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_26

    invoke-virtual {p0}, Lb/q/n;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_26
    invoke-virtual {p0}, Lb/q/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lb/q/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_33
    new-instance v0, Lb/q/n$c;

    invoke-direct {v0, p0}, Lb/q/n$c;-><init>(Lb/q/n;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_3e
    return-void
.end method

.method protected cancel()V
    .registers 5

    iget-object v0, p0, Lb/q/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lb/q/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_3d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/n$g;

    invoke-interface {v3, p0}, Lb/q/n$g;->d(Lb/q/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3d
    return-void
.end method

.method public abstract captureEndValues(Lb/q/t;)V
.end method

.method capturePropagationValues(Lb/q/t;)V
    .registers 7

    iget-object v0, p0, Lb/q/n;->mPropagation:Lb/q/q;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lb/q/n;->mPropagation:Lb/q/q;

    invoke-virtual {v0}, Lb/q/q;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_28

    iget-object v3, p1, Lb/q/t;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_29

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_28
    const/4 v1, 0x1

    :goto_29
    if-nez v1, :cond_30

    iget-object v0, p0, Lb/q/n;->mPropagation:Lb/q/q;

    invoke-virtual {v0, p1}, Lb/q/q;->a(Lb/q/t;)V

    :cond_30
    return-void
.end method

.method public abstract captureStartValues(Lb/q/t;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 8

    invoke-virtual {p0, p2}, Lb/q/n;->clearValues(Z)V

    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    :cond_14
    iget-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1e
    iget-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2e

    :cond_29
    invoke-direct {p0, p1, p2}, Lb/q/n;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_a4

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    :goto_2f
    iget-object v2, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6e

    iget-object v2, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6b

    new-instance v3, Lb/q/t;

    invoke-direct {v3}, Lb/q/t;-><init>()V

    iput-object v2, v3, Lb/q/t;->b:Landroid/view/View;

    if-eqz p2, :cond_56

    invoke-virtual {p0, v3}, Lb/q/n;->captureStartValues(Lb/q/t;)V

    goto :goto_59

    :cond_56
    invoke-virtual {p0, v3}, Lb/q/n;->captureEndValues(Lb/q/t;)V

    :goto_59
    iget-object v4, v3, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lb/q/n;->capturePropagationValues(Lb/q/t;)V

    if-eqz p2, :cond_66

    iget-object v4, p0, Lb/q/n;->mStartValues:Lb/q/u;

    goto :goto_68

    :cond_66
    iget-object v4, p0, Lb/q/n;->mEndValues:Lb/q/u;

    :goto_68
    invoke-static {v4, v2, v3}, Lb/q/n;->addViewValues(Lb/q/u;Landroid/view/View;Lb/q/t;)V

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_6e
    const/4 p1, 0x0

    :goto_6f
    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a4

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lb/q/t;

    invoke-direct {v2}, Lb/q/t;-><init>()V

    iput-object v0, v2, Lb/q/t;->b:Landroid/view/View;

    if-eqz p2, :cond_8c

    invoke-virtual {p0, v2}, Lb/q/n;->captureStartValues(Lb/q/t;)V

    goto :goto_8f

    :cond_8c
    invoke-virtual {p0, v2}, Lb/q/n;->captureEndValues(Lb/q/t;)V

    :goto_8f
    iget-object v3, v2, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lb/q/n;->capturePropagationValues(Lb/q/t;)V

    if-eqz p2, :cond_9c

    iget-object v3, p0, Lb/q/n;->mStartValues:Lb/q/u;

    goto :goto_9e

    :cond_9c
    iget-object v3, p0, Lb/q/n;->mEndValues:Lb/q/u;

    :goto_9e
    invoke-static {v3, v0, v2}, Lb/q/n;->addViewValues(Lb/q/u;Landroid/view/View;Lb/q/t;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6f

    :cond_a4
    :goto_a4
    if-nez p2, :cond_e8

    iget-object p1, p0, Lb/q/n;->mNameOverrides:Lb/e/a;

    if-eqz p1, :cond_e8

    invoke-virtual {p1}, Lb/e/g;->size()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_b4
    if-ge v0, p1, :cond_cc

    iget-object v2, p0, Lb/q/n;->mNameOverrides:Lb/e/a;

    invoke-virtual {v2, v0}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object v3, v3, Lb/q/u;->d:Lb/e/a;

    invoke-virtual {v3, v2}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_cc
    :goto_cc
    if-ge v1, p1, :cond_e8

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_e5

    iget-object v2, p0, Lb/q/n;->mNameOverrides:Lb/e/a;

    invoke-virtual {v2, v1}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object v3, v3, Lb/q/u;->d:Lb/e/a;

    invoke-virtual {v3, v2, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e5
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    :cond_e8
    return-void
.end method

.method clearValues(Z)V
    .registers 2

    if-eqz p1, :cond_13

    iget-object p1, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object p1, p1, Lb/q/u;->a:Lb/e/a;

    invoke-virtual {p1}, Lb/e/g;->clear()V

    iget-object p1, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object p1, p1, Lb/q/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lb/q/n;->mStartValues:Lb/q/u;

    goto :goto_23

    :cond_13
    iget-object p1, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iget-object p1, p1, Lb/q/u;->a:Lb/e/a;

    invoke-virtual {p1}, Lb/e/g;->clear()V

    iget-object p1, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iget-object p1, p1, Lb/q/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lb/q/n;->mEndValues:Lb/q/u;

    :goto_23
    iget-object p1, p1, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {p1}, Lb/e/d;->a()V

    return-void
.end method

.method public clone()Lb/q/n;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    new-instance v2, Lb/q/u;

    invoke-direct {v2}, Lb/q/u;-><init>()V

    iput-object v2, v1, Lb/q/n;->mStartValues:Lb/q/u;

    new-instance v2, Lb/q/u;

    invoke-direct {v2}, Lb/q/u;-><init>()V

    iput-object v2, v1, Lb/q/n;->mEndValues:Lb/q/u;

    iput-object v0, v1, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    iput-object v0, v1, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/q/n;->clone()Lb/q/n;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lb/q/u;Lb/q/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lb/q/u;",
            "Lb/q/u;",
            "Ljava/util/ArrayList<",
            "Lb/q/t;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lb/q/t;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Lb/q/n;->getRunningAnimators()Lb/e/a;

    move-result-object v8

    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v10, :cond_12f

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/t;

    move-object/from16 v14, p5

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/t;

    if-eqz v2, :cond_34

    iget-object v5, v2, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const/4 v2, 0x0

    :cond_34
    if-eqz v3, :cond_3f

    iget-object v5, v3, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 v3, 0x0

    :cond_3f
    if-nez v2, :cond_49

    if-nez v3, :cond_49

    :cond_43
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_129

    :cond_49
    if-eqz v2, :cond_56

    if-eqz v3, :cond_56

    invoke-virtual {v6, v2, v3}, Lb/q/n;->isTransitionRequired(Lb/q/t;Lb/q/t;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_56

    :cond_54
    const/4 v5, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v5, 0x1

    :goto_57
    if-eqz v5, :cond_43

    invoke-virtual {v6, v7, v2, v3}, Lb/q/n;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_43

    if-eqz v3, :cond_ea

    iget-object v15, v3, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_de

    if-eqz v4, :cond_de

    array-length v11, v4

    if-lez v11, :cond_de

    new-instance v11, Lb/q/t;

    invoke-direct {v11}, Lb/q/t;-><init>()V

    iput-object v15, v11, Lb/q/t;->b:Landroid/view/View;

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    iget-object v5, v10, Lb/q/u;->a:Lb/e/a;

    invoke-virtual {v5, v15}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/t;

    if-eqz v5, :cond_a5

    const/4 v10, 0x0

    :goto_86
    array-length v13, v4

    if-ge v10, v13, :cond_a5

    iget-object v13, v11, Lb/q/t;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Lb/q/t;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_86

    :cond_a5
    move/from16 v18, v12

    invoke-virtual {v8}, Lb/e/g;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_ac
    if-ge v5, v4, :cond_db

    invoke-virtual {v8, v5}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    invoke-virtual {v8, v10}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/q/n$d;

    iget-object v12, v10, Lb/q/n$d;->c:Lb/q/t;

    if-eqz v12, :cond_d8

    iget-object v12, v10, Lb/q/n$d;->a:Landroid/view/View;

    if-ne v12, v15, :cond_d8

    iget-object v12, v10, Lb/q/n$d;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d8

    iget-object v10, v10, Lb/q/n$d;->c:Lb/q/t;

    invoke-virtual {v10, v11}, Lb/q/t;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d8

    const/4 v5, 0x0

    goto :goto_e7

    :cond_d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_db
    move-object/from16 v5, v17

    goto :goto_e7

    :cond_de
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v5, v17

    const/4 v11, 0x0

    :goto_e7
    move-object v10, v5

    move-object v5, v11

    goto :goto_f6

    :cond_ea
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    iget-object v4, v2, Lb/q/t;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_f6
    if-eqz v10, :cond_129

    iget-object v4, v6, Lb/q/n;->mPropagation:Lb/q/q;

    if-eqz v4, :cond_10e

    invoke-virtual {v4, v7, v6, v2, v3}, Lb/q/q;->a(Landroid/view/ViewGroup;Lb/q/n;Lb/q/t;Lb/q/t;)J

    move-result-wide v2

    iget-object v4, v6, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_10e
    move-wide v11, v0

    new-instance v13, Lb/q/n$d;

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lb/q/e0;->d(Landroid/view/View;)Lb/q/m0;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lb/q/n$d;-><init>(Landroid/view/View;Ljava/lang/String;Lb/q/n;Lb/q/m0;Lb/q/t;)V

    invoke-virtual {v8, v10, v13}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_129
    :goto_129
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_17

    :cond_12f
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_159

    const/4 v2, 0x0

    :goto_136
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_159

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, v6, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_136

    :cond_159
    return-void
.end method

.method protected end()V
    .registers 7

    iget v0, p0, Lb/q/n;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lb/q/n;->mNumInstances:I

    iget v0, p0, Lb/q/n;->mNumInstances:I

    if-nez v0, :cond_6c

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/n$g;

    invoke-interface {v5, p0}, Lb/q/n$g;->c(Lb/q/n;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v3, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object v3, v3, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {v3}, Lb/e/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_4d

    iget-object v3, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object v3, v3, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {v3, v0}, Lb/e/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4a

    invoke-static {v3, v2}, Lb/h/o/s;->b(Landroid/view/View;Z)V

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iget-object v3, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iget-object v3, v3, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {v3}, Lb/e/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_6a

    iget-object v3, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iget-object v3, v3, Lb/q/u;->c:Lb/e/d;

    invoke-virtual {v3, v0}, Lb/e/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_67

    invoke-static {v3, v2}, Lb/h/o/s;->b(Landroid/view/View;Z)V

    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_6a
    iput-boolean v1, p0, Lb/q/n;->mEnded:Z

    :cond_6c
    return-void
.end method

.method public excludeChildren(IZ)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lb/q/n;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lb/q/n;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lb/q/n;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lb/q/n;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lb/q/n;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lb/q/n;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lb/q/n;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lb/q/n;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/q/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-static {}, Lb/q/n;->getRunningAnimators()Lb/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/g;->size()I

    move-result v1

    if-eqz p1, :cond_32

    invoke-static {p1}, Lb/q/e0;->d(Landroid/view/View;)Lb/q/m0;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_32

    invoke-virtual {v0, v1}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n$d;

    iget-object v3, v2, Lb/q/n$d;->a:Landroid/view/View;

    if-eqz v3, :cond_2f

    if-eqz p1, :cond_2f

    iget-object v2, v2, Lb/q/n$d;->d:Lb/q/m0;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v1}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_32
    return-void
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lb/q/n;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lb/q/n;->mEpicenterCallback:Lb/q/n$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0, p0}, Lb/q/n$f;->a(Lb/q/n;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Lb/q/n$f;
    .registers 2

    iget-object v0, p0, Lb/q/n;->mEpicenterCallback:Lb/q/n$f;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    iget-object v0, p0, Lb/q/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Lb/q/t;
    .registers 9

    iget-object v0, p0, Lb/q/n;->mParent:Lb/q/r;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lb/q/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lb/q/t;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    iget-object v0, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    :goto_10
    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_2e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/t;

    if-nez v5, :cond_25

    return-object v1

    :cond_25
    iget-object v5, v5, Lb/q/t;->b:Landroid/view/View;

    if-ne v5, p1, :cond_2b

    move v3, v4

    goto :goto_2e

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2e
    :goto_2e
    if-ltz v3, :cond_3e

    if-eqz p2, :cond_35

    iget-object p1, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_37

    :cond_35
    iget-object p1, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    :goto_37
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lb/q/t;

    :cond_3e
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/q/n;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Lb/q/g;
    .registers 2

    iget-object v0, p0, Lb/q/n;->mPathMotion:Lb/q/g;

    return-object v0
.end method

.method public getPropagation()Lb/q/q;
    .registers 2

    iget-object v0, p0, Lb/q/n;->mPropagation:Lb/q/q;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-wide v0, p0, Lb/q/n;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lb/q/t;
    .registers 4

    iget-object v0, p0, Lb/q/n;->mParent:Lb/q/r;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lb/q/n;->getTransitionValues(Landroid/view/View;Z)Lb/q/t;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    iget-object p2, p0, Lb/q/n;->mStartValues:Lb/q/u;

    goto :goto_10

    :cond_e
    iget-object p2, p0, Lb/q/n;->mEndValues:Lb/q/u;

    :goto_10
    iget-object p2, p2, Lb/q/u;->a:Lb/e/a;

    invoke-virtual {p2, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/q/t;

    return-object p1
.end method

.method public isTransitionRequired(Lb/q/t;Lb/q/t;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    invoke-virtual {p0}, Lb/q/n;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_39

    aget-object v5, v2, v4

    invoke-static {p1, p2, v5}, Lb/q/n;->isValueChanged(Lb/q/t;Lb/q/t;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_38

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1c
    iget-object v2, p1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lb/q/n;->isValueChanged(Lb/q/t;Lb/q/t;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_38
    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lb/q/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lb/q/n;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v1, :cond_3c

    iget-object v4, p0, Lb/q/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    return v2

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3c
    iget-object v1, p0, Lb/q/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    invoke-static {p1}, Lb/h/o/s;->q(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lb/q/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Lb/h/o/s;->q(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    return v2

    :cond_53
    iget-object v1, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_79

    iget-object v1, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_6e
    iget-object v1, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_78
    return v3

    :cond_79
    iget-object v1, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_bd

    :cond_8e
    iget-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_9d

    invoke-static {p1}, Lb/h/o/s;->q(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    return v3

    :cond_9d
    iget-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_bc

    const/4 v0, 0x0

    :goto_a2
    iget-object v1, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_bc

    iget-object v1, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    return v3

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_bc
    return v2

    :cond_bd
    :goto_bd
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .registers 7

    iget-boolean v0, p0, Lb/q/n;->mEnded:Z

    if-nez v0, :cond_59

    invoke-static {}, Lb/q/n;->getRunningAnimators()Lb/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/g;->size()I

    move-result v1

    invoke-static {p1}, Lb/q/e0;->d(Landroid/view/View;)Lb/q/m0;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_32

    invoke-virtual {v0, v1}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/n$d;

    iget-object v4, v3, Lb/q/n$d;->a:Landroid/view/View;

    if-eqz v4, :cond_2f

    iget-object v3, v3, Lb/q/n$d;->d:Lb/q/m0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0, v1}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Lb/q/a;->a(Landroid/animation/Animator;)V

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_32
    iget-object p1, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_57

    iget-object p1, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_57

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/n$g;

    invoke-interface {v3, p0}, Lb/q/n$g;->b(Lb/q/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_57
    iput-boolean v2, p0, Lb/q/n;->mPaused:Z

    :cond_59
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object v1, p0, Lb/q/n;->mEndValues:Lb/q/u;

    invoke-direct {p0, v0, v1}, Lb/q/n;->matchStartAndEnd(Lb/q/u;Lb/q/u;)V

    invoke-static {}, Lb/q/n;->getRunningAnimators()Lb/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/g;->size()I

    move-result v1

    invoke-static {p1}, Lb/q/e0;->d(Landroid/view/View;)Lb/q/m0;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_23
    if-ltz v1, :cond_75

    invoke-virtual {v0, v1}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_72

    invoke-virtual {v0, v4}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/n$d;

    if-eqz v5, :cond_72

    iget-object v6, v5, Lb/q/n$d;->a:Landroid/view/View;

    if-eqz v6, :cond_72

    iget-object v6, v5, Lb/q/n$d;->d:Lb/q/m0;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    iget-object v6, v5, Lb/q/n$d;->c:Lb/q/t;

    iget-object v7, v5, Lb/q/n$d;->a:Landroid/view/View;

    invoke-virtual {p0, v7, v3}, Lb/q/n;->getTransitionValues(Landroid/view/View;Z)Lb/q/t;

    move-result-object v8

    invoke-virtual {p0, v7, v3}, Lb/q/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lb/q/t;

    move-result-object v7

    if-nez v8, :cond_51

    if-eqz v7, :cond_5b

    :cond_51
    iget-object v5, v5, Lb/q/n$d;->e:Lb/q/n;

    invoke-virtual {v5, v6, v7}, Lb/q/n;->isTransitionRequired(Lb/q/t;Lb/q/t;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    if-eqz v5, :cond_72

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_6b

    goto :goto_6f

    :cond_6b
    invoke-virtual {v0, v4}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_6f
    :goto_6f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_75
    iget-object v6, p0, Lb/q/n;->mStartValues:Lb/q/u;

    iget-object v7, p0, Lb/q/n;->mEndValues:Lb/q/u;

    iget-object v8, p0, Lb/q/n;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Lb/q/n;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lb/q/n;->createAnimators(Landroid/view/ViewGroup;Lb/q/u;Lb/q/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lb/q/n;->runAnimators()V

    return-void
.end method

.method public removeListener(Lb/q/n$g;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    :cond_13
    return-object p0
.end method

.method public removeTarget(I)Lb/q/n;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Lb/q/n;
    .registers 3

    iget-object v0, p0, Lb/q/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 7

    iget-boolean v0, p0, Lb/q/n;->mPaused:Z

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lb/q/n;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    invoke-static {}, Lb/q/n;->getRunningAnimators()Lb/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/g;->size()I

    move-result v2

    invoke-static {p1}, Lb/q/e0;->d(Landroid/view/View;)Lb/q/m0;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_37

    invoke-virtual {v0, v2}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/n$d;

    iget-object v4, v3, Lb/q/n$d;->a:Landroid/view/View;

    if-eqz v4, :cond_34

    iget-object v3, v3, Lb/q/n$d;->d:Lb/q/m0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0, v2}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Lb/q/a;->b(Landroid/animation/Animator;)V

    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_37
    iget-object p1, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5c

    iget-object p1, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v0, :cond_5c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/n$g;

    invoke-interface {v3, p0}, Lb/q/n$g;->e(Lb/q/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5c
    iput-boolean v1, p0, Lb/q/n;->mPaused:Z

    :cond_5e
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    invoke-virtual {p0}, Lb/q/n;->start()V

    invoke-static {}, Lb/q/n;->getRunningAnimators()Lb/e/a;

    move-result-object v0

    iget-object v1, p0, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lb/e/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lb/q/n;->start()V

    invoke-direct {p0, v2, v0}, Lb/q/n;->runAnimator(Landroid/animation/Animator;Lb/e/a;)V

    goto :goto_d

    :cond_26
    iget-object v0, p0, Lb/q/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lb/q/n;->end()V

    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/q/n;->mCanRemoveViews:Z

    return-void
.end method

.method public setDuration(J)Lb/q/n;
    .registers 3

    iput-wide p1, p0, Lb/q/n;->mDuration:J

    return-object p0
.end method

.method public setEpicenterCallback(Lb/q/n$f;)V
    .registers 2

    iput-object p1, p0, Lb/q/n;->mEpicenterCallback:Lb/q/n$f;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/n;
    .registers 2

    iput-object p1, p0, Lb/q/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 4

    if-eqz p1, :cond_34

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_34

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    aget v1, p1, v0

    invoke-static {v1}, Lb/q/n;->isValidMatch(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p1, v0}, Lb/q/n;->alreadyContains([II)Z

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lb/q/n;->mMatchOrder:[I

    goto :goto_38

    :cond_34
    :goto_34
    sget-object p1, Lb/q/n;->DEFAULT_MATCH_ORDER:[I

    iput-object p1, p0, Lb/q/n;->mMatchOrder:[I

    :goto_38
    return-void
.end method

.method public setPathMotion(Lb/q/g;)V
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lb/q/n;->STRAIGHT_PATH_MOTION:Lb/q/g;

    :cond_4
    iput-object p1, p0, Lb/q/n;->mPathMotion:Lb/q/g;

    return-void
.end method

.method public setPropagation(Lb/q/q;)V
    .registers 2

    iput-object p1, p0, Lb/q/n;->mPropagation:Lb/q/q;

    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Lb/q/n;
    .registers 2

    iput-object p1, p0, Lb/q/n;->mSceneRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setStartDelay(J)Lb/q/n;
    .registers 3

    iput-wide p1, p0, Lb/q/n;->mStartDelay:J

    return-object p0
.end method

.method protected start()V
    .registers 6

    iget v0, p0, Lb/q/n;->mNumInstances:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lb/q/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/q/n$g;

    invoke-interface {v4, p0}, Lb/q/n$g;->a(Lb/q/n;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2a
    iput-boolean v1, p0, Lb/q/n;->mEnded:Z

    :cond_2c
    iget v0, p0, Lb/q/n;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/q/n;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lb/q/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lb/q/n;->mDuration:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lb/q/n;->mDuration:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4f
    iget-wide v0, p0, Lb/q/n;->mStartDelay:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/q/n;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6e
    iget-object v0, p0, Lb/q/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/q/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8b
    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9b

    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_135

    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_eb

    move-object v0, p1

    const/4 p1, 0x0

    :goto_b9
    iget-object v3, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_ea

    if-lez p1, :cond_d2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/q/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_b9

    :cond_ea
    move-object p1, v0

    :cond_eb
    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_124

    :goto_f3
    iget-object v0, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_124

    if-lez v2, :cond_10c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/q/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :cond_124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_135
    return-object p1
.end method

###### Class b.q.n.a (b.q.n$a)
.class final Lb/q/n$a;
.super Lb/q/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/q/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)Landroid/graphics/Path;
    .registers 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

###### Class b.q.n.b (b.q.n$b)
.class Lb/q/n$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/n;->runAnimator(Landroid/animation/Animator;Lb/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/e/a;

.field final synthetic b:Lb/q/n;


# direct methods
.method constructor <init>(Lb/q/n;Lb/e/a;)V
    .registers 3

    iput-object p1, p0, Lb/q/n$b;->b:Lb/q/n;

    iput-object p2, p0, Lb/q/n$b;->a:Lb/e/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lb/q/n$b;->a:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/q/n$b;->b:Lb/q/n;

    iget-object v0, v0, Lb/q/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lb/q/n$b;->b:Lb/q/n;

    iget-object v0, v0, Lb/q/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class b.q.n.c (b.q.n$c)
.class Lb/q/n$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/n;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/n;


# direct methods
.method constructor <init>(Lb/q/n;)V
    .registers 2

    iput-object p1, p0, Lb/q/n$c;->a:Lb/q/n;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lb/q/n$c;->a:Lb/q/n;

    invoke-virtual {v0}, Lb/q/n;->end()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

###### Class b.q.n.d (b.q.n$d)
.class Lb/q/n$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Lb/q/t;

.field d:Lb/q/m0;

.field e:Lb/q/n;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lb/q/n;Lb/q/m0;Lb/q/t;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/q/n$d;->a:Landroid/view/View;

    iput-object p2, p0, Lb/q/n$d;->b:Ljava/lang/String;

    iput-object p5, p0, Lb/q/n$d;->c:Lb/q/t;

    iput-object p4, p0, Lb/q/n$d;->d:Lb/q/m0;

    iput-object p3, p0, Lb/q/n$d;->e:Lb/q/n;

    return-void
.end method

###### Class b.q.n.e (b.q.n$e)
.class Lb/q/n$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method static a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object p0
.end method

.method static b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    :cond_c
    return-object p0
.end method

###### Class b.q.n.f (b.q.n$f)
.class public abstract Lb/q/n$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lb/q/n;)Landroid/graphics/Rect;
.end method

###### Class b.q.n.g (b.q.n$g)
.class public interface abstract Lb/q/n$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract a(Lb/q/n;)V
.end method

.method public abstract b(Lb/q/n;)V
.end method

.method public abstract c(Lb/q/n;)V
.end method

.method public abstract d(Lb/q/n;)V
.end method

.method public abstract e(Lb/q/n;)V
.end method
