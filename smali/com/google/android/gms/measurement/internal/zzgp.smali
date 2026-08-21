###### Class com.google.android.gms.measurement.internal.zzgp (com.google.android.gms.measurement.internal.zzgp)
.class final Lcom/google/android/gms/measurement/internal/zzgp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzgb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zze:Lcom/google/android/gms/measurement/internal/zzgb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zza:Ljava/lang/String;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zze:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzgb;)Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzs()Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzv()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzif;)V

    return-void

    :cond_19
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzc:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzd:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zze:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzgb;)Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzs()Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzv()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzif;)V

    return-void
.end method
