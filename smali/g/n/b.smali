###### Class g.n.b (g.n.b)
.class public final Lg/n/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/n/a;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-class v0, Lg/n/a;

    invoke-static {}, Lg/n/b;->a()I

    move-result v1

    const-string v2, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    const-string v3, ", base type classloader: "

    const-string v4, "Instance classloader: "

    const-string v5, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    const-string v6, "Class.forName(\"kotlin.in\u2026entations\").newInstance()"

    const v7, 0x10008

    if-lt v1, v7, :cond_a8

    const-string v7, "kotlin.internal.jdk8.JDK8PlatformImplementations"

    :try_start_17
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_22} :catch_5e

    if-eqz v7, :cond_2a

    :try_start_24
    check-cast v7, Lg/n/a;

    goto/16 :goto_145

    :catch_28
    move-exception v8

    goto :goto_30

    :cond_2a
    new-instance v8, Lg/j;

    invoke-direct {v8, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_30} :catch_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_30} :catch_5e

    :goto_30
    :try_start_30
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-instance v10, Ljava/lang/ClassCastException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v7
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_5e} :catch_5e

    :catch_5e
    const-string v7, "kotlin.internal.JRE8PlatformImplementations"

    :try_start_60
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_6b} :catch_a7

    if-eqz v7, :cond_73

    :try_start_6d
    check-cast v7, Lg/n/a;

    goto/16 :goto_145

    :catch_71
    move-exception v8

    goto :goto_79

    :cond_73
    new-instance v8, Lg/j;

    invoke-direct {v8, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_79
    .catch Ljava/lang/ClassCastException; {:try_start_6d .. :try_end_79} :catch_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_79} :catch_a7

    :goto_79
    :try_start_79
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-instance v10, Ljava/lang/ClassCastException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v7
    :try_end_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_79 .. :try_end_a7} :catch_a7

    :catch_a7
    nop

    :cond_a8
    const v7, 0x10007

    if-lt v1, v7, :cond_140

    const-string v1, "g.n.d.a"

    :try_start_af
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_af .. :try_end_ba} :catch_f7

    if-eqz v1, :cond_c3

    :try_start_bc
    move-object v7, v1

    check-cast v7, Lg/n/a;

    goto/16 :goto_145

    :catch_c1
    move-exception v7

    goto :goto_c9

    :cond_c3
    new-instance v7, Lg/j;

    invoke-direct {v7, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_c9
    .catch Ljava/lang/ClassCastException; {:try_start_bc .. :try_end_c9} :catch_c1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bc .. :try_end_c9} :catch_f7

    :goto_c9
    :try_start_c9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Ljava/lang/ClassCastException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_f7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c9 .. :try_end_f7} :catch_f7

    :catch_f7
    const-string v1, "kotlin.internal.JRE7PlatformImplementations"

    :try_start_f9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f9 .. :try_end_104} :catch_140

    if-eqz v1, :cond_10c

    :try_start_106
    move-object v7, v1

    check-cast v7, Lg/n/a;

    goto :goto_145

    :catch_10a
    move-exception v5

    goto :goto_112

    :cond_10c
    new-instance v6, Lg/j;

    invoke-direct {v6, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_112
    .catch Ljava/lang/ClassCastException; {:try_start_106 .. :try_end_112} :catch_10a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_106 .. :try_end_112} :catch_140

    :goto_112
    :try_start_112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v6, Ljava/lang/ClassCastException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_140
    .catch Ljava/lang/ClassNotFoundException; {:try_start_112 .. :try_end_140} :catch_140

    :catch_140
    :cond_140
    new-instance v7, Lg/n/a;

    invoke-direct {v7}, Lg/n/a;-><init>()V

    :goto_145
    sput-object v7, Lg/n/b;->a:Lg/n/a;

    return-void
.end method

.method private static final a()I
    .registers 11

    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v7, 0x10006

    if-eqz v0, :cond_64

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lg/s/e;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    const/high16 v9, 0x10000

    if-gez v8, :cond_21

    :try_start_1a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1e} :catch_20

    mul-int v7, v0, v9

    :catch_20
    return v7

    :cond_21
    const/16 v2, 0x2e

    add-int/lit8 v10, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move v3, v10

    invoke-static/range {v1 .. v6}, Lg/s/e;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_34
    const/4 v2, 0x0

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    if-eqz v0, :cond_5e

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_58

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_4b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_55} :catch_57

    add-int v7, v1, v0

    :catch_57
    return v7

    :cond_58
    new-instance v0, Lg/j;

    invoke-direct {v0, v3}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Lg/j;

    invoke-direct {v0, v3}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    return v7
.end method
