###### Class com.google.android.gms.internal.ads.zzcov (com.google.android.gms.internal.ads.zzcov)
.class public final Lcom/google/android/gms/internal/ads/zzcov;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdjk:F

.field private final zzdme:I

.field private final zzdmm:Z

.field private final zzdmn:Z

.field private final zzdmr:I

.field private final zzdmv:I

.field private final zzdmw:I

.field private final zzgeu:Z


# direct methods
.method public constructor <init>(IZZIIIFZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdme:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmm:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmn:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmr:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmv:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmw:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdjk:F

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzgeu:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/os/Bundle;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdme:I

    const-string v1, "am"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmm:Z

    const-string v1, "ma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmn:Z

    const-string v1, "sp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmr:I

    const-string v1, "muv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmv:I

    const-string v1, "rm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdmw:I

    const-string v1, "riv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzdjk:F

    const-string v1, "android_app_volume"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzgeu:Z

    const-string v1, "android_app_muted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
