###### Class h.b (h.b)
.class public interface abstract Lh/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh/b$a;

    invoke-direct {v0}, Lh/b$a;-><init>()V

    sput-object v0, Lh/b;->a:Lh/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lh/e0;Lh/c0;)Lh/a0;
.end method

###### Class h.b.a (h.b$a)
.class final Lh/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/b;
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
.method public a(Lh/e0;Lh/c0;)Lh/a0;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method
