###### Class animebestapp.com.ui.splash.SplashActivity (animebestapp.com.ui.splash.SplashActivity)
.class public final Lanimebestapp/com/ui/splash/SplashActivity;
.super Landroidx/appcompat/app/d;
.source ""


# instance fields
.field private q:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity;->q:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity;->q:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/splash/SplashActivity;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0025

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    new-instance p1, Lanimebestapp/com/b/a/b;

    invoke-direct {p1, p0}, Lanimebestapp/com/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lanimebestapp/com/b/a/b;->b()Z

    move-result v0

    sget v1, Lanimebestapp/com/a;->ivLogo:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/splash/SplashActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lanimebestapp/com/ui/splash/SplashActivity$a;

    invoke-direct {v2, p0, v0, p1}, Lanimebestapp/com/ui/splash/SplashActivity$a;-><init>(Lanimebestapp/com/ui/splash/SplashActivity;ZLanimebestapp/com/b/a/b;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class animebestapp.com.ui.splash.SplashActivity.a (animebestapp.com.ui.splash.SplashActivity$a)
.class final Lanimebestapp/com/ui/splash/SplashActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/splash/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/splash/SplashActivity;

.field final synthetic c:Z

.field final synthetic d:Lanimebestapp/com/b/a/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/splash/SplashActivity;ZLanimebestapp/com/b/a/b;)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->b:Lanimebestapp/com/ui/splash/SplashActivity;

    iput-boolean p2, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->c:Z

    iput-object p3, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->d:Lanimebestapp/com/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-boolean v0, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->c:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->b:Lanimebestapp/com/ui/splash/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->d:Lanimebestapp/com/b/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/b/a/b;->a(Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->d:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->i()V

    goto :goto_28

    :cond_1c
    iget-object v0, p0, Lanimebestapp/com/ui/splash/SplashActivity$a;->b:Lanimebestapp/com/ui/splash/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_28
    return-void
.end method
