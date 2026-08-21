###### Class com.google.android.gms.internal.ads.zzmb (com.google.android.gms.internal.ads.zzmb)
.class final Lcom/google/android/gms/internal/ads/zzmb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzaqu:J

.field public final zzbch:J

.field public zzbci:Z

.field public zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

.field public zzbck:Lcom/google/android/gms/internal/ads/zzmb;


# direct methods
.method public constructor <init>(JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbch:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzaqu:J

    return-void
.end method


# virtual methods
.method public final zzht()Lcom/google/android/gms/internal/ads/zzmb;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbck:Lcom/google/android/gms/internal/ads/zzmb;

    return-object v0
.end method
