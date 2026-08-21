###### Class com.google.android.gms.measurement.internal.zzhw (com.google.android.gms.measurement.internal.zzhw)
.class final Lcom/google/android/gms/measurement/internal/zzhw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzk:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zza:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
