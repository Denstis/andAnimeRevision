###### Class b.k.a.b (b.k.a.b)
.class final Lb/k/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb/k/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:[I

.field final c:I

.field final d:I

.field final e:Ljava/lang/String;

.field final f:I

.field final g:I

.field final h:Ljava/lang/CharSequence;

.field final i:I

.field final j:Ljava/lang/CharSequence;

.field final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/k/a/b$a;

    invoke-direct {v0}, Lb/k/a/b$a;-><init>()V

    sput-object v0, Lb/k/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lb/k/a/b;->b:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/b;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/b;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/b;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/b;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/b;->g:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lb/k/a/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lb/k/a/b;->i:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lb/k/a/b;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    goto :goto_56

    :cond_55
    const/4 p1, 0x0

    :goto_56
    iput-boolean p1, p0, Lb/k/a/b;->m:Z

    return-void
.end method

.method public constructor <init>(Lb/k/a/a;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/k/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lb/k/a/b;->b:[I

    iget-boolean v1, p1, Lb/k/a/a;->i:Z

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v1, v0, :cond_50

    iget-object v3, p1, Lb/k/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/a/a$a;

    iget-object v4, p0, Lb/k/a/b;->b:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lb/k/a/a$a;->a:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget-object v6, v3, Lb/k/a/a$a;->b:Lb/k/a/d;

    if-eqz v6, :cond_30

    iget v6, v6, Lb/k/a/d;->mIndex:I

    goto :goto_31

    :cond_30
    const/4 v6, -0x1

    :goto_31
    aput v6, v4, v5

    iget-object v4, p0, Lb/k/a/b;->b:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lb/k/a/a$a;->c:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v6, v3, Lb/k/a/a$a;->d:I

    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lb/k/a/a$a;->e:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v3, v3, Lb/k/a/a$a;->f:I

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_50
    iget v0, p1, Lb/k/a/a;->g:I

    iput v0, p0, Lb/k/a/b;->c:I

    iget v0, p1, Lb/k/a/a;->h:I

    iput v0, p0, Lb/k/a/b;->d:I

    iget-object v0, p1, Lb/k/a/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lb/k/a/b;->e:Ljava/lang/String;

    iget v0, p1, Lb/k/a/a;->m:I

    iput v0, p0, Lb/k/a/b;->f:I

    iget v0, p1, Lb/k/a/a;->n:I

    iput v0, p0, Lb/k/a/b;->g:I

    iget-object v0, p1, Lb/k/a/a;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Lb/k/a/b;->h:Ljava/lang/CharSequence;

    iget v0, p1, Lb/k/a/a;->p:I

    iput v0, p0, Lb/k/a/b;->i:I

    iget-object v0, p1, Lb/k/a/a;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Lb/k/a/b;->j:Ljava/lang/CharSequence;

    iget-object v0, p1, Lb/k/a/a;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/k/a/b;->k:Ljava/util/ArrayList;

    iget-object v0, p1, Lb/k/a/a;->s:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/k/a/b;->l:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lb/k/a/a;->t:Z

    iput-boolean p1, p0, Lb/k/a/b;->m:Z

    return-void

    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw p1

    :goto_86
    goto :goto_85
.end method


# virtual methods
.method public a(Lb/k/a/j;)Lb/k/a/a;
    .registers 8

    new-instance v0, Lb/k/a/a;

    invoke-direct {v0, p1}, Lb/k/a/a;-><init>(Lb/k/a/j;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lb/k/a/b;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_8d

    new-instance v3, Lb/k/a/a$a;

    invoke-direct {v3}, Lb/k/a/a$a;-><init>()V

    iget-object v4, p0, Lb/k/a/b;->b:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Lb/k/a/a$a;->a:I

    sget-boolean v1, Lb/k/a/j;->F:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/k/a/b;->b:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, p0, Lb/k/a/b;->b:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    if-ltz v1, :cond_58

    iget-object v5, p1, Lb/k/a/j;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/a/d;

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    :goto_59
    iput-object v1, v3, Lb/k/a/a$a;->b:Lb/k/a/d;

    iget-object v1, p0, Lb/k/a/b;->b:[I

    add-int/lit8 v5, v4, 0x1

    aget v4, v1, v4

    iput v4, v3, Lb/k/a/a$a;->c:I

    add-int/lit8 v4, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Lb/k/a/a$a;->d:I

    add-int/lit8 v5, v4, 0x1

    aget v4, v1, v4

    iput v4, v3, Lb/k/a/a$a;->e:I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Lb/k/a/a$a;->f:I

    iget v1, v3, Lb/k/a/a$a;->c:I

    iput v1, v0, Lb/k/a/a;->c:I

    iget v1, v3, Lb/k/a/a$a;->d:I

    iput v1, v0, Lb/k/a/a;->d:I

    iget v1, v3, Lb/k/a/a$a;->e:I

    iput v1, v0, Lb/k/a/a;->e:I

    iget v1, v3, Lb/k/a/a$a;->f:I

    iput v1, v0, Lb/k/a/a;->f:I

    invoke-virtual {v0, v3}, Lb/k/a/a;->a(Lb/k/a/a$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto/16 :goto_7

    :cond_8d
    iget p1, p0, Lb/k/a/b;->c:I

    iput p1, v0, Lb/k/a/a;->g:I

    iget p1, p0, Lb/k/a/b;->d:I

    iput p1, v0, Lb/k/a/a;->h:I

    iget-object p1, p0, Lb/k/a/b;->e:Ljava/lang/String;

    iput-object p1, v0, Lb/k/a/a;->k:Ljava/lang/String;

    iget p1, p0, Lb/k/a/b;->f:I

    iput p1, v0, Lb/k/a/a;->m:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/k/a/a;->i:Z

    iget v1, p0, Lb/k/a/b;->g:I

    iput v1, v0, Lb/k/a/a;->n:I

    iget-object v1, p0, Lb/k/a/b;->h:Ljava/lang/CharSequence;

    iput-object v1, v0, Lb/k/a/a;->o:Ljava/lang/CharSequence;

    iget v1, p0, Lb/k/a/b;->i:I

    iput v1, v0, Lb/k/a/a;->p:I

    iget-object v1, p0, Lb/k/a/b;->j:Ljava/lang/CharSequence;

    iput-object v1, v0, Lb/k/a/a;->q:Ljava/lang/CharSequence;

    iget-object v1, p0, Lb/k/a/b;->k:Ljava/util/ArrayList;

    iput-object v1, v0, Lb/k/a/a;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/k/a/b;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Lb/k/a/a;->s:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lb/k/a/b;->m:Z

    iput-boolean v1, v0, Lb/k/a/a;->t:Z

    invoke-virtual {v0, p1}, Lb/k/a/a;->a(I)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Lb/k/a/b;->b:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lb/k/a/b;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lb/k/a/b;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lb/k/a/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lb/k/a/b;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lb/k/a/b;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lb/k/a/b;->h:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Lb/k/a/b;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lb/k/a/b;->j:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lb/k/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lb/k/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lb/k/a/b;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class b.k.a.b.a (b.k.a.b$a)
.class final Lb/k/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lb/k/a/b;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lb/k/a/b;
    .registers 3

    new-instance v0, Lb/k/a/b;

    invoke-direct {v0, p1}, Lb/k/a/b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/b$a;->createFromParcel(Landroid/os/Parcel;)Lb/k/a/b;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lb/k/a/b;
    .registers 2

    new-array p1, p1, [Lb/k/a/b;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/k/a/b$a;->newArray(I)[Lb/k/a/b;

    move-result-object p1

    return-object p1
.end method
