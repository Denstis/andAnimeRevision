###### Class com.google.android.gms.measurement.internal.zzih (com.google.android.gms.measurement.internal.zzih)
.class final Lcom/google/android/gms/measurement/internal/zzih;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzif;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzif;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzii;ZLcom/google/android/gms/measurement/internal/zzif;Lcom/google/android/gms/measurement/internal/zzif;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzif;Z)V

    goto :goto_35

    :cond_27
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    if-eqz v3, :cond_34

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzif;Z)V

    :cond_34
    const/4 v0, 0x0

    :cond_35
    :goto_35
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    if-eqz v3, :cond_5b

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/zzif;->zzc:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzif;->zzc:J

    cmp-long v9, v4, v7

    if-nez v9, :cond_5b

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzif;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzif;->zza:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    :cond_5b
    const/4 v1, 0x1

    :cond_5c
    if-eqz v1, :cond_bf

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzif;Landroid/os/Bundle;Z)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    if-eqz v2, :cond_87

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzif;->zza:Ljava/lang/String;

    if-eqz v2, :cond_75

    const-string v3, "_pn"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Ljava/lang/String;

    const-string v3, "_pc"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzif;->zzc:J

    const-string v4, "_pi"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_87
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzii;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_b2

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzk()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjo;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjw;->zzb()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_b2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;J)V

    :cond_b2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_bf
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzh()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Lcom/google/android/gms/measurement/internal/zzif;)V

    return-void
.end method
