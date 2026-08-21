###### Class b.h.o.b0.b (b.h.o.b0.b)
.class public final Lb/h/o/b0/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/o/b0/b$a;,
        Lb/h/o/b0/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityManager;Lb/h/o/b0/b$a;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_14

    if-nez p1, :cond_a

    return v1

    :cond_a
    new-instance v0, Lb/h/o/b0/b$b;

    invoke-direct {v0, p1}, Lb/h/o/b0/b$b;-><init>(Lb/h/o/b0/b$a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0

    :cond_14
    return v1
.end method

.method public static b(Landroid/view/accessibility/AccessibilityManager;Lb/h/o/b0/b$a;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_14

    if-nez p1, :cond_a

    return v1

    :cond_a
    new-instance v0, Lb/h/o/b0/b$b;

    invoke-direct {v0, p1}, Lb/h/o/b0/b$b;-><init>(Lb/h/o/b0/b$a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0

    :cond_14
    return v1
.end method

###### Class b.h.o.b0.b.a (b.h.o.b0.b$a)
.class public interface abstract Lb/h/o/b0/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onTouchExplorationStateChanged(Z)V
.end method

###### Class b.h.o.b0.b.AccessibilityManagerTouchExplorationStateChangeListenerC0107b (b.h.o.b0.b$b)
.class Lb/h/o/b0/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lb/h/o/b0/b$a;


# direct methods
.method constructor <init>(Lb/h/o/b0/b$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/b0/b$b;->a:Lb/h/o/b0/b$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lb/h/o/b0/b$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lb/h/o/b0/b$b;

    iget-object v0, p0, Lb/h/o/b0/b$b;->a:Lb/h/o/b0/b$a;

    iget-object p1, p1, Lb/h/o/b0/b$b;->a:Lb/h/o/b0/b$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/b$b;->a:Lb/h/o/b0/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTouchExplorationStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/b$b;->a:Lb/h/o/b0/b$a;

    invoke-interface {v0, p1}, Lb/h/o/b0/b$a;->onTouchExplorationStateChanged(Z)V

    return-void
.end method
