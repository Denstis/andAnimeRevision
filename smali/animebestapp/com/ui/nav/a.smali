###### Class animebestapp.com.ui.nav.a (animebestapp.com.ui.nav.a)
.class public final Lanimebestapp/com/ui/nav/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/appcompat/app/c;

.field private final b:Landroidx/appcompat/app/d;

.field private final c:Lanimebestapp/com/ui/nav/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/d;Lanimebestapp/com/ui/nav/d;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/a;->b:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/a;->b:Landroidx/appcompat/app/d;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0b003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "view.tvTitle"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->tvMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "view.tvMessage"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v2}, Lanimebestapp/com/ui/nav/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->tvMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "view.btnRight"

    const/16 v2, 0x8

    if-nez v0, :cond_80

    sget v0, Lanimebestapp/com/a;->btnRight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_94

    :cond_80
    sget v0, Lanimebestapp/com/a;->btnRight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_94
    iget-object v0, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "view.btnLeft"

    if-nez v0, :cond_ad

    sget v0, Lanimebestapp/com/a;->btnLeft:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c1

    :cond_ad
    sget v0, Lanimebestapp/com/a;->btnLeft:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_c1
    iget-object v0, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_ce

    const/4 p2, 0x1

    :cond_ce
    if-eqz p2, :cond_f0

    invoke-static {p1}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object p2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p2

    sget v0, Lanimebestapp/com/a;->ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    move-result-object p2

    const-string v0, "Glide.with(view)\n       \u2026      .into(view.ivImage)"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_100

    :cond_f0
    sget p2, Lanimebestapp/com/a;->ivImage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v0, "view.ivImage"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_100
    sget p2, Lanimebestapp/com/a;->btnLeft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/nav/a$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/a$a;-><init>(Lanimebestapp/com/ui/nav/a;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lanimebestapp/com/a;->btnRight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/nav/a$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/a$b;-><init>(Lanimebestapp/com/ui/nav/a;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/a;->b:Landroidx/appcompat/app/d;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/c$a;->b(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    invoke-virtual {p2}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    const-string p2, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/a;->a:Landroidx/appcompat/app/c;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/a;)Landroidx/appcompat/app/d;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/a;->b:Landroidx/appcompat/app/d;

    return-object p0
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/a;)Lanimebestapp/com/ui/nav/d;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/a;->c:Lanimebestapp/com/ui/nav/d;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final b()V
    .registers 7

    new-instance v0, Lanimebestapp/com/b/a/b;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->b:Landroidx/appcompat/app/d;

    invoke-direct {v0, v1}, Lanimebestapp/com/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->c()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->c()J

    move-result-wide v1

    const v3, 0x36ee80

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_36

    :cond_22
    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanimebestapp/com/b/a/b;->c(J)V

    :cond_36
    return-void
.end method

###### Class animebestapp.com.ui.nav.a.ViewOnClickListenerC0062a (animebestapp.com.ui.nav.a$a)
.class final Lanimebestapp/com/ui/nav/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/a;-><init>(Landroidx/appcompat/app/d;Lanimebestapp/com/ui/nav/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/a$a;->b:Lanimebestapp/com/ui/nav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$a;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/a;->b(Lanimebestapp/com/ui/nav/a;)Lanimebestapp/com/ui/nav/d;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/d;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$a;->b:Lanimebestapp/com/ui/nav/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/a;->a()V

    goto :goto_30

    :cond_12
    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$a;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/a;->a(Lanimebestapp/com/ui/nav/a;)Landroidx/appcompat/app/d;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a$a;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {v1}, Lanimebestapp/com/ui/nav/a;->b(Lanimebestapp/com/ui/nav/a;)Lanimebestapp/com/ui/nav/d;

    move-result-object v1

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_30
    return-void
.end method

###### Class animebestapp.com.ui.nav.a.b (animebestapp.com.ui.nav.a$b)
.class final Lanimebestapp/com/ui/nav/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/a;-><init>(Landroidx/appcompat/app/d;Lanimebestapp/com/ui/nav/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/a$b;->b:Lanimebestapp/com/ui/nav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$b;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/a;->b(Lanimebestapp/com/ui/nav/a;)Lanimebestapp/com/ui/nav/d;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/d;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$b;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/a;->b(Lanimebestapp/com/ui/nav/a;)Lanimebestapp/com/ui/nav/d;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz p1, :cond_22

    goto :goto_41

    :cond_22
    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$b;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/a;->a(Lanimebestapp/com/ui/nav/a;)Landroidx/appcompat/app/d;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/a$b;->b:Lanimebestapp/com/ui/nav/a;

    invoke-static {v1}, Lanimebestapp/com/ui/nav/a;->b(Lanimebestapp/com/ui/nav/a;)Lanimebestapp/com/ui/nav/d;

    move-result-object v1

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_46

    :cond_41
    :goto_41
    iget-object p1, p0, Lanimebestapp/com/ui/nav/a$b;->b:Lanimebestapp/com/ui/nav/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/a;->a()V

    :goto_46
    return-void
.end method
