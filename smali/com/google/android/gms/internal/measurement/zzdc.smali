###### Class com.google.android.gms.internal.measurement.zzdc (com.google.android.gms.internal.measurement.zzdc)
.class public final Lcom/google/android/gms/internal/measurement/zzdc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzcz;)Lcom/google/android/gms/internal/measurement/zzcz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzcz<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzcz<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzde;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzdb;

    if-eqz v0, :cond_9

    goto :goto_19

    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(Lcom/google/android/gms/internal/measurement/zzcz;)V

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzde;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzde;-><init>(Lcom/google/android/gms/internal/measurement/zzcz;)V

    return-object v0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzcz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/zzcz<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
