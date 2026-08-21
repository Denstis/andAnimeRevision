###### Class b.k.a.d (b.k.a.d)
.class public Lb/k/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/g;
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/a/d$d;,
        Lb/k/a/d$f;,
        Lb/k/a/d$e;,
        Lb/k/a/d$g;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lb/k/a/d$d;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Lb/k/a/j;

.field mChildNonConfig:Lb/k/a/k;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lb/k/a/j;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lb/k/a/h;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/h;

.field mMenuVisible:Z

.field mParentFragment:Lb/k/a/d;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lb/k/a/d;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/lifecycle/g;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/l<",
            "Landroidx/lifecycle/g;",
            ">;"
        }
    .end annotation
.end field

.field mViewLifecycleRegistry:Landroidx/lifecycle/h;

.field mViewModelStore:Landroidx/lifecycle/r;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/e/g;

    invoke-direct {v0}, Lb/e/g;-><init>()V

    sput-object v0, Lb/k/a/d;->sClassMap:Lb/e/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/k/a/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Lb/k/a/d;->mIndex:I

    iput v0, p0, Lb/k/a/d;->mTargetIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    iput-boolean v0, p0, Lb/k/a/d;->mUserVisibleHint:Z

    new-instance v0, Landroidx/lifecycle/h;

    invoke-direct {v0, p0}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;)V

    iput-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0}, Landroidx/lifecycle/l;-><init>()V

    iput-object v0, p0, Lb/k/a/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/l;

    return-void
.end method

.method private ensureAnimationInfo()Lb/k/a/d$d;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_b

    new-instance v0, Lb/k/a/d$d;

    invoke-direct {v0}, Lb/k/a/d$d;-><init>()V

    iput-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    :cond_b
    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lb/k/a/d;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb/k/a/d;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lb/k/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lb/k/a/d;
    .registers 8

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    :try_start_6
    sget-object v3, Lb/k/a/d;->sClassMap:Lb/e/g;

    invoke-virtual {v3, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-nez v3, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object p0, Lb/k/a/d;->sClassMap:Lb/e/g;

    invoke-virtual {p0, p1, v3}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/4 p0, 0x0

    new-array v4, p0, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/k/a/d;

    if-eqz p2, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Lb/k/a/d;->setArguments(Landroid/os/Bundle;)V
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3c} :catch_ab
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_3c} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3c} :catch_73
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3c} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3c} :catch_3d

    :cond_3c
    return-object p0

    :catch_3d
    move-exception p0

    new-instance p2, Lb/k/a/d$e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lb/k/a/d$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_58
    move-exception p0

    new-instance p2, Lb/k/a/d$e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lb/k/a/d$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_73
    move-exception p0

    new-instance p2, Lb/k/a/d$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lb/k/a/d$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_8f
    move-exception p0

    new-instance p2, Lb/k/a/d$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lb/k/a/d$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_ab
    move-exception p0

    new-instance p2, Lb/k/a/d$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lb/k/a/d$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    sget-object v0, Lb/k/a/d;->sClassMap:Lb/e/g;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object p0, Lb/k/a/d;->sClassMap:Lb/e/g;

    invoke-virtual {p0, p1, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-class p0, Lb/k/a/d;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method callStartTransitionListener()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_e

    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v0, Lb/k/a/d$d;->q:Z

    iget-object v2, v0, Lb/k/a/d$d;->r:Lb/k/a/d$f;

    iput-object v1, v0, Lb/k/a/d$d;->r:Lb/k/a/d$f;

    move-object v1, v2

    :goto_e
    if-eqz v1, :cond_13

    invoke-interface {v1}, Lb/k/a/d$f;->b()V

    :cond_13
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/a/d;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/a/d;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/a/d;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/a/d;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/a/d;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/a/d;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_dc

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_dc
    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_ed

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_ed
    iget-object v0, p0, Lb/k/a/d;->mParentFragment:Lb/k/a/d;

    if-eqz v0, :cond_fe

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mParentFragment:Lb/k/a/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_fe
    iget-object v0, p0, Lb/k/a/d;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_10f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10f
    iget-object v0, p0, Lb/k/a/d;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_120

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_120
    iget-object v0, p0, Lb/k/a/d;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_131

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_131
    iget-object v0, p0, Lb/k/a/d;->mTarget:Lb/k/a/d;

    if-eqz v0, :cond_14c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mTarget:Lb/k/a/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/a/d;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_14c
    invoke-virtual {p0}, Lb/k/a/d;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_161

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k/a/d;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_161
    iget-object v0, p0, Lb/k/a/d;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_172

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_172
    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_183

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_183
    iget-object v0, p0, Lb/k/a/d;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_194

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_194
    invoke-virtual {p0}, Lb/k/a/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k/a/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k/a/d;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1b8
    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c5

    invoke-static {p0}, Lb/n/a/a;->a(Landroidx/lifecycle/g;)Lb/n/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/n/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1c5
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_1fd

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1fd
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method findFragmentByWho(Ljava/lang/String;)Lb/k/a/d;
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Ljava/lang/String;)Lb/k/a/d;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getActivity()Lb/k/a/e;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Lb/k/a/h;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lb/k/a/e;

    :goto_c
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lb/k/a/d$d;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lb/k/a/d$d;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->a:Landroid/view/View;

    return-object v0
