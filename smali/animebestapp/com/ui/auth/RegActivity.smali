###### Class animebestapp.com.ui.auth.RegActivity (animebestapp.com.ui.auth.RegActivity)
.class public final Lanimebestapp/com/ui/auth/RegActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/auth/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/auth/c;",
        "Lanimebestapp/com/ui/auth/a;",
        ">;",
        "Lanimebestapp/com/ui/auth/c;"
    }
.end annotation


# instance fields
.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/auth/RegActivity;)Lanimebestapp/com/ui/auth/a;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/auth/a;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    sget v0, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "inPass"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .registers 4

    sget v0, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "inLogin"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c(I)V
    .registers 4

    sget v0, Lanimebestapp/com/a;->inEmail:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "inEmail"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/auth/RegActivity;->t:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/auth/RegActivity;->t:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/auth/RegActivity;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/auth/RegActivity;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/auth/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/auth/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/auth/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/auth/RegActivity;->l()Lanimebestapp/com/ui/auth/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0024

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_91

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->d(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_8d

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->e(Z)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lanimebestapp/com/ui/auth/RegActivity$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/auth/RegActivity$a;-><init>(Lanimebestapp/com/ui/auth/RegActivity;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_89

    const-string v0, "supportActionBar!!"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    sget p1, Lanimebestapp/com/a;->btnEnter:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/auth/RegActivity$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/auth/RegActivity$b;-><init>(Lanimebestapp/com/ui/auth/RegActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->etPass:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lanimebestapp/com/ui/auth/RegActivity$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/auth/RegActivity$c;-><init>(Lanimebestapp/com/ui/auth/RegActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget p1, Lanimebestapp/com/a;->etLogin:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lanimebestapp/com/ui/auth/RegActivity$d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/auth/RegActivity$d;-><init>(Lanimebestapp/com/ui/auth/RegActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget p1, Lanimebestapp/com/a;->etEmail:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lanimebestapp/com/ui/auth/RegActivity$e;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/auth/RegActivity$e;-><init>(Lanimebestapp/com/ui/auth/RegActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_89
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_8d
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_91
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0
.end method

###### Class animebestapp.com.ui.auth.RegActivity.a (animebestapp.com.ui.auth.RegActivity$a)
.class final Lanimebestapp/com/ui/auth/RegActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/auth/RegActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/RegActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$a;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$a;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class animebestapp.com.ui.auth.RegActivity.b (animebestapp.com.ui.auth.RegActivity$b)
.class final Lanimebestapp/com/ui/auth/RegActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/auth/RegActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/RegActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$b;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$b;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/auth/RegActivity;->a(Lanimebestapp/com/ui/auth/RegActivity;)Lanimebestapp/com/ui/auth/a;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/auth/RegActivity$b;->b:Lanimebestapp/com/ui/auth/RegActivity;

    sget v1, Lanimebestapp/com/a;->etLogin:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "etLogin"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/auth/RegActivity$b;->b:Lanimebestapp/com/ui/auth/RegActivity;

    sget v2, Lanimebestapp/com/a;->etPass:I

    invoke-virtual {v1, v2}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "etPass"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/auth/RegActivity$b;->b:Lanimebestapp/com/ui/auth/RegActivity;

    sget v3, Lanimebestapp/com/a;->etEmail:I

    invoke-virtual {v2, v3}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "etEmail"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lanimebestapp/com/ui/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.RegActivity.c (animebestapp.com.ui.auth.RegActivity$c)
.class public final Lanimebestapp/com/ui/auth/RegActivity$c;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/auth/RegActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/RegActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$c;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$c;->b:Lanimebestapp/com/ui/auth/RegActivity;

    sget p2, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "inPass"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.RegActivity.d (animebestapp.com.ui.auth.RegActivity$d)
.class public final Lanimebestapp/com/ui/auth/RegActivity$d;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/auth/RegActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/RegActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$d;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$d;->b:Lanimebestapp/com/ui/auth/RegActivity;

    sget p2, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "inLogin"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.RegActivity.e (animebestapp.com.ui.auth.RegActivity$e)
.class public final Lanimebestapp/com/ui/auth/RegActivity$e;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/auth/RegActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/RegActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$e;->b:Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/auth/RegActivity$e;->b:Lanimebestapp/com/ui/auth/RegActivity;

    sget p2, Lanimebestapp/com/a;->inEmail:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/auth/RegActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "inEmail"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
