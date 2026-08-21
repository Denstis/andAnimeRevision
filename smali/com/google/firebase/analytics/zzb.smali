###### Class com.google.firebase.analytics.zzb (com.google.firebase.analytics.zzb)
.class final Lcom/google/firebase/analytics/zzb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method constructor <init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb(Lcom/google/firebase/analytics/FirebaseAnalytics;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzh()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zzc(J)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;)V

    return-object v0

    :cond_35
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method
