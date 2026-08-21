###### Class b.h.o.b0.d (b.h.o.b0.d)
.class public Lb/h/o/b0/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/o/b0/d$b;,
        Lb/h/o/b0/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11

    new-instance v0, Lb/h/o/b0/d$b;

    invoke-direct {v0, p0}, Lb/h/o/b0/d$b;-><init>(Lb/h/o/b0/d;)V

    :goto_e
    iput-object v0, p0, Lb/h/o/b0/d;->a:Ljava/lang/Object;

    goto :goto_1d

    :cond_11
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1b

    new-instance v0, Lb/h/o/b0/d$a;

    invoke-direct {v0, p0}, Lb/h/o/b0/d$a;-><init>(Lb/h/o/b0/d;)V

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e

    :goto_1d
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/b0/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lb/h/o/b0/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lb/h/o/b0/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lb/h/o/b0/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

###### Class b.h.o.b0.d.a (b.h.o.b0.d$a)
.class Lb/h/o/b0/d$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lb/h/o/b0/d;


# direct methods
.method constructor <init>(Lb/h/o/b0/d;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    iput-object p1, p0, Lb/h/o/b0/d$a;->a:Lb/h/o/b0/d;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/d$a;->a:Lb/h/o/b0/d;

    invoke-virtual {v0, p1}, Lb/h/o/b0/d;->a(I)Lb/h/o/b0/c;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-virtual {p1}, Lb/h/o/b0/c;->v()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/h/o/b0/d$a;->a:Lb/h/o/b0/d;

    invoke-virtual {v0, p1, p2}, Lb/h/o/b0/d;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_26

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/o/b0/c;

    invoke-virtual {v2}, Lb/h/o/b0/c;->v()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return-object p2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lb/h/o/b0/d$a;->a:Lb/h/o/b0/d;

    invoke-virtual {v0, p1, p2, p3}, Lb/h/o/b0/d;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

###### Class b.h.o.b0.d.b (b.h.o.b0.d$b)
.class Lb/h/o/b0/d$b;
.super Lb/h/o/b0/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lb/h/o/b0/d;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/h/o/b0/d$a;-><init>(Lb/h/o/b0/d;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/d$a;->a:Lb/h/o/b0/d;

    invoke-virtual {v0, p1}, Lb/h/o/b0/d;->b(I)Lb/h/o/b0/c;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-virtual {p1}, Lb/h/o/b0/c;->v()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
