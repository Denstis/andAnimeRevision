###### Class com.google.firebase.iid.zzao (com.google.firebase.iid.zzao)
.class final Lcom/google/firebase/iid/zzao;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zza:I

.field private static zzb:Landroid/app/PendingIntent;


# instance fields
.field private final zzc:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/firebase/iid/zzai;

.field private zzf:Landroid/os/Messenger;

.field private zzg:Landroid/os/Messenger;

.field private zzh:Lcom/google/firebase/iid/zzf;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/zzai;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/g;

    invoke-direct {v0}, Lb/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    iput-object p1, p0, Lcom/google/firebase/iid/zzao;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/zzao;->zze:Lcom/google/firebase/iid/zzai;

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/firebase/iid/zzar;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/iid/zzar;-><init>(Lcom/google/firebase/iid/zzao;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzao;->zzf:Landroid/os/Messenger;

    return-void
.end method

.method private static declared-synchronized zza()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/google/firebase/iid/zzao;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/google/firebase/iid/zzao;->zza:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/firebase/iid/zzao;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-class v0, Lcom/google/firebase/iid/zzao;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzao;->zzb:Landroid/app/PendingIntent;

    if-nez v1, :cond_18

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/iid/zzao;->zzb:Landroid/app/PendingIntent;

    :cond_18
    const-string p0, "app"

    sget-object v1, Lcom/google/firebase/iid/zzao;->zzb:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zza(Landroid/os/Message;)V
    .registers 9

    if-eqz p1, :cond_18f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_18f

    check-cast v0, Landroid/content/Intent;

    new-instance v1, Lcom/google/firebase/iid/zzf$zza;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzf$zza;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/iid/zzf;

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/iid/zzf;

    iput-object v1, p0, Lcom/google/firebase/iid/zzao;->zzh:Lcom/google/firebase/iid/zzf;

    :cond_29
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_31

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/firebase/iid/zzao;->zzg:Landroid/os/Messenger;

    :cond_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_67

    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "Unexpected response action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    :cond_5b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_61
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-void

    :cond_67
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_75

    const-string v0, "unregistered"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_75
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_145

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ab

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected response, no error or registration id "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a4
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    :cond_ab
    const-string v4, "FirebaseInstanceId"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string v4, "Received InstanceID error "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c4

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_ca

    :cond_c4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_ca
    const-string v5, "FirebaseInstanceId"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-le v5, v1, :cond_10a

    aget-object v5, v4, v3

    const-string v6, "ID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_eb

    goto :goto_10a

    :cond_eb
    aget-object v0, v4, v1

    aget-object v1, v4, v2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_fb
    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzao;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_196

    :cond_10a
    :goto_10a
    const-string p1, "Unexpected structured response "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11b

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a4

    :cond_11b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_a4

    :cond_122
    iget-object v4, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_126
    :try_start_126
    iget-object v1, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    invoke-virtual {v1}, Lb/e/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_140

    iget-object v1, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    invoke-virtual {v1, v0}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/iid/zzao;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_126

    :cond_140
    monitor-exit v4

    goto :goto_196

    :catchall_142
    move-exception p1

    monitor-exit v4
    :try_end_144
    .catchall {:try_start_126 .. :try_end_144} :catchall_142

    throw p1

    :cond_145
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_17a

    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_179

    const-string p1, "Unexpected response string: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16e

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_174

    :cond_16e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_174
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_179
    return-void

    :cond_17a
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "registration_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzao;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_18f
    const-string p1, "FirebaseInstanceId"

    const-string v0, "Dropping invalid message"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_196
    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzao;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzao;->zza(Landroid/os/Message;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    invoke-virtual {v1, p1}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v1, :cond_2a

    const-string p2, "FirebaseInstanceId"

    const-string v1, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_20
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_25
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2a
    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private final zzb(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzao;->zzc(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzao;->zzc(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method private final zzc(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    invoke-static {}, Lcom/google/firebase/iid/zzao;->zza()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    invoke-virtual {v3, v0, v1}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_123

    iget-object v2, p0, Lcom/google/firebase/iid/zzao;->zze:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzai;->zza()I

    move-result v2

    if-eqz v2, :cond_11b

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/zzao;->zze:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzai;->zza()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    goto :goto_32

    :cond_30
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    :goto_32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/firebase/iid/zzao;->zzd:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzao;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "|ID|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "kid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FirebaseInstanceId"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    iget-object v3, p0, Lcom/google/firebase/iid/zzao;->zzf:Landroid/os/Messenger;

    const-string v5, "google.messenger"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/zzao;->zzg:Landroid/os/Messenger;

    if-nez v3, :cond_a2

    iget-object v3, p0, Lcom/google/firebase/iid/zzao;->zzh:Lcom/google/firebase/iid/zzf;

    if-eqz v3, :cond_c8

    :cond_a2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_a8
    iget-object v5, p0, Lcom/google/firebase/iid/zzao;->zzg:Landroid/os/Messenger;

    if-eqz v5, :cond_b2

    iget-object v5, p0, Lcom/google/firebase/iid/zzao;->zzg:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_db

    :cond_b2
    iget-object v5, p0, Lcom/google/firebase/iid/zzao;->zzh:Lcom/google/firebase/iid/zzf;

    invoke-virtual {v5, v3}, Lcom/google/firebase/iid/zzf;->zza(Landroid/os/Message;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b7} :catch_b8

    goto :goto_db

    :catch_b8
    nop

    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c8

    const-string p1, "FirebaseInstanceId"

    const-string v3, "Messenger failed, fallback to startService"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    iget-object p1, p0, Lcom/google/firebase/iid/zzao;->zze:Lcom/google/firebase/iid/zzai;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzai;->zza()I

    move-result p1

    if-ne p1, v4, :cond_d6

    iget-object p1, p0, Lcom/google/firebase/iid/zzao;->zzd:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_db

    :cond_d6
    iget-object p1, p0, Lcom/google/firebase/iid/zzao;->zzd:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_db
    :try_start_db
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_e9
    .catch Ljava/lang/InterruptedException; {:try_start_db .. :try_end_e9} :catch_ff
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_db .. :try_end_e9} :catch_ff
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_db .. :try_end_e9} :catch_f8
    .catchall {:try_start_db .. :try_end_e9} :catchall_f6

    iget-object v1, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    monitor-enter v1

    :try_start_ec
    iget-object v2, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    invoke-virtual {v2, v0}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :catchall_f3
    move-exception p1

    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_f3

    throw p1

    :catchall_f6
    move-exception p1

    goto :goto_10e

    :catch_f8
    move-exception p1

    :try_start_f9
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_ff
    const-string p1, "FirebaseInstanceId"

    const-string v1, "No response"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_10e
    .catchall {:try_start_f9 .. :try_end_10e} :catchall_f6

    :goto_10e
    iget-object v1, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    monitor-enter v1

    :try_start_111
    iget-object v2, p0, Lcom/google/firebase/iid/zzao;->zzc:Lb/e/g;

    invoke-virtual {v2, v0}, Lb/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_117
    .catchall {:try_start_111 .. :try_end_117} :catchall_118

    throw p1

    :catchall_118
    move-exception p1

    :try_start_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw p1

    :cond_11b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_123
    move-exception p1

    :try_start_124
    monitor-exit v2
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw p1
.end method


# virtual methods
.method final zza(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/iid/zzao;->zze:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzai;->zzd()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_67

    iget-object v0, p0, Lcom/google/firebase/iid/zzao;->zzd:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/zzv;->zza(Landroid/content/Context;)Lcom/google/firebase/iid/zzv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzv;->zzb(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :try_start_16
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1c} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    goto :goto_20

    :catch_1f
    move-exception v0

    :goto_20
    const/4 v1, 0x3

    const-string v2, "FirebaseInstanceId"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error making request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/zzag;

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzag;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzag;->zza()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_65

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzao;->zzb(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_65
    const/4 p1, 0x0

    return-object p1

    :cond_67
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzao;->zzb(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
