###### Class com.google.android.gms.internal.ads.zzaaa (com.google.android.gms.internal.ads.zzaaa)
.class public final Lcom/google/android/gms/internal/ads/zzaaa;
.super Lcom/google/android/gms/internal/ads/zzaaf;
.source ""


# instance fields
.field private final zzcuq:Lcom/google/android/gms/ads/internal/zze;

.field private final zzcur:Ljava/lang/String;

.field private final zzcus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zze;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcuq:Lcom/google/android/gms/ads/internal/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcur:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcus:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcuq:Lcom/google/android/gms/ads/internal/zze;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zze;->zzjl()V

    return-void
.end method

.method public final recordImpression()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcuq:Lcom/google/android/gms/ads/internal/zze;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zze;->zzjm()V

    return-void
.end method

.method public final zzqb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcur:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzcuq:Lcom/google/android/gms/ads/internal/zze;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zze;->zzg(Landroid/view/View;)V

    return-void
.end method
