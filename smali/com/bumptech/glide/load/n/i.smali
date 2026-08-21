###### Class com.bumptech.glide.load.n.i (com.bumptech.glide.load.n.i)
.class public Lcom/bumptech/glide/load/n/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/j<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/p/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/p/h/e<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field private final d:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/p/h/e;Lb/h/n/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/j<",
            "TDataType;TResourceType;>;>;",
            "Lcom/bumptech/glide/load/p/h/e<",
            "TResourceType;TTranscode;>;",
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/i;->a:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/load/n/i;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/bumptech/glide/load/n/i;->c:Lcom/bumptech/glide/load/p/h/e;

    iput-object p6, p0, Lcom/bumptech/glide/load/n/i;->d:Lb/h/n/d;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed DecodePath{"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/n/i;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/m/e;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m/e<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/n/v<",
            "TResourceType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/i;->d:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    :try_start_11
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/n/i;->a(Lcom/bumptech/glide/load/m/e;IILcom/bumptech/glide/load/i;Ljava/util/List;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_1b

    iget-object p2, p0, Lcom/bumptech/glide/load/n/i;->d:Lb/h/n/d;

    invoke-interface {p2, v0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    return-object p1

    :catchall_1b
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/i;->d:Lb/h/n/d;

    invoke-interface {p2, v0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    throw p1
.end method

.method private a(Lcom/bumptech/glide/load/m/e;IILcom/bumptech/glide/load/i;Ljava/util/List;)Lcom/bumptech/glide/load/n/v;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m/e<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/i;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bumptech/glide/load/n/v<",
            "TResourceType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_50

    iget-object v3, p0, Lcom/bumptech/glide/load/n/i;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/j;

    :try_start_12
    invoke-interface {p1}, Lcom/bumptech/glide/load/m/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Lcom/bumptech/glide/load/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {p1}, Lcom/bumptech/glide/load/m/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/bumptech/glide/load/j;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;

    move-result-object v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_24} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_24} :catch_25

    goto :goto_4a

    :catch_25
    move-exception v4

    goto :goto_2a

    :catch_27
    move-exception v4

    goto :goto_2a

    :catch_29
    move-exception v4

    :goto_2a
    const/4 v5, 0x2

    const-string v6, "DecodePath"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    :goto_4a
    if-eqz v1, :cond_4d

    goto :goto_50

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_50
    :goto_50
    if-eqz v1, :cond_53

    return-object v1

    :cond_53
    new-instance p1, Lcom/bumptech/glide/load/n/q;

    iget-object p2, p0, Lcom/bumptech/glide/load/n/i;->e:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_61

    :goto_60
    throw p1

    :goto_61
    goto :goto_60
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/m/e;IILcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/n/i$a;)Lcom/bumptech/glide/load/n/v;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m/e<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/i;",
            "Lcom/bumptech/glide/load/n/i$a<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/load/n/v<",
            "TTranscode;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/n/i;->a(Lcom/bumptech/glide/load/m/e;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/bumptech/glide/load/n/i$a;->a(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/i;->c:Lcom/bumptech/glide/load/p/h/e;

    invoke-interface {p2, p1, p4}, Lcom/bumptech/glide/load/p/h/e;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodePath{ dataClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/i;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/i;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/i;->c:Lcom/bumptech/glide/load/p/h/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.i.a (com.bumptech.glide.load.n.i$a)
.class interface abstract Lcom/bumptech/glide/load/n/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/load/n/v<",
            "TResourceType;>;"
        }
    .end annotation
.end method
