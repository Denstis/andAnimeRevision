###### Class com.google.android.gms.dynamic.SupportFragmentWrapper (com.google.android.gms.dynamic.SupportFragmentWrapper)
.class public final Lcom/google/android/gms/dynamic/SupportFragmentWrapper;
.super Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private zzie:Lb/k/a/d;


# direct methods
.method private constructor <init>(Lb/k/a/d;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    return-void
.end method

.method public static wrap(Lb/k/a/d;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    if-eqz p0, :cond_8

    new-instance v0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;-><init>(Lb/k/a/d;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getId()I

    move-result v0

    return v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getRetainInstance()Z

    move-result v0

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getTargetRequestCode()I

    move-result v0

    return v0
.end method

.method public final getUserVisibleHint()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public final isAdded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final isDetached()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isDetached()Z

    move-result v0

    return v0
.end method

.method public final isHidden()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isHidden()Z

    move-result v0

    return v0
.end method

.method public final isInLayout()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isInLayout()Z

    move-result v0

    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isRemoving()Z

    move-result v0

    return v0
.end method

.method public final isResumed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isResumed()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final setHasOptionsMenu(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final setMenuVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->setMenuVisibility(Z)V

    return-void
.end method

.method public final setRetainInstance(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->setRetainInstance(Z)V

    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->setUserVisibleHint(Z)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1, p2}, Lb/k/a/d;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final zzae()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzaf()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getParentFragment()Lb/k/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Lb/k/a/d;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzag()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzah()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getTargetFragment()Lb/k/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Lb/k/a/d;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzai()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzie:Lb/k/a/d;

    invoke-virtual {v0, p1}, Lb/k/a/d;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method