.end method

.method getAnimator()Landroid/animation/Animator;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lb/k/a/i;
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lb/k/a/d;->instantiateChildFragmentManager()V

    iget v0, p0, Lb/k/a/d;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->m()V

    goto :goto_2c

    :cond_12
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->n()V

    goto :goto_2c

    :cond_1b
    const/4 v1, 0x2

    if-lt v0, v1, :cond_24

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->g()V

    goto :goto_2c

    :cond_24
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->h()V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lb/k/a/h;->c()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->g:Ljava/lang/Object;

    return-object v0
.end method

.method getEnterTransitionCallback()Landroidx/core/app/m;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->o:Landroidx/core/app/m;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->i:Ljava/lang/Object;

    return-object v0
.end method

.method getExitTransitionCallback()Landroidx/core/app/m;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->p:Landroidx/core/app/m;

    return-object v0
.end method

.method public final getFragmentManager()Lb/k/a/i;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lb/k/a/h;->f()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public final getId()I
    .registers 2

    iget v0, p0, Lb/k/a/d;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/k/a/d;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lb/k/a/h;->g()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->r()Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Lb/h/o/e;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    return-object v0
.end method

.method public getLoaderManager()Lb/n/a/a;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lb/n/a/a;->a(Landroidx/lifecycle/g;)Lb/n/a/a;

    move-result-object v0

    return-object v0
.end method

.method getNextAnim()I
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Lb/k/a/d$d;->d:I

    return v0
.end method

.method getNextTransition()I
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Lb/k/a/d$d;->e:I

    return v0
.end method

.method getNextTransitionStyle()I
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Lb/k/a/d$d;->f:I

    return v0
.end method

