###### Class com.google.android.gms.internal.ads.zzcgc (com.google.android.gms.internal.ads.zzcgc)
.class public final Lcom/google/android/gms/internal/ads/zzcgc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzfiv:Lcom/google/android/gms/internal/ads/zzbni;

.field private zzfiw:Lcom/google/android/gms/internal/ads/zzcvr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfiw:Lcom/google/android/gms/internal/ads/zzcvr;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbni;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfiv:Lcom/google/android/gms/internal/ads/zzbni;

    return-void
.end method

.method public final zzaks()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfiv:Lcom/google/android/gms/internal/ads/zzbni;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfiw:Lcom/google/android/gms/internal/ads/zzcvr;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    :cond_f
    return-void
.end method
