###### Class animebestapp.com.ui.info.e.b.d (animebestapp.com.ui.info.e.b.d)
.class public interface abstract Lanimebestapp/com/ui/info/e/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/info/e/b/d$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lanimebestapp/com/ui/info/e/b/d$a;)V
.end method

.method public abstract a(Ljava/lang/String;Lanimebestapp/com/models/Anime;I)V
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public abstract a(Ljava/util/LinkedHashMap;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract e(I)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract i()V
.end method

###### Class animebestapp.com.ui.info.e.b.d.a (animebestapp.com.ui.info.e.b.d$a)
.class public final Lanimebestapp/com/ui/info/e/b/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(IZILjava/lang/String;ZZZ)V
    .registers 9

    const-string v0, "adUrl"

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    iput-boolean p2, p0, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    iput p3, p0, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    iput-object p4, p0, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    iput-boolean p6, p0, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    iput-boolean p7, p0, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILjava/lang/String;ZZZILg/p/b/d;)V
    .registers 20

    and-int/lit8 v0, p8, 0x1

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    goto :goto_8

    :cond_7
    move v3, p1

    :goto_8
    and-int/lit8 v0, p8, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/4 v4, 0x0

    goto :goto_10

    :cond_f
    move v4, p2

    :goto_10
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_16

    const/4 v5, -0x1

    goto :goto_17

    :cond_16
    move v5, p3

    :goto_17
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1f

    const-string v0, "https://animebestapp.org/donate.html"

    move-object v6, v0

    goto :goto_20

    :cond_1f
    move-object v6, p4

    :goto_20
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_26

    const/4 v7, 0x0

    goto :goto_27

    :cond_26
    move v7, p5

    :goto_27
    move-object v2, p0

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lanimebestapp/com/ui/info/e/b/d$a;-><init>(IZILjava/lang/String;ZZZ)V

    return-void
.end method

.method public static synthetic a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-boolean p2, p0, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-boolean p5, p0, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    :cond_21
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-boolean p6, p0, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-boolean p7, p0, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    :cond_2f
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lanimebestapp/com/ui/info/e/b/d$a;->a(IZILjava/lang/String;ZZZ)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(IZILjava/lang/String;ZZZ)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 17

    const-string v0, "adUrl"

    move-object v5, p4

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/info/e/b/d$a;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lanimebestapp/com/ui/info/e/b/d$a;-><init>(IZILjava/lang/String;ZZZ)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p0, p1, :cond_58

    instance-of v1, p1, Lanimebestapp/com/ui/info/e/b/d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    iget v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    iget v3, p1, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    iget-boolean v3, p1, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    if-ne v1, v3, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_57

    iget v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    iget v3, p1, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    if-ne v1, v3, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    if-eqz v1, :cond_57

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    iget-boolean v3, p1, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    if-ne v1, v3, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    iget-boolean v3, p1, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    if-ne v1, v3, :cond_48

    const/4 v1, 0x1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    iget-boolean p1, p1, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    if-ne v1, p1, :cond_53

    const/4 p1, 0x1

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    return v2

    :cond_58
    :goto_58
    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    :cond_24
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    :cond_34
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State(player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowNewWeb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShow1080p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanimebestapp/com/ui/info/e/b/d$a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