.method public final getParentFragment()Lb/k/a/d;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mParentFragment:Lb/k/a/d;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->j:Ljava/lang/Object;

    sget-object v1, Lb/k/a/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lb/k/a/d;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 2

    invoke-virtual {p0}, Lb/k/a/d;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->h:Ljava/lang/Object;

    sget-object v1, Lb/k/a/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lb/k/a/d;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lb/k/a/d$d;->l:Ljava/lang/Object;

    sget-object v1, Lb/k/a/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lb/k/a/d;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method getStateAfterAnimating()I
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Lb/k/a/d$d;->c:I

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lb/k/a/d;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mTarget:Lb/k/a/d;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    iget v0, p0, Lb/k/a/d;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getUserVisibleHint()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/g;
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleOwner:Landroidx/lifecycle/g;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/l;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/r;
    .registers 3

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lb/k/a/d;->mViewModelStore:Landroidx/lifecycle/r;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    iput-object v0, p0, Lb/k/a/d;->mViewModelStore:Landroidx/lifecycle/r;

    :cond_11
    iget-object v0, p0, Lb/k/a/d;->mViewModelStore:Landroidx/lifecycle/r;

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasOptionsMenu()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lb/k/a/d;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/d;->mWho:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/k/a/d;->mAdded:Z

    iput-boolean v1, p0, Lb/k/a/d;->mRemoving:Z

    iput-boolean v1, p0, Lb/k/a/d;->mFromLayout:Z

    iput-boolean v1, p0, Lb/k/a/d;->mInLayout:Z

    iput-boolean v1, p0, Lb/k/a/d;->mRestored:Z

    iput v1, p0, Lb/k/a/d;->mBackStackNesting:I

    iput-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    iput-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    iput-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    iput v1, p0, Lb/k/a/d;->mFragmentId:I

    iput v1, p0, Lb/k/a/d;->mContainerId:I

    iput-object v0, p0, Lb/k/a/d;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Lb/k/a/d;->mHidden:Z

    iput-boolean v1, p0, Lb/k/a/d;->mDetached:Z

    iput-boolean v1, p0, Lb/k/a/d;->mRetaining:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_18

    new-instance v0, Lb/k/a/j;

    invoke-direct {v0}, Lb/k/a/j;-><init>()V

    iput-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    iget-object v1, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    new-instance v2, Lb/k/a/d$b;

    invoke-direct {v2, p0}, Lb/k/a/d$b;-><init>(Lb/k/a/d;)V

    invoke-virtual {v0, v1, v2, p0}, Lb/k/a/j;->a(Lb/k/a/h;Lb/k/a/f;Lb/k/a/d;)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isAdded()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lb/k/a/d;->mAdded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isDetached()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, v0, Lb/k/a/d$d;->s:Z

    return v0
.end method

.method final isInBackStack()Z
    .registers 2

    iget v0, p0, Lb/k/a/d;->mBackStackNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isInLayout()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    return v0
.end method

.method isPostponed()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, v0, Lb/k/a/d$d;->q:Z

    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    iget-boolean v0, p0, Lb/k/a/d;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .registers 3

    iget v0, p0, Lb/k/a/d;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final isStateSaved()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lb/k/a/j;->d()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    invoke-virtual {p0}, Lb/k/a/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lb/k/a/d;->isHidden()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method noteStateNotSaved()V
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    :cond_7
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    iget-object p1, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Lb/k/a/h;->b()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0, p1}, Lb/k/a/d;->onAttach(Landroid/app/Activity;)V

    :cond_15
    return-void
.end method

