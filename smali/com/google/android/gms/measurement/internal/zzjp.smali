###### Class com.google.android.gms.measurement.internal.zzjp (com.google.android.gms.measurement.internal.zzjp)
.class final Lcom/google/android/gms/measurement/internal/zzjp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjo;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzju;

.field private final zzc:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjs;-><init>(Lcom/google/android/gms/measurement/internal/zzjp;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzcd:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zzb()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzep;->zzab()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzcq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzb(Lcom/google/android/gms/measurement/internal/zzjo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzb(Lcom/google/android/gms/measurement/internal/zzjo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4c
    return-void
.end method

.method final zzb()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzcd:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zzb()Z

    move-result v0

    const-wide/16 v1, 0x7d0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjo;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzab()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzcq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzju;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, p0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Lcom/google/android/gms/measurement/internal/zzjp;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzb(Lcom/google/android/gms/measurement/internal/zzjo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzb(Lcom/google/android/gms/measurement/internal/zzjo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_56
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjs (com.google.android.gms.measurement.internal.zzjs)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzjs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Lcom/google/android/gms/measurement/internal/zzjp;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjr (com.google.android.gms.measurement.internal.zzjr)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzjr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Application backgrounded"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "auto"

    const-string v3, "_ab"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
