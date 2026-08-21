###### Class g.p.b.j (g.p.b.j)
.class public Lg/p/b/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lg/p/b/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/p/b/k;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_d} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_d} :catch_f
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_d} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_d} :catch_f

    move-object v1, v0

    goto :goto_10

    :catch_f
    nop

    :goto_10
    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    new-instance v1, Lg/p/b/k;

    invoke-direct {v1}, Lg/p/b/k;-><init>()V

    :goto_18
    sput-object v1, Lg/p/b/j;->a:Lg/p/b/k;

    return-void
.end method

.method public static a(Lg/p/b/g;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lg/p/b/j;->a:Lg/p/b/k;

    invoke-virtual {v0, p0}, Lg/p/b/k;->a(Lg/p/b/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
