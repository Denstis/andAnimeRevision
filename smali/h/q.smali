###### Class h.q (h.q)
.class public final Lh/q;
.super Lh/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/q$a;
    }
.end annotation


# static fields
.field private static final c:Lh/v;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object v0

    sput-object v0, Lh/q;->c:Lh/v;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lh/b0;-><init>()V

    invoke-static {p1}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh/q;->a:Ljava/util/List;

    invoke-static {p2}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh/q;->b:Ljava/util/List;

    return-void
.end method

.method private a(Li/d;Z)J
    .registers 6

    if-eqz p2, :cond_8

    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Li/d;->a()Li/c;

    move-result-object p1

    :goto_c
    const/4 v0, 0x0

    iget-object v1, p0, Lh/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_3a

    if-lez v0, :cond_1c

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Li/c;->writeByte(I)Li/c;

    :cond_1c
    iget-object v2, p0, Lh/q;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Li/c;->a(Ljava/lang/String;)Li/c;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Li/c;->writeByte(I)Li/c;

    iget-object v2, p0, Lh/q;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Li/c;->a(Ljava/lang/String;)Li/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    if-eqz p2, :cond_44

    invoke-virtual {p1}, Li/c;->s()J

    move-result-wide v0

    invoke-virtual {p1}, Li/c;->l()V

    goto :goto_46

    :cond_44
    const-wide/16 v0, 0x0

    :goto_46
    return-wide v0
.end method


# virtual methods
.method public a()J
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lh/q;->a(Li/d;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Li/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/q;->a(Li/d;Z)J

    return-void
.end method

.method public b()Lh/v;
    .registers 2

    sget-object v0, Lh/q;->c:Lh/v;

    return-object v0
.end method

###### Class h.q.a (h.q$a)
.class public final Lh/q$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/q$a;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/q$a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/q$a;->b:Ljava/util/List;

    iput-object p1, p0, Lh/q$a;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lh/q$a;
    .registers 11

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_27

    iget-object v0, p0, Lh/q$a;->a:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lh/q$a;->c:Ljava/nio/charset/Charset;

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh/q$a;->b:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lh/q$a;->c:Ljava/nio/charset/Charset;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lh/q;
    .registers 4

    new-instance v0, Lh/q;

    iget-object v1, p0, Lh/q$a;->a:Ljava/util/List;

    iget-object v2, p0, Lh/q$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lh/q;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lh/q$a;
    .registers 11

    if-eqz p1, :cond_30

    if-eqz p2, :cond_28

    iget-object v0, p0, Lh/q$a;->a:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lh/q$a;->c:Ljava/nio/charset/Charset;

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh/q$a;->b:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lh/q$a;->c:Ljava/nio/charset/Charset;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
