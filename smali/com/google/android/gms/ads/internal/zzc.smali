###### Class com.google.android.gms.ads.internal.zzc (com.google.android.gms.ads.internal.zzc)
.class public final Lcom/google/android/gms/ads/internal/zzc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzbkr:Z

.field private zzbks:Lcom/google/android/gms/internal/ads/zzasi;

.field private zzbkt:Lcom/google/android/gms/internal/ads/zzaop;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzaop;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbks:Lcom/google/android/gms/internal/ads/zzasi;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkt:Lcom/google/android/gms/internal/ads/zzaop;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkt:Lcom/google/android/gms/internal/ads/zzaop;

    if-nez p1, :cond_15

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaop;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaop;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkt:Lcom/google/android/gms/internal/ads/zzaop;

    :cond_15
    return-void
.end method

.method private final zzjj()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbks:Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zztm()Lcom/google/android/gms/internal/ads/zzasd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasd;->zzdpb:Z

    if-nez v0, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkt:Lcom/google/android/gms/internal/ads/zzaop;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzdlt:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final recordClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkr:Z

    return-void
.end method

.method public final zzbl(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzjj()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, ""

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbks:Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzasi;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkt:Lcom/google/android/gms/internal/ads/zzaop;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaop;->zzdlt:Z

    if-eqz v2, :cond_4a

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaop;->zzdlu:Ljava/util/List;

    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc;->zzlk:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzaul;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_4a
    return-void
.end method

.method public final zzjk()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzjj()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbkr:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method
