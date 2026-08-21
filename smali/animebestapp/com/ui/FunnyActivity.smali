###### Class animebestapp.com.ui.FunnyActivity (animebestapp.com.ui.FunnyActivity)
.class public final Lanimebestapp/com/ui/FunnyActivity;
.super Landroidx/appcompat/app/d;
.source ""


# instance fields
.field private final q:Lanimebestapp/com/ui/FunnyActivity$a;

.field private r:Z

.field private s:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    new-instance v6, Lanimebestapp/com/ui/FunnyActivity$a;

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lanimebestapp/com/ui/FunnyActivity$a;-><init>(Lanimebestapp/com/ui/FunnyActivity;JJ)V

    iput-object v6, p0, Lanimebestapp/com/ui/FunnyActivity;->q:Lanimebestapp/com/ui/FunnyActivity$a;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/FunnyActivity;)Lanimebestapp/com/ui/FunnyActivity$a;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/FunnyActivity;->q:Lanimebestapp/com/ui/FunnyActivity$a;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/FunnyActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/ui/FunnyActivity;->r:Z

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/FunnyActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lanimebestapp/com/ui/FunnyActivity;->r:Z

    return p0
.end method


# virtual methods
.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity;->s:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/FunnyActivity;->s:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/FunnyActivity;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    sget p1, Lanimebestapp/com/a;->btnClose:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lanimebestapp/com/ui/FunnyActivity$d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/FunnyActivity$d;-><init>(Lanimebestapp/com/ui/FunnyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "tvTimer"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity;->q:Lanimebestapp/com/ui/FunnyActivity$a;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    sget p1, Lanimebestapp/com/a;->btnClose:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, "btnClose"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget p1, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/FunnyActivity$e;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/FunnyActivity$e;-><init>(Lanimebestapp/com/ui/FunnyActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_64

    const/4 v1, 0x1

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    if-eqz v1, :cond_69

    const-string p1, "https://animebestapp.org/donate.html"

    :cond_69
    sget v1, Lanimebestapp/com/a;->webView:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3"

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance v2, Lanimebestapp/com/ui/FunnyActivity$b;

    invoke-direct {v2, p0, p1}, Lanimebestapp/com/ui/FunnyActivity$b;-><init>(Lanimebestapp/com/ui/FunnyActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Lanimebestapp/com/ui/FunnyActivity$c;

    invoke-direct {v2, p0, p1}, Lanimebestapp/com/ui/FunnyActivity$c;-><init>(Lanimebestapp/com/ui/FunnyActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.FunnyActivity.a (animebestapp.com.ui.FunnyActivity$a)
.class public final Lanimebestapp/com/ui/FunnyActivity$a;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/FunnyActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/FunnyActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/FunnyActivity;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$a;->a:Lanimebestapp/com/ui/FunnyActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$a;->a:Lanimebestapp/com/ui/FunnyActivity;

    sget v1, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/FunnyActivity$a$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/FunnyActivity$a$a;-><init>(Lanimebestapp/com/ui/FunnyActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .registers 7

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$a;->a:Lanimebestapp/com/ui/FunnyActivity;

    sget v1, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTimer"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u0447\u0435\u0440\u0435\u0437 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u0441\u0435\u043a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.FunnyActivity.a.RunnableC0036a (animebestapp.com.ui.FunnyActivity$a$a)
.class final Lanimebestapp/com/ui/FunnyActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/FunnyActivity$a;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/FunnyActivity$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/FunnyActivity$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$a$a;->b:Lanimebestapp/com/ui/FunnyActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$a$a;->b:Lanimebestapp/com/ui/FunnyActivity$a;

    iget-object v0, v0, Lanimebestapp/com/ui/FunnyActivity$a;->a:Lanimebestapp/com/ui/FunnyActivity;

    sget v1, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTimer"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$a$a;->b:Lanimebestapp/com/ui/FunnyActivity$a;

    iget-object v0, v0, Lanimebestapp/com/ui/FunnyActivity$a;->a:Lanimebestapp/com/ui/FunnyActivity;

    sget v2, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {v0, v2}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$a$a;->b:Lanimebestapp/com/ui/FunnyActivity$a;

    iget-object v0, v0, Lanimebestapp/com/ui/FunnyActivity$a;->a:Lanimebestapp/com/ui/FunnyActivity;

    sget v1, Lanimebestapp/com/a;->btnClose:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "btnClose"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

###### Class animebestapp.com.ui.FunnyActivity.b (animebestapp.com.ui.FunnyActivity$b)
.class public final Lanimebestapp/com/ui/FunnyActivity$b;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/FunnyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/FunnyActivity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/FunnyActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$b;->a:Lanimebestapp/com/ui/FunnyActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/FunnyActivity$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$b;->a:Lanimebestapp/com/ui/FunnyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :cond_5
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$b;->a:Lanimebestapp/com/ui/FunnyActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/FunnyActivity;->b(Lanimebestapp/com/ui/FunnyActivity;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const-string v1, "android.intent.action.VIEW"

    if-lt p1, v0, :cond_24

    if-eqz p2, :cond_37

    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$b;->a:Lanimebestapp/com/ui/FunnyActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    :cond_24
    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$b;->a:Lanimebestapp/com/ui/FunnyActivity;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_37
    :goto_37
    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$b;->a:Lanimebestapp/com/ui/FunnyActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, 0x0

    goto :goto_43

    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    :goto_43
    return p1
.end method

###### Class animebestapp.com.ui.FunnyActivity.c (animebestapp.com.ui.FunnyActivity$c)
.class public final Lanimebestapp/com/ui/FunnyActivity$c;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/FunnyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/FunnyActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/FunnyActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$c;->a:Lanimebestapp/com/ui/FunnyActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_18

    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$c;->a:Lanimebestapp/com/ui/FunnyActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/FunnyActivity;->a(Lanimebestapp/com/ui/FunnyActivity;)Lanimebestapp/com/ui/FunnyActivity$a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$c;->a:Lanimebestapp/com/ui/FunnyActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lanimebestapp/com/ui/FunnyActivity;->a(Lanimebestapp/com/ui/FunnyActivity;Z)V

    :cond_18
    return-void
.end method

###### Class animebestapp.com.ui.FunnyActivity.d (animebestapp.com.ui.FunnyActivity$d)
.class final Lanimebestapp/com/ui/FunnyActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/FunnyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/FunnyActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/FunnyActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$d;->b:Lanimebestapp/com/ui/FunnyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$d;->b:Lanimebestapp/com/ui/FunnyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$d;->b:Lanimebestapp/com/ui/FunnyActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

###### Class animebestapp.com.ui.FunnyActivity.e (animebestapp.com.ui.FunnyActivity$e)
.class final Lanimebestapp/com/ui/FunnyActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/FunnyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/FunnyActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/FunnyActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/FunnyActivity$e;->b:Lanimebestapp/com/ui/FunnyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$e;->b:Lanimebestapp/com/ui/FunnyActivity;

    sget v1, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTimer"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$e;->b:Lanimebestapp/com/ui/FunnyActivity;

    sget v2, Lanimebestapp/com/a;->tvTimer:I

    invoke-virtual {v0, v2}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/FunnyActivity$e;->b:Lanimebestapp/com/ui/FunnyActivity;

    sget v1, Lanimebestapp/com/a;->btnClose:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/FunnyActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "btnClose"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
