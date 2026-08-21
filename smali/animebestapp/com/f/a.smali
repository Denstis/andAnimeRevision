###### Class animebestapp.com.f.a (animebestapp.com.f.a)
.class public final Lanimebestapp/com/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroidx/appcompat/app/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0b003b

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroidx/appcompat/app/c$a;

    invoke-direct {v3, p1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/c$a;->b(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/c$a;->a(Z)Landroidx/appcompat/app/c$a;

    invoke-virtual {v3}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/f/a;->a:Landroidx/appcompat/app/c;

    iget-object p1, p0, Lanimebestapp/com/f/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3c

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/f/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/f/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lanimebestapp/com/f/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method
