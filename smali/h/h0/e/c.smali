###### Class h.h0.e.c (h.h0.e.c)
.class public final Lh/h0/e/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/e/c$a;
    }
.end annotation


# instance fields
.field public final a:Lh/a0;

.field public final b:Lh/c0;


# direct methods
.method constructor <init>(Lh/a0;Lh/c0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/e/c;->a:Lh/a0;

    iput-object p2, p0, Lh/h0/e/c;->b:Lh/c0;

    return-void
.end method

.method public static a(Lh/c0;Lh/a0;)Z
    .registers 5

    invoke-virtual {p0}, Lh/c0;->l()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x133

    if-eq v0, v1, :cond_31

    const/16 v1, 0x134

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x194

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x195

    if-eq v0, v1, :cond_5a

    packed-switch v0, :pswitch_data_70

    goto :goto_59

    :cond_31
    :pswitch_31
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lh/c0;->k()Lh/d;

    move-result-object v0

    invoke-virtual {v0}, Lh/d;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5a

    invoke-virtual {p0}, Lh/c0;->k()Lh/d;

    move-result-object v0

    invoke-virtual {v0}, Lh/d;->c()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lh/c0;->k()Lh/d;

    move-result-object v0

    invoke-virtual {v0}, Lh/d;->b()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5a

    :cond_59
    :goto_59
    return v2

    :cond_5a
    :goto_5a
    :pswitch_5a
    invoke-virtual {p0}, Lh/c0;->k()Lh/d;

    move-result-object p0

    invoke-virtual {p0}, Lh/d;->i()Z

    move-result p0

    if-nez p0, :cond_6f

    invoke-virtual {p1}, Lh/a0;->b()Lh/d;

    move-result-object p0

    invoke-virtual {p0}, Lh/d;->i()Z

    move-result p0

    if-nez p0, :cond_6f

    const/4 v2, 0x1

    :cond_6f
    return v2

    :pswitch_data_70
    .packed-switch 0x12c
        :pswitch_5a
        :pswitch_5a
        :pswitch_31
    .end packed-switch
.end method

###### Class h.h0.e.c.a (h.h0.e.c$a)
.class public Lh/h0/e/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lh/a0;

.field final c:Lh/c0;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLh/a0;Lh/c0;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/h0/e/c$a;->l:I

    iput-wide p1, p0, Lh/h0/e/c$a;->a:J

    iput-object p3, p0, Lh/h0/e/c$a;->b:Lh/a0;

    iput-object p4, p0, Lh/h0/e/c$a;->c:Lh/c0;

    if-eqz p4, :cond_7a

    invoke-virtual {p4}, Lh/c0;->u()J

    move-result-wide p1

    iput-wide p1, p0, Lh/h0/e/c$a;->i:J

    invoke-virtual {p4}, Lh/c0;->s()J

    move-result-wide p1

    iput-wide p1, p0, Lh/h0/e/c$a;->j:J

    invoke-virtual {p4}, Lh/c0;->n()Lh/s;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Lh/s;->b()I

    move-result p3

    :goto_23
    if-ge p2, p3, :cond_7a

    invoke-virtual {p1, p2}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {v1}, Lh/h0/g/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lh/h0/e/c$a;->d:Ljava/util/Date;

    iput-object v1, p0, Lh/h0/e/c$a;->e:Ljava/lang/String;

    goto :goto_77

    :cond_3e
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {v1}, Lh/h0/g/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lh/h0/e/c$a;->h:Ljava/util/Date;

    goto :goto_77

    :cond_4d
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {v1}, Lh/h0/g/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lh/h0/e/c$a;->f:Ljava/util/Date;

    iput-object v1, p0, Lh/h0/e/c$a;->g:Ljava/lang/String;

    goto :goto_77

    :cond_5e
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    iput-object v1, p0, Lh/h0/e/c$a;->k:Ljava/lang/String;

    goto :goto_77

    :cond_69
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_77

    invoke-static {v1, v0}, Lh/h0/g/e;->a(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lh/h0/e/c$a;->l:I

    :cond_77
    :goto_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    :cond_7a
    return-void
.end method

.method private static a(Lh/a0;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private b()J
    .registers 10

    iget-object v0, p0, Lh/h0/e/c$a;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    iget-wide v3, p0, Lh/h0/e/c$a;->j:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_11
    iget v0, p0, Lh/h0/e/c$a;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_21

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_21
    iget-wide v3, p0, Lh/h0/e/c$a;->j:J

    iget-wide v5, p0, Lh/h0/e/c$a;->i:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lh/h0/e/c$a;->a:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private c()J
    .registers 8

    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->k()Lh/d;

    move-result-object v0

    invoke-virtual {v0}, Lh/d;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lh/d;->d()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_19
    iget-object v0, p0, Lh/h0/e/c$a;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lh/h0/e/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_2a

    :cond_28
    iget-wide v3, p0, Lh/h0/e/c$a;->j:J

    :goto_2a
    iget-object v0, p0, Lh/h0/e/c$a;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v3, v5, v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_37

    move-wide v1, v3

    :cond_37
    return-wide v1

    :cond_38
    iget-object v0, p0, Lh/h0/e/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->t()Lh/a0;

    move-result-object v0

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lh/h0/e/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_57

    :cond_55
    iget-wide v3, p0, Lh/h0/e/c$a;->i:J

    :goto_57
    iget-object v0, p0, Lh/h0/e/c$a;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_66

    const-wide/16 v0, 0xa

    div-long v1, v3, v0

    :cond_66
    return-wide v1
.end method

.method private d()Lh/h0/e/c;
    .registers 14

    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    new-instance v0, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-direct {v0, v2, v1}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v0

    :cond_d
    iget-object v0, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-virtual {v0}, Lh/a0;->d()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->m()Lh/r;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-direct {v0, v2, v1}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v0

    :cond_25
    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-static {v0, v2}, Lh/h0/e/c;->a(Lh/c0;Lh/a0;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-direct {v0, v2, v1}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v0

    :cond_37
    iget-object v0, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-virtual {v0}, Lh/a0;->b()Lh/d;

    move-result-object v0

    invoke-virtual {v0}, Lh/d;->h()Z

    move-result v2

    if-nez v2, :cond_12a

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-static {v2}, Lh/h0/e/c$a;->a(Lh/a0;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto/16 :goto_12a

    :cond_4d
    iget-object v2, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-virtual {v2}, Lh/c0;->k()Lh/d;

    move-result-object v2

    invoke-virtual {v2}, Lh/d;->a()Z

    move-result v3

    if-eqz v3, :cond_61

    new-instance v0, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-direct {v0, v1, v2}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v0

    :cond_61
    invoke-direct {p0}, Lh/h0/e/c$a;->b()J

    move-result-wide v3

    invoke-direct {p0}, Lh/h0/e/c$a;->c()J

    move-result-wide v5

    invoke-virtual {v0}, Lh/d;->d()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7f

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lh/d;->d()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_7f
    invoke-virtual {v0}, Lh/d;->f()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_93

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lh/d;->f()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_94

    :cond_93
    move-wide v11, v9

    :goto_94
    invoke-virtual {v2}, Lh/d;->g()Z

    move-result v7

    if-nez v7, :cond_ab

    invoke-virtual {v0}, Lh/d;->e()I

    move-result v7

    if-eq v7, v8, :cond_ab

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lh/d;->e()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_ab
    invoke-virtual {v2}, Lh/d;->h()Z

    move-result v0

    if-nez v0, :cond_e4

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_e4

    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->q()Lh/c0$a;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_c8

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v2, v5}, Lh/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/c0$a;

    :cond_c8
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_da

    invoke-direct {p0}, Lh/h0/e/c$a;->e()Z

    move-result v3

    if-eqz v3, :cond_da

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v2, v3}, Lh/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/c0$a;

    :cond_da
    new-instance v2, Lh/h0/e/c;

    invoke-virtual {v0}, Lh/c0$a;->a()Lh/c0;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v2

    :cond_e4
    iget-object v0, p0, Lh/h0/e/c$a;->k:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_ed

    const-string v2, "If-None-Match"

    goto :goto_fa

    :cond_ed
    iget-object v0, p0, Lh/h0/e/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lh/h0/e/c$a;->g:Ljava/lang/String;

    goto :goto_fa

    :cond_f4
    iget-object v0, p0, Lh/h0/e/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_122

    iget-object v0, p0, Lh/h0/e/c$a;->e:Ljava/lang/String;

    :goto_fa
    iget-object v1, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-virtual {v1}, Lh/a0;->c()Lh/s;

    move-result-object v1

    invoke-virtual {v1}, Lh/s;->a()Lh/s$a;

    move-result-object v1

    sget-object v3, Lh/h0/a;->a:Lh/h0/a;

    invoke-virtual {v3, v1, v2, v0}, Lh/h0/a;->a(Lh/s$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-virtual {v0}, Lh/a0;->f()Lh/a0$a;

    move-result-object v0

    invoke-virtual {v1}, Lh/s$a;->a()Lh/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/a0$a;->a(Lh/s;)Lh/a0$a;

    invoke-virtual {v0}, Lh/a0$a;->a()Lh/a0;

    move-result-object v0

    new-instance v1, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-direct {v1, v0, v2}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v1

    :cond_122
    new-instance v0, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-direct {v0, v2, v1}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v0

    :cond_12a
    :goto_12a
    new-instance v0, Lh/h0/e/c;

    iget-object v2, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-direct {v0, v2, v1}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    return-object v0
.end method

.method private e()Z
    .registers 3

    iget-object v0, p0, Lh/h0/e/c$a;->c:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->k()Lh/d;

    move-result-object v0

    invoke-virtual {v0}, Lh/d;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lh/h0/e/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public a()Lh/h0/e/c;
    .registers 3

    invoke-direct {p0}, Lh/h0/e/c$a;->d()Lh/h0/e/c;

    move-result-object v0

    iget-object v1, v0, Lh/h0/e/c;->a:Lh/a0;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lh/h0/e/c$a;->b:Lh/a0;

    invoke-virtual {v1}, Lh/a0;->b()Lh/d;

    move-result-object v1

    invoke-virtual {v1}, Lh/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lh/h0/e/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lh/h0/e/c;-><init>(Lh/a0;Lh/c0;)V

    :cond_1a
    return-object v0
.end method
