###### Class com.google.android.gms.measurement.internal.zzai (com.google.android.gms.measurement.internal.zzai)
.class final Lcom/google/android/gms/measurement/internal/zzai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgt;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzgt;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzaf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzaf;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzaf;J)J

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()V

    :cond_29
    return-void
.end method
