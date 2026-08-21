###### Class com.google.android.gms.measurement.internal.zzhu (com.google.android.gms.measurement.internal.zzhu)
.class final Lcom/google/android/gms/measurement/internal/zzhu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzhb;Z)V

    return-void
.end method
