###### Class com.google.android.gms.internal.measurement.zzaf (com.google.android.gms.internal.measurement.zzaf)
.class final Lcom/google/android/gms/internal/measurement/zzaf;
.super Lcom/google/android/gms/internal/measurement/zzx$zza;
.source ""


# instance fields
.field private final synthetic zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzx;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzd:Lcom/google/android/gms/internal/measurement/zzx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzc:J

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzx$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzd:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzc(Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzc:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzm;->setMinimumSessionDuration(J)V

    return-void
.end method
