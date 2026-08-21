###### Class com.google.android.gms.internal.ads.zzags (com.google.android.gms.internal.ads.zzags)
.class final Lcom/google/android/gms/internal/ads/zzags;
.super Lcom/google/android/gms/internal/ads/zzbdv;
.source ""


# instance fields
.field private final synthetic zzcza:Lcom/google/android/gms/internal/ads/zzagm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzagm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzcza:Lcom/google/android/gms/internal/ads/zzagm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagm;Lcom/google/android/gms/internal/ads/zzagq;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzags;-><init>(Lcom/google/android/gms/internal/ads/zzagm;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbdy;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzcza:Lcom/google/android/gms/internal/ads/zzagm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagm;->zza(Lcom/google/android/gms/internal/ads/zzagm;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzcza:Lcom/google/android/gms/internal/ads/zzagm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagm;->zza(Lcom/google/android/gms/internal/ads/zzagm;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzahd;->zzre()V

    :cond_11
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbdy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzcza:Lcom/google/android/gms/internal/ads/zzagm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdy;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzagz;->zzg(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbdy;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzcza:Lcom/google/android/gms/internal/ads/zzagm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdy;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzagz;->zzg(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
