###### Class b.c.b.a (b.c.b.a)
.class public final Lb/c/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/b/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/b/a;->a:Landroid/content/Intent;

    return-void
.end method

###### Class b.c.b.a.C0097a (b.c.b.a$a)
.class public final Lb/c/b/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Bundle;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/c/b/a$a;-><init>(Lb/c/b/b;)V

    return-void
.end method

.method public constructor <init>(Lb/c/b/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/c/b/a$a;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/c/b/a$a;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/c/b/a$a;->c:Landroid/os/Bundle;

    iput-object v0, p0, Lb/c/b/a$a;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/c/b/a$a;->e:Z

    if-nez p1, :cond_2e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_2a

    const-string p1, "android.support.customtabs.extra.SESSION"

    invoke-static {v1, p1, v0}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p1, p0, Lb/c/b/a$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    :cond_2a
    invoke-virtual {p1}, Lb/c/b/b;->a()Landroid/os/IBinder;

    throw v0

    :cond_2e
    invoke-virtual {p1}, Lb/c/b/b;->b()Landroid/content/ComponentName;

    throw v0
.end method


# virtual methods
.method public a()Lb/c/b/a;
    .registers 4

    iget-object v0, p0, Lb/c/b/a$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lb/c/b/a$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_b
    iget-object v0, p0, Lb/c/b/a$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lb/c/b/a$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_16
    iget-object v0, p0, Lb/c/b/a$a;->a:Landroid/content/Intent;

    iget-boolean v1, p0, Lb/c/b/a$a;->e:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Lb/c/b/a;

    iget-object v1, p0, Lb/c/b/a$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Lb/c/b/a$a;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lb/c/b/a;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