.method public onAttachFragment(Lb/k/a/d;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0, p1}, Lb/k/a/d;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v0}, Lb/k/a/j;->c(I)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {p1}, Lb/k/a/j;->h()V

    :cond_15
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lb/k/a/d;->mViewModelStore:Landroidx/lifecycle/r;

    if-eqz v1, :cond_1a

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Landroidx/lifecycle/r;->a()V

    :cond_1a
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/d;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    iget-object p1, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Lb/k/a/h;->b()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0, p1, p2, p3}, Lb/k/a/d;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_15
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Lb/k/a/i;
    .registers 2

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0, p1}, Lb/k/a/d;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lb/k/a/j;->g()V

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Lb/k/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Lb/k/a/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Lb/k/a/d;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_17

    return v1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0, p1}, Lb/k/a/d;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Lb/k/a/d;->mIsCreated:Z

    iget-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    return-void

    :cond_1e
    new-instance p1, Lb/k/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lb/k/a/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    :cond_12
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Lb/k/a/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1b
    return v1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/d;->mPerformedCreateView:Z

    new-instance v0, Lb/k/a/d$c;

    invoke-direct {v0, p0}, Lb/k/a/d$c;-><init>(Lb/k/a/d;)V

    iput-object v0, p0, Lb/k/a/d;->mViewLifecycleOwner:Landroidx/lifecycle/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    invoke-virtual {p0, p1, p2, p3}, Lb/k/a/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/d;->mView:Landroid/view/View;

    iget-object p1, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lb/k/a/d;->mViewLifecycleOwner:Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/e;

    iget-object p1, p0, Lb/k/a/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/l;

    iget-object p2, p0, Lb/k/a/d;->mViewLifecycleOwner:Landroidx/lifecycle/g;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/l;->a(Ljava/lang/Object;)V

    goto :goto_31

    :cond_2b
    iget-object p1, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    if-nez p1, :cond_32

    iput-object v0, p0, Lb/k/a/d;->mViewLifecycleOwner:Landroidx/lifecycle/g;

    :goto_31
    return-void

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performDestroy()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lb/k/a/j;->i()V

    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lb/k/a/d;->mState:I

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    iput-boolean v0, p0, Lb/k/a/d;->mIsCreated:Z

    invoke-virtual {p0}, Lb/k/a/d;->onDestroy()V

    iget-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    return-void

    :cond_20
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_b
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lb/k/a/j;->j()V

    :cond_12
    const/4 v0, 0x1

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->onDestroyView()V

    iget-boolean v1, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v1, :cond_29

    invoke-static {p0}, Lb/n/a/a;->a(Landroidx/lifecycle/g;)Lb/n/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/n/a/a;->a()V

    iput-boolean v0, p0, Lb/k/a/d;->mPerformedCreateView:Z

    return-void

    :cond_29
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v1, :cond_3c

    iget-boolean v2, p0, Lb/k/a/d;->mRetaining:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lb/k/a/j;->i()V

    iput-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    goto :goto_3c

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/d;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lb/k/a/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method performLowMemory()V
    .registers 2

    invoke-virtual {p0}, Lb/k/a/d;->onLowMemory()V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/k/a/j;->k()V

    :cond_a
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lb/k/a/d;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Z)V

    :cond_a
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lb/k/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lb/k/a/d;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_f
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Landroid/view/Menu;)V

    :cond_16
    return-void
.end method

.method performPause()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_b
    iget-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lb/k/a/j;->l()V

    :cond_19
    const/4 v0, 0x3

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->onPause()V

    iget-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v0, :cond_27

    return-void

    :cond_27
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lb/k/a/d;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Z)V

    :cond_a
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    iget-boolean v0, p0, Lb/k/a/d;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lb/k/a/d;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v1, 0x1

    :cond_12
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1b
    return v1
.end method

.method performResume()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->q()Z

    :cond_c
    const/4 v0, 0x4

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->onResume()V

    iget-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lb/k/a/j;->m()V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->q()Z

    :cond_25
    iget-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_37
    return-void

    :cond_38
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Lb/k/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lb/k/a/j;->w()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_12
    return-void
.end method

