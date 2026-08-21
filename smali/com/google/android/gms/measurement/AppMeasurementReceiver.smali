###### Class com.google.android.gms.measurement.AppMeasurementReceiver (com.google.android.gms.measurement.AppMeasurementReceiver)
.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Lb/m/a/a;
.source ""

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzfr;


# instance fields
.field private zza:Lcom/google/android/gms/measurement/internal/zzfq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/m/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final doGoAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .registers 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1, p2}, Lb/m/a/a;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zza:Lcom/google/android/gms/measurement/internal/zzfq;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zza:Lcom/google/android/gms/measurement/internal/zzfq;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zza:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
