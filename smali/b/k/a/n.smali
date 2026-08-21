###### Class b.k.a.n (b.k.a.n)
.class final Lb/k/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb/k/a/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;

.field final c:I

.field final d:Z

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:Z

.field final i:Z

.field final j:Landroid/os/Bundle;

.field final k:Z

.field l:Landroid/os/Bundle;

.field m:Lb/k/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/k/a/n$a;

    invoke-direct {v0}, Lb/k/a/n$a;-><init>()V

    sput-object v0, Lb/k/a/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/n;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Lb/k/a/n;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/n;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/n;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/n;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lb/k/a/n;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iput-boolean v0, p0, Lb/k/a/n;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/n;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    iput-boolean v1, p0, Lb/k/a/n;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/n;->l:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Lb/k/a/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/n;->b:Ljava/lang/String;

    iget v0, p1, Lb/k/a/d;->mIndex:I

    iput v0, p0, Lb/k/a/n;->c:I

    iget-boolean v0, p1, Lb/k/a/d;->mFromLayout:Z

    iput-boolean v0, p0, Lb/k/a/n;->d:Z

    iget v0, p1, Lb/k/a/d;->mFragmentId:I

    iput v0, p0, Lb/k/a/n;->e:I

    iget v0, p1, Lb/k/a/d;->mContainerId:I

    iput v0, p0, Lb/k/a/n;->f:I

    iget-object v0, p1, Lb/k/a/d;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lb/k/a/n;->g:Ljava/lang/String;

    iget-boolean v0, p1, Lb/k/a/d;->mRetainInstance:Z

    iput-boolean v0, p0, Lb/k/a/n;->h:Z

    iget-boolean v0, p1, Lb/k/a/d;->mDetached:Z

    iput-boolean v0, p0, Lb/k/a/n;->i:Z

    iget-object v0, p1, Lb/k/a/d;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Lb/k/a/n;->j:Landroid/os/Bundle;

    iget-boolean p1, p1, Lb/k/a/d;->mHidden:Z

    iput-boolean p1, p0, Lb/k/a/n;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lb/k/a/h;Lb/k/a/f;Lb/k/a/d;Lb/k/a/k;Landroidx/lifecycle/r;)Lb/k/a/d;
    .registers 9

    iget-object v0, p0, Lb/k/a/n;->m:Lb/k/a/d;

    if-nez v0, :cond_81

    invoke-virtual {p1}, Lb/k/a/h;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lb/k/a/n;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_13
    if-eqz p2, :cond_1e

    iget-object v1, p0, Lb/k/a/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/k/a/n;->j:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Lb/k/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lb/k/a/d;

    move-result-object p2

    goto :goto_26

    :cond_1e
    iget-object p2, p0, Lb/k/a/n;->b:Ljava/lang/String;

    iget-object v1, p0, Lb/k/a/n;->j:Landroid/os/Bundle;

    invoke-static {v0, p2, v1}, Lb/k/a/d;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lb/k/a/d;

    move-result-object p2

    :goto_26
    iput-object p2, p0, Lb/k/a/n;->m:Lb/k/a/d;

    iget-object p2, p0, Lb/k/a/n;->l:Landroid/os/Bundle;

    if-eqz p2, :cond_39

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p2, p0, Lb/k/a/n;->m:Lb/k/a/d;

    iget-object v0, p0, Lb/k/a/n;->l:Landroid/os/Bundle;

    iput-object v0, p2, Lb/k/a/d;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_39
    iget-object p2, p0, Lb/k/a/n;->m:Lb/k/a/d;

    iget v0, p0, Lb/k/a/n;->c:I

    invoke-virtual {p2, v0, p3}, Lb/k/a/d;->setIndex(ILb/k/a/d;)V

    iget-object p2, p0, Lb/k/a/n;->m:Lb/k/a/d;

    iget-boolean p3, p0, Lb/k/a/n;->d:Z

    iput-boolean p3, p2, Lb/k/a/d;->mFromLayout:Z

    const/4 p3, 0x1

    iput-boolean p3, p2, Lb/k/a/d;->mRestored:Z

    iget p3, p0, Lb/k/a/n;->e:I

    iput p3, p2, Lb/k/a/d;->mFragmentId:I

    iget p3, p0, Lb/k/a/n;->f:I

    iput p3, p2, Lb/k/a/d;->mContainerId:I

    iget-object p3, p0, Lb/k/a/n;->g:Ljava/lang/String;

    iput-object p3, p2, Lb/k/a/d;->mTag:Ljava/lang/String;

    iget-boolean p3, p0, Lb/k/a/n;->h:Z

    iput-boolean p3, p2, Lb/k/a/d;->mRetainInstance:Z

    iget-boolean p3, p0, Lb/k/a/n;->i:Z

    iput-boolean p3, p2, Lb/k/a/d;->mDetached:Z

    iget-boolean p3, p0, Lb/k/a/n;->k:Z

    iput-boolean p3, p2, Lb/k/a/d;->mHidden:Z

    iget-object p1, p1, Lb/k/a/h;->d:Lb/k/a/j;

    iput-object p1, p2, Lb/k/a/d;->mFragmentManager:Lb/k/a/j;

    sget-boolean p1, Lb/k/a/j;->F:Z

    if-eqz p1, :cond_81

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instantiated fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lb/k/a/n;->m:Lb/k/a/d;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    iget-object p1, p0, Lb/k/a/n;->m:Lb/k/a/d;

    iput-object p4, p1, Lb/k/a/d;->mChildNonConfig:Lb/k/a/k;

    iput-object p5, p1, Lb/k/a/d;->mViewModelStore:Landroidx/lifecycle/r;

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lb/k/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lb/k/a/n;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lb/k/a/n;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lb/k/a/n;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lb/k/a/n;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lb/k/a/n;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/k/a/n;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lb/k/a/n;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lb/k/a/n;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lb/k/a/n;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lb/k/a/n;->l:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

###### Class b.k.a.n.a (b.k.a.n$a)
.class final Lb/k/a/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lb/k/a/n;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lb/k/a/n;
    .registers 3

    new-instance v0, Lb/k/a/n;

    invoke-direct {v0, p1}, Lb/k/a/n;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/n$a;->createFromParcel(Landroid/os/Parcel;)Lb/k/a/n;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lb/k/a/n;
    .registers 2

    new-array p1, p1, [Lb/k/a/n;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/n$a;->newArray(I)[Lb/k/a/n;

    move-result-object p1

    return-object p1
.end method
