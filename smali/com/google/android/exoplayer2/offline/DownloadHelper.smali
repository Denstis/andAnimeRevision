###### Class com.google.android.exoplayer2.offline.DownloadHelper (com.google.android.exoplayer2.offline.DownloadHelper)
.class public abstract Lcom/google/android/exoplayer2/offline/DownloadHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/TrackKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/offline/DownloadAction;"
        }
    .end annotation
.end method

.method public abstract getPeriodCount()I
.end method

.method public abstract getRemoveAction([B)Lcom/google/android/exoplayer2/offline/DownloadAction;
.end method

.method public abstract getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
.end method

.method public prepare(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Landroid/os/Handler;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract prepareInternal()V
.end method

###### Class com.google.android.exoplayer2.offline.DownloadHelper.AnonymousClass1 (com.google.android.exoplayer2.offline.DownloadHelper$1)
.class Lcom/google/android/exoplayer2/offline/DownloadHelper$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;->prepare(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field final synthetic val$callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Landroid/os/Handler;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->this$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->val$callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->this$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;Ljava/io/IOException;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->this$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepareError(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->this$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->prepareInternal()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->val$callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    new-instance v2, Lcom/google/android/exoplayer2/offline/a;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/offline/a;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1f

    :catch_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->val$callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    new-instance v3, Lcom/google/android/exoplayer2/offline/b;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/android/exoplayer2/offline/b;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;Ljava/io/IOException;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method

###### Class com.google.android.exoplayer2.offline.a (com.google.android.exoplayer2.offline.a)
.class public final synthetic Lcom/google/android/exoplayer2/offline/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

.field private final synthetic c:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/a;->b:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/a;->c:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/a;->b:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/a;->c:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->a(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.b (com.google.android.exoplayer2.offline.b)
.class public final synthetic Lcom/google/android/exoplayer2/offline/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

.field private final synthetic c:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

.field private final synthetic d:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;Ljava/io/IOException;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/b;->b:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/b;->c:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/b;->d:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/b;->b:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/b;->c:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/b;->d:Ljava/io/IOException;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->a(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;Ljava/io/IOException;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.DownloadHelper.Callback (com.google.android.exoplayer2.offline.DownloadHelper$Callback)
.class public interface abstract Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onPrepareError(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
.end method

.method public abstract onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
.end method
