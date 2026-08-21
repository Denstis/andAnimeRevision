###### Class com.google.android.gms.internal.measurement.zzav (com.google.android.gms.internal.measurement.zzav)
.class final Lcom/google/android/gms/internal/measurement/zzav;
.super Lcom/google/android/gms/internal/measurement/zzx$zza;
.source ""


# instance fields
.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzk;

.field private final synthetic zzd:I

.field private final synthetic zze:Lcom/google/android/gms/internal/measurement/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzx;Lcom/google/android/gms/internal/measurement/zzk;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzav;->zze:Lcom/google/android/gms/internal/measurement/zzx;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzc:Lcom/google/android/gms/internal/measurement/zzk;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzd:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzx$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zze:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzc(Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzc:Lcom/google/android/gms/internal/measurement/zzk;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzd:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzm;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzn;I)V

    return-void
.end method

.method protected final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzc:Lcom/google/android/gms/internal/measurement/zzk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzk;->zza(Landroid/os/Bundle;)V

    return-void
.end method
