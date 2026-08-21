###### Class com.bumptech.glide.load.o.h (com.bumptech.glide.load.o.h)
.class public interface abstract Lcom/bumptech/glide/load/o/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/bumptech/glide/load/o/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/o/h$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/o/h$a;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/o/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/o/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/o/j$a;->a()Lcom/bumptech/glide/load/o/j;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/o/h;->a:Lcom/bumptech/glide/load/o/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.load.o.h.a (com.bumptech.glide.load.o.h$a)
.class Lcom/bumptech/glide/load/o/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
