###### Class com.google.firebase.iid.zzbd (com.google.firebase.iid.zzbd)
.class final Lcom/google/firebase/iid/zzbd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final zza:Landroid/content/Intent;

.field private final zzb:Landroid/content/BroadcastReceiver$PendingResult;

.field private zzc:Z

.field private final zzd:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzbd;->zzc:Z

    iput-object p1, p0, Lcom/google/firebase/iid/zzbd;->zza:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/firebase/iid/zzbd;->zzb:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance p2, Lcom/google/firebase/iid/zzbc;

    invoke-direct {p2, p0, p1}, Lcom/google/firebase/iid/zzbc;-><init>(Lcom/google/firebase/iid/zzbd;Landroid/content/Intent;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2328

    invoke-interface {p3, p2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzbd;->zzd:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final declared-synchronized zza()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/zzbd;->zzc:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/firebase/iid/zzbd;->zzb:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    iget-object v0, p0, Lcom/google/firebase/iid/zzbd;->zzd:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzbd;->zzc:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.firebase.iid.zzbc (com.google.firebase.iid.zzbc)
.class final synthetic Lcom/google/firebase/iid/zzbc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzbd;

.field private final zzb:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzbd;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzbc;->zza:Lcom/google/firebase/iid/zzbd;

    iput-object p2, p0, Lcom/google/firebase/iid/zzbc;->zzb:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzbc;->zza:Lcom/google/firebase/iid/zzbd;

    iget-object v1, p0, Lcom/google/firebase/iid/zzbc;->zzb:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service took too long to process intent: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " App may get closed."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseInstanceId"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzbd;->zza()V

    return-void
.end method
