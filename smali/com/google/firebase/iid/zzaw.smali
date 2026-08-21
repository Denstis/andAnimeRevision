###### Class com.google.firebase.iid.zzaw (com.google.firebase.iid.zzaw)
.class public final Lcom/google/firebase/iid/zzaw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:J

.field private static final zzb:Ljava/lang/Object;

.field private static zzc:Lcom/google/android/gms/stats/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/zzaw;->zza:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 6

    sget-object v0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzaw;->zzc:Lcom/google/android/gms/stats/WakeLock;

    const/4 v2, 0x1

    if-nez v1, :cond_14

    new-instance v1, Lcom/google/android/gms/stats/WakeLock;

    const-string v3, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/stats/WakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/zzaw;->zzc:Lcom/google/android/gms/stats/WakeLock;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/stats/WakeLock;->setReferenceCounted(Z)V

    :cond_14
    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzaw;->zza(Landroid/content/Intent;Z)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_27

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_27
    if-nez v1, :cond_30

    sget-object p1, Lcom/google/firebase/iid/zzaw;->zzc:Lcom/google/android/gms/stats/WakeLock;

    sget-wide v1, Lcom/google/firebase/iid/zzaw;->zza:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/stats/WakeLock;->acquire(J)V

    :cond_30
    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public static zza(Landroid/content/Intent;)V
    .registers 4

    sget-object v0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzaw;->zzc:Lcom/google/android/gms/stats/WakeLock;

    if-eqz v1, :cond_18

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0, v2}, Lcom/google/firebase/iid/zzaw;->zza(Landroid/content/Intent;Z)V

    sget-object p0, Lcom/google/firebase/iid/zzaw;->zzc:Lcom/google/android/gms/stats/WakeLock;

    invoke-virtual {p0}, Lcom/google/android/gms/stats/WakeLock;->release()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private static zza(Landroid/content/Intent;Z)V
    .registers 3

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
