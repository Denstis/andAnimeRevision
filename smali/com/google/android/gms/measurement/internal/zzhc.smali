###### Class com.google.android.gms.measurement.internal.zzhc (com.google.android.gms.measurement.internal.zzhc)
.class public final Lcom/google/android/gms/measurement/internal/zzhc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Ljava/lang/String;

.field zzc:Ljava/lang/String;

.field zzd:Ljava/lang/String;

.field zze:Ljava/lang/Boolean;

.field zzf:J

.field zzg:Lcom/google/android/gms/internal/measurement/zzv;

.field zzh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzh:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zza:Landroid/content/Context;

    if-eqz p2, :cond_3a

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzg:Lcom/google/android/gms/internal/measurement/zzv;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzv;->zzf:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzb:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzv;->zze:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzv;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzd:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/measurement/zzv;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzh:Z

    iget-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzv;->zzb:J

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzf:J

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzv;->zzg:Landroid/os/Bundle;

    if-eqz p1, :cond_3a

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zze:Ljava/lang/Boolean;

    :cond_3a
    return-void
.end method
