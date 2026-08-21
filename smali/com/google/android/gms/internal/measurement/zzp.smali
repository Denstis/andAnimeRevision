###### Class com.google.android.gms.internal.measurement.zzp (com.google.android.gms.internal.measurement.zzp)
.class public final Lcom/google/android/gms/internal/measurement/zzp;
.super Lcom/google/android/gms/internal/measurement/zza;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzn;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zza;->a_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
