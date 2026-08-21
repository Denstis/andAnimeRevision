###### Class com.google.android.gms.internal.measurement.zzay (com.google.android.gms.internal.measurement.zzay)
.class final Lcom/google/android/gms/internal/measurement/zzay;
.super Lcom/google/android/gms/internal/measurement/zzx$zza;
.source ""


# instance fields
.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzx;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzd:Lcom/google/android/gms/internal/measurement/zzx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzx$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzd:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzc(Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzm;->setDataCollectionEnabled(Z)V

    return-void
.end method
