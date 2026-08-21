###### Class animebestapp.com.ui.nav.b (animebestapp.com.ui.nav.b)
.class public final Lanimebestapp/com/ui/nav/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/appcompat/app/c;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/p/a/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg/p/a/a<",
            "Lg/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openMenu"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/b;->b:Landroid/content/Context;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b003c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->btnAuth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/nav/b$a;

    invoke-direct {v1, p0, p2}, Lanimebestapp/com/ui/nav/b$a;-><init>(Lanimebestapp/com/ui/nav/b;Lg/p/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lanimebestapp/com/a;->btnReg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/nav/b$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/b$b;-><init>(Lanimebestapp/com/ui/nav/b;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/b;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/c$a;->b(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    invoke-virtual {p2}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    const-string p2, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/b;->a:Landroidx/appcompat/app/c;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/b;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/b;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/b;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lanimebestapp/com/ui/nav/b;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method

###### Class animebestapp.com.ui.nav.b.a (animebestapp.com.ui.nav.b$a)
.class final Lanimebestapp/com/ui/nav/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/b;-><init>(Landroid/content/Context;Lg/p/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/b;

.field final synthetic c:Lg/p/a/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/b;Lg/p/a/a;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/b$a;->b:Lanimebestapp/com/ui/nav/b;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/b$a;->c:Lg/p/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/b$a;->c:Lg/p/a/a;

    invoke-interface {p1}, Lg/p/a/a;->a()Ljava/lang/Object;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/b$a;->b:Lanimebestapp/com/ui/nav/b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/b;->a()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.b.ViewOnClickListenerC0063b (animebestapp.com.ui.nav.b$b)
.class final Lanimebestapp/com/ui/nav/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/b;-><init>(Landroid/content/Context;Lg/p/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/b$b;->b:Lanimebestapp/com/ui/nav/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/nav/b$b;->b:Lanimebestapp/com/ui/nav/b;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/b;->a(Lanimebestapp/com/ui/nav/b;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/b$b;->b:Lanimebestapp/com/ui/nav/b;

    invoke-static {v1}, Lanimebestapp/com/ui/nav/b;->a(Lanimebestapp/com/ui/nav/b;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/b$b;->b:Lanimebestapp/com/ui/nav/b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/b;->a()V

    return-void
.end method
