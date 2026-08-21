###### Class com.google.android.gms.measurement.internal.zzht (com.google.android.gms.measurement.internal.zzht)
.class final Lcom/google/android/gms/measurement/internal/zzht;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzaa()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Z)V

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Z

    if-ne v1, v2, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v1

    if-eq v1, v0, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzaa()Z

    move-result v2

    if-eq v1, v2, :cond_6b

    :cond_50
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzk()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzhb;)V

    return-void
.end method
