###### Class com.google.android.gms.measurement.internal.zze (com.google.android.gms.measurement.internal.zze)
.class abstract Lcom/google/android/gms/measurement/internal/zze;
.super Lcom/google/android/gms/measurement/internal/zzf;
.source ""


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    return-void
.end method


# virtual methods
.method protected zzaa()V
    .registers 1

    return-void
.end method

.method final zzv()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzw()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzv()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzx()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzz()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzaf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    :cond_12
    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzy()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzaf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zzz()Z
.end method
