###### Class c.a.a.o.e (c.a.a.o.e)
.class final Lc/a/a/o/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/o/c;


# instance fields
.field private final b:Landroid/content/Context;

.field final c:Lc/a/a/o/c$a;

.field d:Z

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc/a/a/o/c$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/o/e$a;

    invoke-direct {v0, p0}, Lc/a/a/o/e$a;-><init>(Lc/a/a/o/e;)V

    iput-object v0, p0, Lc/a/a/o/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/a/a/o/e;->c:Lc/a/a/o/c$a;

    return-void
.end method

.method private a()V
    .registers 5

    iget-boolean v0, p0, Lc/a/a/o/e;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lc/a/a/o/e;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lc/a/a/o/e;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/a/o/e;->d:Z

    :try_start_d
    iget-object v0, p0, Lc/a/a/o/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lc/a/a/o/e;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/o/e;->e:Z
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_2e

    :catch_1f
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Failed to register"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lc/a/a/o/e;->e:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lc/a/a/o/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lc/a/a/o/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/o/e;->e:Z

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_1d

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catch_1d
    move-exception p1

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-direct {p0}, Lc/a/a/o/e;->a()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-direct {p0}, Lc/a/a/o/e;->b()V

    return-void
.end method

###### Class c.a.a.o.e.a (c.a.a.o.e$a)
.class Lc/a/a/o/e$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/o/e;


# direct methods
.method constructor <init>(Lc/a/a/o/e;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/o/e$a;->a:Lc/a/a/o/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p2, p0, Lc/a/a/o/e$a;->a:Lc/a/a/o/e;

    iget-boolean v0, p2, Lc/a/a/o/e;->d:Z

    invoke-virtual {p2, p1}, Lc/a/a/o/e;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Lc/a/a/o/e;->d:Z

    iget-object p1, p0, Lc/a/a/o/e$a;->a:Lc/a/a/o/e;

    iget-boolean p1, p1, Lc/a/a/o/e;->d:Z

    if-eq v0, p1, :cond_3a

    const/4 p1, 0x3

    const-string p2, "ConnectivityMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_31

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectivity changed, isConnected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/a/o/e$a;->a:Lc/a/a/o/e;

    iget-boolean v0, v0, Lc/a/a/o/e;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object p1, p0, Lc/a/a/o/e$a;->a:Lc/a/a/o/e;

    iget-object p2, p1, Lc/a/a/o/e;->c:Lc/a/a/o/c$a;

    iget-boolean p1, p1, Lc/a/a/o/e;->d:Z

    invoke-interface {p2, p1}, Lc/a/a/o/c$a;->a(Z)V

    :cond_3a
    return-void
.end method
