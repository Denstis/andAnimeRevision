###### Class com.google.android.gms.internal.ads.zzbuu (com.google.android.gms.internal.ads.zzbuu)
.class public final Lcom/google/android/gms/internal/ads/zzbuu;
.super Lcom/google/android/gms/internal/ads/zzbuv;
.source ""


# instance fields
.field private final zzdcl:Z

.field private final zzdcm:Z

.field private final zzdlo:Z

.field private final zzflv:Lorg/json/JSONObject;

.field private final zzflw:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvr;Lorg/json/JSONObject;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbuv;-><init>(Lcom/google/android/gms/internal/ads/zzcvr;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tracking_urls_and_actions"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "active_view"

    aput-object v3, v0, v2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzawg;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzflv:Lorg/json/JSONObject;

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "allow_pub_owned_ad_view"

    aput-object v3, v0, v1

    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzawg;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzdcm:Z

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "attribution"

    aput-object v0, p1, v1

    const-string v0, "allow_pub_rendering"

    aput-object v0, p1, v2

    invoke-static {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzawg;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzdcl:Z

    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "enable_omid"

    aput-object v0, p1, v1

    invoke-static {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzawg;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzdlo:Z

    if-eqz p2, :cond_49

    const-string p1, "overlay"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_49

    const/4 v1, 0x1

    :cond_49
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzflw:Z

    return-void
.end method


# virtual methods
.method public final zzahl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzdlo:Z

    return v0
.end method

.method public final zzaia()Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzflv:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzdky:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaib()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzflw:Z

    return v0
.end method

.method public final zzaic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzdcm:Z

    return v0
.end method

.method public final zzaid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzdcl:Z

    return v0
.end method
