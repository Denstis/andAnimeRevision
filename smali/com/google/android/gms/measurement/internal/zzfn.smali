###### Class com.google.android.gms.measurement.internal.zzfn (com.google.android.gms.measurement.internal.zzfn)
.class final Lcom/google/android/gms/measurement/internal/zzfn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzd;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzfo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;Lcom/google/android/gms/internal/measurement/zzd;Landroid/content/ServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzc:Lcom/google/android/gms/measurement/internal/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/internal/measurement/zzd;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzb:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzc:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/internal/measurement/zzd;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzb:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzd;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    if-eqz v0, :cond_12f

    const-wide/16 v4, 0x0

    const-string v2, "install_begin_timestamp_seconds"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v2, v6, v4

    if-nez v2, :cond_3c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Service response is missing Install Referrer install timestamp"

    :goto_37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto/16 :goto_12f

    :cond_3c
    const-string v2, "install_referrer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_121

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4c

    goto/16 :goto_121

    :cond_4c
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v10

    const-string v11, "InstallReferrer API result"

    invoke-virtual {v10, v11, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v10

    const-string v11, "?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_72

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    :cond_72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_77
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_8e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "No campaign params defined in install referrer result"

    goto :goto_37

    :cond_8e
    const-string v10, "medium"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a8

    const-string v11, "(not set)"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a8

    const-string v11, "organic"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a8

    const/4 v10, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v10, 0x0

    :goto_a9
    if-eqz v10, :cond_ca

    const-string v10, "referrer_click_timestamp_seconds"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    mul-long v10, v10, v8

    cmp-long v0, v10, v4

    if-nez v0, :cond_c5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    goto/16 :goto_37

    :cond_c5
    const-string v0, "click_timestamp"

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_ca
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzi:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_ed

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Campaign has already been logged"

    goto/16 :goto_37

    :cond_ed
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzi:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v4, "referrer API"

    const-string v5, "Logging Install Referrer campaign from sdk with "

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "_cis"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const-string v4, "auto"

    const-string v5, "_cmp"

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12f

    :cond_121
    :goto_121
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "No referrer defined in install referrer response"

    goto/16 :goto_37

    :cond_12f
    :goto_12f
    if-eqz v3, :cond_13e

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_13e
    return-void
.end method
