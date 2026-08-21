###### Class h.m (h.m)
.class public interface abstract Lh/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh/m$a;

    invoke-direct {v0}, Lh/m$a;-><init>()V

    sput-object v0, Lh/m;->a:Lh/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lh/t;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/t;",
            ")",
            "Ljava/util/List<",
            "Lh/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lh/t;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/t;",
            "Ljava/util/List<",
            "Lh/l;",
            ">;)V"
        }
    .end annotation
.end method

###### Class h.m.a (h.m$a)
.class final Lh/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/m;
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
.method public a(Lh/t;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/t;",
            ")",
            "Ljava/util/List<",
            "Lh/l;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lh/t;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/t;",
            "Ljava/util/List<",
            "Lh/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
