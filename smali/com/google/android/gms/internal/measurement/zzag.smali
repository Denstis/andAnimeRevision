###### Class com.google.android.gms.internal.measurement.zzag (com.google.android.gms.internal.measurement.zzag)
.class final Lcom/google/android/gms/internal/measurement/zzag;
.super Lcom/google/android/gms/internal/measurement/zzx$zza;
.source ""


# instance fields
.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzx$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzc(Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzx$zza;->zza:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzm;->resetAnalyticsData(J)V

    return-void
.end method
