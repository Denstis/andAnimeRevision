###### Class com.google.android.gms.measurement.internal.zzjn (com.google.android.gms.measurement.internal.zzjn)
.class final Lcom/google/android/gms/measurement/internal/zzjn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Lcom/google/android/gms/measurement/internal/zzjo;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zza(Lcom/google/android/gms/measurement/internal/zzjo;J)V

    return-void
.end method
