###### Class com.google.android.gms.measurement.internal.zzju (com.google.android.gms.measurement.internal.zzju)
.class final Lcom/google/android/gms/measurement/internal/zzju;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzjt;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjt (com.google.android.gms.measurement.internal.zzjt)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzjt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzju;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzju;->zza:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Application going to the background"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "auto"

    const-string v4, "_ab"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
