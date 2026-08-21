###### Class com.google.android.gms.internal.measurement.zzcx (com.google.android.gms.internal.measurement.zzcx)
.class public final Lcom/google/android/gms/internal/measurement/zzcx;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
