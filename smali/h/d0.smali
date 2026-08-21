###### Class h.d0 (h.d0)
.class public abstract Lh/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/d0$b;
    }
.end annotation


# instance fields
.field private b:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lh/v;JLi/e;)Lh/d0;
    .registers 5

    if-eqz p3, :cond_8

    new-instance v0, Lh/d0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lh/d0$a;-><init>(Lh/v;JLi/e;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lh/v;[B)Lh/d0;
    .registers 5

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    invoke-virtual {v0, p1}, Li/c;->write([B)Li/c;

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lh/d0;->a(Lh/v;JLi/e;)Lh/d0;

    move-result-object p0

    return-object p0
.end method

.method private o()Ljava/nio/charset/Charset;
    .registers 3

    invoke-virtual {p0}, Lh/d0;->l()Lh/v;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lh/v;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    :goto_f
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-virtual {p0}, Lh/d0;->m()Li/e;

    move-result-object v0

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final j()Ljava/io/Reader;
    .registers 4

    iget-object v0, p0, Lh/d0;->b:Ljava/io/Reader;

    if-eqz v0, :cond_5

    goto :goto_14

    :cond_5
    new-instance v0, Lh/d0$b;

    invoke-virtual {p0}, Lh/d0;->m()Li/e;

    move-result-object v1

    invoke-direct {p0}, Lh/d0;->o()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/d0$b;-><init>(Li/e;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lh/d0;->b:Ljava/io/Reader;

    :goto_14
    return-object v0
.end method

.method public abstract k()J
.end method

.method public abstract l()Lh/v;
.end method

.method public abstract m()Li/e;
.end method

.method public final n()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lh/d0;->m()Li/e;

    move-result-object v0

    :try_start_4
    invoke-direct {p0}, Lh/d0;->o()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lh/h0/c;->a(Li/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Li/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method

###### Class h.d0.a (h.d0$a)
.class final Lh/d0$a;
.super Lh/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/d0;->a(Lh/v;JLi/e;)Lh/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lh/v;

.field final synthetic d:J

.field final synthetic e:Li/e;


# direct methods
.method constructor <init>(Lh/v;JLi/e;)V
    .registers 5

    iput-object p1, p0, Lh/d0$a;->c:Lh/v;

    iput-wide p2, p0, Lh/d0$a;->d:J

    iput-object p4, p0, Lh/d0$a;->e:Li/e;

    invoke-direct {p0}, Lh/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public k()J
    .registers 3

    iget-wide v0, p0, Lh/d0$a;->d:J

    return-wide v0
.end method

.method public l()Lh/v;
    .registers 2

    iget-object v0, p0, Lh/d0$a;->c:Lh/v;

    return-object v0
.end method

.method public m()Li/e;
    .registers 2

    iget-object v0, p0, Lh/d0$a;->e:Li/e;

    return-object v0
.end method

###### Class h.d0.b (h.d0$b)
.class final Lh/d0$b;
.super Ljava/io/Reader;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final b:Li/e;

.field private final c:Ljava/nio/charset/Charset;

.field private d:Z

.field private e:Ljava/io/Reader;


# direct methods
.method constructor <init>(Li/e;Ljava/nio/charset/Charset;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lh/d0$b;->b:Li/e;

    iput-object p2, p0, Lh/d0$b;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/d0$b;->d:Z

    iget-object v0, p0, Lh/d0$b;->e:Ljava/io/Reader;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lh/d0$b;->b:Li/e;

    invoke-interface {v0}, Li/s;->close()V

    :goto_10
    return-void
.end method

.method public read([CII)I
    .registers 7

    iget-boolean v0, p0, Lh/d0$b;->d:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lh/d0$b;->e:Ljava/io/Reader;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lh/d0$b;->b:Li/e;

    iget-object v1, p0, Lh/d0$b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lh/h0/c;->a(Li/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lh/d0$b;->b:Li/e;

    invoke-interface {v2}, Li/e;->h()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lh/d0$b;->e:Ljava/io/Reader;

    move-object v0, v1

    :cond_1e
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
