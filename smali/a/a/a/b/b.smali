###### Class a.a.a.b.b (a.a.a.b.b)
.class public La/a/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/b/b$b;,
        La/a/a/b/b$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/os/Handler;

.field c:La/a/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, La/a/a/b/b$a;

    invoke-direct {v0}, La/a/a/b/b$a;-><init>()V

    sput-object v0, La/a/a/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/b/b;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, La/a/a/b/a$a;->a(Landroid/os/IBinder;)La/a/a/b/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/b/b;->c:La/a/a/b/a;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, La/a/a/b/b;->c:La/a/a/b/a;

    if-nez p2, :cond_c

    new-instance p2, La/a/a/b/b$b;

    invoke-direct {p2, p0}, La/a/a/b/b$b;-><init>(La/a/a/b/b;)V

    iput-object p2, p0, La/a/a/b/b;->c:La/a/a/b/a;

    :cond_c
    iget-object p2, p0, La/a/a/b/b;->c:La/a/a/b/a;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

###### Class a.a.a.b.b.a (a.a.a.b.b$a)
.class final La/a/a/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "La/a/a/b/b;",
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
.method public createFromParcel(Landroid/os/Parcel;)La/a/a/b/b;
    .registers 3

    new-instance v0, La/a/a/b/b;

    invoke-direct {v0, p1}, La/a/a/b/b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, La/a/a/b/b$a;->createFromParcel(Landroid/os/Parcel;)La/a/a/b/b;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[La/a/a/b/b;
    .registers 2

    new-array p1, p1, [La/a/a/b/b;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, La/a/a/b/b$a;->newArray(I)[La/a/a/b/b;

    move-result-object p1

    return-object p1
.end method

###### Class a.a.a.b.b.BinderC0004b (a.a.a.b.b$b)
.class La/a/a/b/b$b;
.super La/a/a/b/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:La/a/a/b/b;


# direct methods
.method constructor <init>(La/a/a/b/b;)V
    .registers 2

    iput-object p1, p0, La/a/a/b/b$b;->b:La/a/a/b/b;

    invoke-direct {p0}, La/a/a/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, La/a/a/b/b$b;->b:La/a/a/b/b;

    iget-object v1, v0, La/a/a/b/b;->b:Landroid/os/Handler;

    if-eqz v1, :cond_f

    new-instance v2, La/a/a/b/b$c;

    invoke-direct {v2, v0, p1, p2}, La/a/a/b/b$c;-><init>(La/a/a/b/b;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_f
    invoke-virtual {v0, p1, p2}, La/a/a/b/b;->a(ILandroid/os/Bundle;)V

    :goto_12
    return-void
.end method

###### Class a.a.a.b.b.c (a.a.a.b.b$c)
.class La/a/a/b/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final b:I

.field final c:Landroid/os/Bundle;

.field final synthetic d:La/a/a/b/b;


# direct methods
.method constructor <init>(La/a/a/b/b;ILandroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, La/a/a/b/b$c;->d:La/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La/a/a/b/b$c;->b:I

    iput-object p3, p0, La/a/a/b/b$c;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, La/a/a/b/b$c;->d:La/a/a/b/b;

    iget v1, p0, La/a/a/b/b$c;->b:I

    iget-object v2, p0, La/a/a/b/b$c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, La/a/a/b/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
