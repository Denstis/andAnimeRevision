###### Class androidx.core.app.c (androidx.core.app.c)
.class public Landroidx/core/app/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lb/k/a/d;)Z
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lb/k/a/d;->isInBackStack()Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    invoke-static {p0}, Landroidx/core/app/c;->b(Lb/k/a/d;)Z

    move-result p0

    return p0
.end method

.method private static b(Lb/k/a/d;)Z
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v3, v2, v1, v2}, Lb/k/a/d;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mBackStackNesting=0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
