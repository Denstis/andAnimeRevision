###### Class h.h0.g.h (h.h0.g.h)
.class public final Lh/h0/g/h;
.super Lh/d0;
.source ""


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Li/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLi/e;)V
    .registers 5

    invoke-direct {p0}, Lh/d0;-><init>()V

    iput-object p1, p0, Lh/h0/g/h;->c:Ljava/lang/String;

    iput-wide p2, p0, Lh/h0/g/h;->d:J

    iput-object p4, p0, Lh/h0/g/h;->e:Li/e;

    return-void
.end method


# virtual methods
.method public k()J
    .registers 3

    iget-wide v0, p0, Lh/h0/g/h;->d:J

    return-wide v0
.end method

.method public l()Lh/v;
    .registers 2

    iget-object v0, p0, Lh/h0/g/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public m()Li/e;
    .registers 2

    iget-object v0, p0, Lh/h0/g/h;->e:Li/e;

    return-object v0
.end method
