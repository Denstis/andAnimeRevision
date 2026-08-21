###### Class b.q.p (b.q.p)
.class public Lb/q/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/p$a;
    }
.end annotation


# static fields
.field private static a:Lb/q/n;

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Lb/e/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lb/q/n;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/q/b;

    invoke-direct {v0}, Lb/q/b;-><init>()V

    sput-object v0, Lb/q/p;->a:Lb/q/n;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/q/p;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb/q/p;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static a()Lb/e/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lb/q/n;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lb/q/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e/a;

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lb/q/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Lb/q/n;)V
    .registers 3

    sget-object v0, Lb/q/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Lb/h/o/s;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lb/q/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_17

    sget-object p1, Lb/q/p;->a:Lb/q/n;

    :cond_17
    invoke-virtual {p1}, Lb/q/n;->clone()Lb/q/n;

    move-result-object p1

    invoke-static {p0, p1}, Lb/q/p;->c(Landroid/view/ViewGroup;Lb/q/n;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb/q/l;->a(Landroid/view/View;Lb/q/l;)V

    invoke-static {p0, p1}, Lb/q/p;->b(Landroid/view/ViewGroup;Lb/q/n;)V

    :cond_25
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Lb/q/n;)V
    .registers 3

    if-eqz p1, :cond_13

    if-eqz p0, :cond_13

    new-instance v0, Lb/q/p$a;

    invoke-direct {v0, p1, p0}, Lb/q/p$a;-><init>(Lb/q/n;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Lb/q/n;)V
    .registers 4

    invoke-static {}, Lb/q/p;->a()Lb/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p0}, Lb/q/n;->pause(Landroid/view/View;)V

    goto :goto_16

    :cond_26
    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lb/q/n;->captureValues(Landroid/view/ViewGroup;Z)V

    :cond_2c
    invoke-static {p0}, Lb/q/l;->a(Landroid/view/View;)Lb/q/l;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lb/q/l;->a()V

    :cond_35
    return-void
.end method

###### Class b.q.p.a (b.q.p$a)
.class Lb/q/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field b:Lb/q/n;

.field c:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lb/q/n;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/q/p$a;->b:Lb/q/n;

    iput-object p2, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    invoke-direct {p0}, Lb/q/p$a;->a()V

    sget-object v0, Lb/q/p;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lb/q/p;->a()Lb/e/a;

    move-result-object v0

    iget-object v2, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_29

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_34

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_34
    :goto_34
    iget-object v4, p0, Lb/q/p$a;->b:Lb/q/n;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/q/p$a;->b:Lb/q/n;

    new-instance v4, Lb/q/p$a$a;

    invoke-direct {v4, p0, v0}, Lb/q/p$a$a;-><init>(Lb/q/p$a;Lb/e/a;)V

    invoke-virtual {v2, v4}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    iget-object v0, p0, Lb/q/p$a;->b:Lb/q/n;

    iget-object v2, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lb/q/n;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v3, :cond_63

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    iget-object v3, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lb/q/n;->resume(Landroid/view/View;)V

    goto :goto_51

    :cond_63
    iget-object v0, p0, Lb/q/p$a;->b:Lb/q/n;

    iget-object v2, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lb/q/n;->playTransition(Landroid/view/ViewGroup;)V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lb/q/p$a;->a()V

    sget-object p1, Lb/q/p;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lb/q/p;->a()Lb/e/a;

    move-result-object p1

    iget-object v0, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/n;

    iget-object v1, p0, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/q/n;->resume(Landroid/view/View;)V

    goto :goto_22

    :cond_34
    iget-object p1, p0, Lb/q/p$a;->b:Lb/q/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb/q/n;->clearValues(Z)V

    return-void
.end method

###### Class b.q.p.a.C0124a (b.q.p$a$a)
.class Lb/q/p$a$a;
.super Lb/q/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/p$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/e/a;

.field final synthetic b:Lb/q/p$a;


# direct methods
.method constructor <init>(Lb/q/p$a;Lb/e/a;)V
    .registers 3

    iput-object p1, p0, Lb/q/p$a$a;->b:Lb/q/p$a;

    iput-object p2, p0, Lb/q/p$a$a;->a:Lb/e/a;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/q/n;)V
    .registers 4

    iget-object v0, p0, Lb/q/p$a$a;->a:Lb/e/a;

    iget-object v1, p0, Lb/q/p$a$a;->b:Lb/q/p$a;

    iget-object v1, v1, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
