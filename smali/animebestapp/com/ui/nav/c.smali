###### Class animebestapp.com.ui.nav.c (animebestapp.com.ui.nav.c)
.class public final Lanimebestapp/com/ui/nav/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/appcompat/app/c;

.field private b:Landroid/view/View;

.field private c:Lg/p/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/p/a/a<",
            "Lg/l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method public constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c;->d:Lanimebestapp/com/ui/nav/NavActivity;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/c;->d:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0b003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c;->b:Landroid/view/View;

    const-string v1, "view"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->text1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.text1"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u0422\u0435\u043a\u0443\u0449\u0430\u044f \u0432\u0435\u0440\u0441\u0438\u044f 1.6.4"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lanimebestapp/com/a;->info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.info"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0410\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u0430\u044f \u0432\u0435\u0440\u0441\u0438\u044f \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lanimebestapp/com/models/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lanimebestapp/com/models/h;->d()I

    move-result v1

    const/16 v2, 0xa4

    if-le v1, v2, :cond_75

    sget v0, Lanimebestapp/com/a;->btnUpdate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/nav/c$a;

    invoke-direct {v1, p0, p2}, Lanimebestapp/com/ui/nav/c$a;-><init>(Lanimebestapp/com/ui/nav/c;Lanimebestapp/com/models/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_85

    :cond_75
    sget p2, Lanimebestapp/com/a;->btnUpdate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string v1, "view.btnUpdate"

    invoke-static {p2, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_85
    sget p2, Lanimebestapp/com/a;->btnClose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/nav/c$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/c$b;-><init>(Lanimebestapp/com/ui/nav/c;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->d:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lanimebestapp/com/ui/nav/c$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/c$c;-><init>(Lanimebestapp/com/ui/nav/c;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/c$a;->a(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/c$a;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/c$a;->b(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    invoke-virtual {p2}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    const-string p2, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c;->a:Landroidx/appcompat/app/c;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/c;)Lg/p/a/a;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/c;->c:Lg/p/a/a;

    return-object p0
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/c;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/c;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->b:Landroid/view/View;

    if-eqz v0, :cond_2e

    sget v1, Lanimebestapp/com/a;->btnUpdate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_13

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    sget v1, Lanimebestapp/com/a;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_21

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_21
    sget v1, Lanimebestapp/com/a;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2e
    return-void
.end method

.method public final a(Lg/p/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/p/a/a<",
            "Lg/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c;->c:Lg/p/a/a;

    return-void
.end method

.method public final b()Lanimebestapp/com/ui/nav/NavActivity;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->d:Lanimebestapp/com/ui/nav/NavActivity;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method

###### Class animebestapp.com.ui.nav.c.a (animebestapp.com.ui.nav.c$a)
.class final Lanimebestapp/com/ui/nav/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/c;

.field final synthetic c:Lanimebestapp/com/models/h;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/c;Lanimebestapp/com/models/h;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c$a;->b:Lanimebestapp/com/ui/nav/c;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/c$a;->c:Lanimebestapp/com/models/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/c$a;->b:Lanimebestapp/com/ui/nav/c;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/c;->b(Lanimebestapp/com/ui/nav/c;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_17

    sget v0, Lanimebestapp/com/a;->btnUpdate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_17

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    iget-object p1, p0, Lanimebestapp/com/ui/nav/c$a;->b:Lanimebestapp/com/ui/nav/c;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/c;->b(Lanimebestapp/com/ui/nav/c;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2d

    sget v0, Lanimebestapp/com/a;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2d
    iget-object p1, p0, Lanimebestapp/com/ui/nav/c$a;->b:Lanimebestapp/com/ui/nav/c;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/c;->b()Lanimebestapp/com/ui/nav/NavActivity;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/nav/c$a;->c:Lanimebestapp/com/models/h;

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/h;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.c.b (animebestapp.com.ui.nav.c$b)
.class final Lanimebestapp/com/ui/nav/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c$b;->b:Lanimebestapp/com/ui/nav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/c$b;->b:Lanimebestapp/com/ui/nav/c;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/c;->a()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.c.DialogInterfaceOnDismissListenerC0064c (animebestapp.com.ui.nav.c$c)
.class final Lanimebestapp/com/ui/nav/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/c$c;->b:Lanimebestapp/com/ui/nav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/c$c;->b:Lanimebestapp/com/ui/nav/c;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/c;->a(Lanimebestapp/com/ui/nav/c;)Lg/p/a/a;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lg/p/a/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/l;

    :cond_e
    return-void
.end method