.method performStart()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->q()Z

    :cond_c
    const/4 v0, 0x3

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->onStart()V

    iget-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lb/k/a/j;->n()V

    :cond_20
    iget-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_32
    return-void

    :cond_33
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_b
    iget-object v0, p0, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lb/k/a/j;->o()V

    :cond_19
    const/4 v0, 0x2

    iput v0, p0, Lb/k/a/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0}, Lb/k/a/d;->onStop()V

    iget-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    if-eqz v0, :cond_27

    return-void

    :cond_27
    new-instance v0, Lb/k/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postponeEnterTransition()V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/k/a/d$d;->q:Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0, p1, p2}, Lb/k/a/h;->a(Lb/k/a/d;[Ljava/lang/String;I)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireActivity()Lb/k/a/e;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireFragmentManager()Lb/k/a/i;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/d;->getFragmentManager()Lb/k/a/i;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/d;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a host."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_20

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lb/k/a/d;->instantiateChildFragmentManager()V

    :cond_11
    iget-object v0, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    iget-object v1, p0, Lb/k/a/d;->mChildNonConfig:Lb/k/a/k;

    invoke-virtual {v0, p1, v1}, Lb/k/a/j;->a(Landroid/os/Parcelable;Lb/k/a/k;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/k/a/d;->mChildNonConfig:Lb/k/a/k;

    iget-object p1, p0, Lb/k/a/d;->mChildFragmentManager:Lb/k/a/j;

    invoke-virtual {p1}, Lb/k/a/j;->h()V

    :cond_20
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lb/k/a/d;->mInnerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/d;->mSavedViewState:Landroid/util/SparseArray;

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/d;->mCalled:Z

    invoke-virtual {p0, p1}, Lb/k/a/d;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lb/k/a/d;->mCalled:Z

    if-eqz p1, :cond_22

    iget-object p1, p0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_21
    return-void

    :cond_22
    new-instance p1, Lb/k/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/k/a/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lb/k/a/d$d;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lb/k/a/d$d;->m:Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->a:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->b:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 3

    iget v0, p0, Lb/k/a/d;->mIndex:I

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Lb/k/a/d;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput-object p1, p0, Lb/k/a/d;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/m;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->o:Landroidx/core/app/m;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->g:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/m;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->p:Landroidx/core/app/m;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->i:Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    iget-boolean v0, p0, Lb/k/a/d;->mHasMenu:Z

    if-eq v0, p1, :cond_17

    iput-boolean p1, p0, Lb/k/a/d;->mHasMenu:Z

    invoke-virtual {p0}, Lb/k/a/d;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lb/k/a/d;->isHidden()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    invoke-virtual {p1}, Lb/k/a/h;->j()V

    :cond_17
    return-void
.end method

.method setHideReplaced(Z)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-boolean p1, v0, Lb/k/a/d$d;->s:Z

    return-void
.end method

.method final setIndex(ILb/k/a/d;)V
    .registers 3

    iput p1, p0, Lb/k/a/d;->mIndex:I

    new-instance p1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_11

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lb/k/a/d;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    goto :goto_16

    :cond_11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lb/k/a/d;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/d;->mWho:Ljava/lang/String;

    return-void
.end method

.method public setInitialSavedState(Lb/k/a/d$g;)V
    .registers 3

    iget v0, p0, Lb/k/a/d;->mIndex:I

    if-gez v0, :cond_f

    if-eqz p1, :cond_b

    iget-object p1, p1, Lb/k/a/d$g;->b:Landroid/os/Bundle;

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Lb/k/a/d;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    iget-boolean v0, p0, Lb/k/a/d;->mMenuVisible:Z

    if-eq v0, p1, :cond_1b

    iput-boolean p1, p0, Lb/k/a/d;->mMenuVisible:Z

    iget-boolean p1, p0, Lb/k/a/d;->mHasMenu:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lb/k/a/d;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lb/k/a/d;->isHidden()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    invoke-virtual {p1}, Lb/k/a/h;->j()V

    :cond_1b
    return-void
.end method

.method setNextAnim(I)V
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput p1, v0, Lb/k/a/d$d;->d:I

    return-void
.end method

.method setNextTransition(II)V
    .registers 4

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    iput p1, v0, Lb/k/a/d$d;->e:I

    iput p2, v0, Lb/k/a/d$d;->f:I

    return-void
.end method

.method setOnStartEnterTransitionListener(Lb/k/a/d$f;)V
    .registers 4

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    iget-object v0, v0, Lb/k/a/d$d;->r:Lb/k/a/d$f;

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    iget-object v0, p0, Lb/k/a/d;->mAnimationInfo:Lb/k/a/d$d;

    iget-boolean v1, v0, Lb/k/a/d$d;->q:Z

    if-eqz v1, :cond_2e

    iput-object p1, v0, Lb/k/a/d$d;->r:Lb/k/a/d$f;

    :cond_2e
    if-eqz p1, :cond_33

    invoke-interface {p1}, Lb/k/a/d$f;->a()V

    :cond_33
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->j:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/k/a/d;->mRetainInstance:Z

    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->h:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->k:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput-object p1, v0, Lb/k/a/d$d;->l:Ljava/lang/Object;

    return-void
.end method

.method setStateAfterAnimating(I)V
    .registers 3

    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    iput p1, v0, Lb/k/a/d$d;->c:I

    return-void
.end method

.method public setTargetFragment(Lb/k/a/d;I)V
    .registers 5

    invoke-virtual {p0}, Lb/k/a/d;->getFragmentManager()Lb/k/a/i;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lb/k/a/d;->getFragmentManager()Lb/k/a/i;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    if-ne v0, v1, :cond_13

    goto :goto_2f

    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2f
    :goto_2f
    move-object v0, p1

    :goto_30
    if-eqz v0, :cond_5d

    if-eq v0, p0, :cond_39

    invoke-virtual {v0}, Lb/k/a/d;->getTargetFragment()Lb/k/a/d;

    move-result-object v0

    goto :goto_30

    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " would create a target cycle"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5d
    iput-object p1, p0, Lb/k/a/d;->mTarget:Lb/k/a/d;

    iput p2, p0, Lb/k/a/d;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4

    iget-boolean v0, p0, Lb/k/a/d;->mUserVisibleHint:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1e

    iget v0, p0, Lb/k/a/d;->mState:I

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lb/k/a/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lb/k/a/d;->mIsCreated:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    invoke-virtual {v0, p0}, Lb/k/a/j;->j(Lb/k/a/d;)V

    :cond_1e
    iput-boolean p1, p0, Lb/k/a/d;->mUserVisibleHint:Z

    iget v0, p0, Lb/k/a/d;->mState:I

    if-ge v0, v1, :cond_28

    if-nez p1, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lb/k/a/d;->mDeferStart:Z

    iget-object v0, p0, Lb/k/a/d;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_35

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/d;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_35
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lb/k/a/h;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/k/a/d;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_9

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Lb/k/a/h;->a(Lb/k/a/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lb/k/a/d;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0, p1, p2, p3}, Lb/k/a/h;->a(Lb/k/a/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18

    move-object v9, p0

    iget-object v0, v9, Lb/k/a/d;->mHost:Lb/k/a/h;

    if-eqz v0, :cond_13

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lb/k/a/h;->a(Lb/k/a/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lb/k/a/j;->n:Lb/k/a/h;

    if-nez v0, :cond_9

    goto :goto_30

    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    iget-object v1, v1, Lb/k/a/j;->n:Lb/k/a/h;

    invoke-virtual {v1}, Lb/k/a/h;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    iget-object v0, v0, Lb/k/a/j;->n:Lb/k/a/h;

    invoke-virtual {v0}, Lb/k/a/h;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lb/k/a/d$a;

    invoke-direct {v1, p0}, Lb/k/a/d$a;-><init>(Lb/k/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_37

    :cond_2c
    invoke-virtual {p0}, Lb/k/a/d;->callStartTransitionListener()V

    goto :goto_37

    :cond_30
    :goto_30
    invoke-direct {p0}, Lb/k/a/d;->ensureAnimationInfo()Lb/k/a/d$d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/k/a/d$d;->q:Z

    :goto_37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lb/h/n/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lb/k/a/d;->mIndex:I

    if-ltz v1, :cond_18

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/k/a/d;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget v1, p0, Lb/k/a/d;->mFragmentId:I

    if-eqz v1, :cond_2a

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/k/a/d;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v1, p0, Lb/k/a/d;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/k/a/d;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

###### Class b.k.a.d.a (b.k.a.d$a)
.class Lb/k/a/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/a/d;->startPostponedEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lb/k/a/d;


# direct methods
.method constructor <init>(Lb/k/a/d;)V
    .registers 2

    iput-object p1, p0, Lb/k/a/d$a;->b:Lb/k/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lb/k/a/d$a;->b:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->callStartTransitionListener()V

    return-void
.end method

###### Class b.k.a.d.b (b.k.a.d$b)
.class Lb/k/a/d$b;
.super Lb/k/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/a/d;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/k/a/d;


# direct methods
.method constructor <init>(Lb/k/a/d;)V
    .registers 2

    iput-object p1, p0, Lb/k/a/d$b;->a:Lb/k/a/d;

    invoke-direct {p0}, Lb/k/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lb/k/a/d$b;->a:Lb/k/a/d;

    iget-object v0, v0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment does not have a view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lb/k/a/d;
    .registers 5

    iget-object v0, p0, Lb/k/a/d$b;->a:Lb/k/a/d;

    iget-object v0, v0, Lb/k/a/d;->mHost:Lb/k/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lb/k/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lb/k/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/d$b;->a:Lb/k/a/d;

    iget-object v0, v0, Lb/k/a/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class b.k.a.d.c (b.k.a.d$c)
.class Lb/k/a/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/a/d;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lb/k/a/d;


# direct methods
.method constructor <init>(Lb/k/a/d;)V
    .registers 2

    iput-object p1, p0, Lb/k/a/d$c;->b:Lb/k/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/e;
    .registers 4

    iget-object v0, p0, Lb/k/a/d$c;->b:Lb/k/a/d;

    iget-object v1, v0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    if-nez v1, :cond_f

    new-instance v1, Landroidx/lifecycle/h;

    iget-object v2, v0, Lb/k/a/d;->mViewLifecycleOwner:Landroidx/lifecycle/g;

    invoke-direct {v1, v2}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;)V

    iput-object v1, v0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    :cond_f
    iget-object v0, p0, Lb/k/a/d$c;->b:Lb/k/a/d;

    iget-object v0, v0, Lb/k/a/d;->mViewLifecycleRegistry:Landroidx/lifecycle/h;

    return-object v0
.end method

###### Class b.k.a.d.C0115d (b.k.a.d$d)
.class Lb/k/a/d$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/animation/Animator;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Boolean;

.field n:Ljava/lang/Boolean;

.field o:Landroidx/core/app/m;

.field p:Landroidx/core/app/m;

.field q:Z

.field r:Lb/k/a/d$f;

.field s:Z


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/d$d;->g:Ljava/lang/Object;

    sget-object v1, Lb/k/a/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Lb/k/a/d$d;->h:Ljava/lang/Object;

    iput-object v0, p0, Lb/k/a/d$d;->i:Ljava/lang/Object;

    iput-object v1, p0, Lb/k/a/d$d;->j:Ljava/lang/Object;

    iput-object v0, p0, Lb/k/a/d$d;->k:Ljava/lang/Object;

    iput-object v1, p0, Lb/k/a/d$d;->l:Ljava/lang/Object;

    iput-object v0, p0, Lb/k/a/d$d;->o:Landroidx/core/app/m;

    iput-object v0, p0, Lb/k/a/d$d;->p:Landroidx/core/app/m;

    return-void
.end method

###### Class b.k.a.d.e (b.k.a.d$e)
.class public Lb/k/a/d$e;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class b.k.a.d.f (b.k.a.d$f)
.class interface abstract Lb/k/a/d$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "f"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

###### Class b.k.a.d.g (b.k.a.d$g)
.class public Lb/k/a/d$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb/k/a/d$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/k/a/d$g$a;

    invoke-direct {v0}, Lb/k/a/d$g$a;-><init>()V

    sput-object v0, Lb/k/a/d$g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/d$g;->b:Landroid/os/Bundle;

    if-eqz p2, :cond_12

    iget-object p1, p0, Lb/k/a/d$g;->b:Landroid/os/Bundle;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lb/k/a/d$g;->b:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

###### Class b.k.a.d.g.a (b.k.a.d$g$a)
.class final Lb/k/a/d$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lb/k/a/d$g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lb/k/a/d$g;
    .registers 4

    new-instance v0, Lb/k/a/d$g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/k/a/d$g;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lb/k/a/d$g;
    .registers 4

    new-instance v0, Lb/k/a/d$g;

    invoke-direct {v0, p1, p2}, Lb/k/a/d$g;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/d$g$a;->createFromParcel(Landroid/os/Parcel;)Lb/k/a/d$g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/k/a/d$g$a;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lb/k/a/d$g;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lb/k/a/d$g;
    .registers 2

    new-array p1, p1, [Lb/k/a/d$g;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/d$g$a;->newArray(I)[Lb/k/a/d$g;

    move-result-object p1

    return-object p1
.end method
