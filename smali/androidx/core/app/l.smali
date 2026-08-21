###### Class androidx.core.app.l (androidx.core.app.l)
.class public final Landroidx/core/app/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroidx/core/app/l;)Landroid/app/RemoteInput;
    .registers 2

    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {p0}, Landroidx/core/app/l;->a()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method static a([Landroidx/core/app/l;)[Landroid/app/RemoteInput;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    array-length v1, p0

    new-array v1, v1, [Landroid/app/RemoteInput;

    const/4 v2, 0x0

    array-length v3, p0

    if-gtz v3, :cond_c

    return-object v1

    :cond_c
    aget-object p0, p0, v2

    invoke-static {p0}, Landroidx/core/app/l;->a(Landroidx/core/app/l;)Landroid/app/RemoteInput;

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    const p0, 0x0

    throw p0
.end method
