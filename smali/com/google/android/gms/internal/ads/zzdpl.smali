###### Class com.google.android.gms.internal.ads.zzdpl (com.google.android.gms.internal.ads.zzdpl)
.class final Lcom/google/android/gms/internal/ads/zzdpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public zzhfx:I

.field public zzhfy:J

.field public zzhfz:Ljava/lang/Object;

.field public final zzhga:Lcom/google/android/gms/internal/ads/zzdqj;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzaza()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzhga:Lcom/google/android/gms/internal/ads/zzdqj;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzhga:Lcom/google/android/gms/internal/ads/zzdqj;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
