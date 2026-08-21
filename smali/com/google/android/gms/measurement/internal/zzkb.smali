###### Class com.google.android.gms.measurement.internal.zzkb (com.google.android.gms.measurement.internal.zzkb)
.class abstract Lcom/google/android/gms/measurement/internal/zzkb;
.super Lcom/google/android/gms/measurement/internal/zzkc;
.source ""


# instance fields
.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkb;)V

    return-void
.end method


# virtual methods
.method final zzaj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzak()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzal()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->zze()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Z

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zze()Z
.end method
