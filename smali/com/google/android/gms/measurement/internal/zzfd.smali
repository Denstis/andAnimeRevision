###### Class com.google.android.gms.measurement.internal.zzfd (com.google.android.gms.measurement.internal.zzfd)
.class Lcom/google/android/gms/measurement/internal/zzfd;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzke;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfd;)Lcom/google/android/gms/measurement/internal/zzke;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzd:Z

    if-eq p2, p1, :cond_3e

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzd:Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfg;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    :cond_3e
    return-void

    :cond_3f
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzc:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzn()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzc:Z

    return-void
.end method

.method public final zzb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzc:Z

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzn()Landroid/content/Context;

    move-result-object v0

    :try_start_36
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
