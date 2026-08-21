###### Class com.google.android.gms.internal.ads.zzats (com.google.android.gms.internal.ads.zzats)
.class public final Lcom/google/android/gms/internal/ads/zzats;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzdjr:Ljava/lang/String;

.field private final zzdqu:J

.field private final zzdqv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdqw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdqx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzajs;",
            ">;"
        }
    .end annotation
.end field

.field private zzdqy:Ljava/lang/String;

.field private zzdqz:Lorg/json/JSONObject;

.field private zzdra:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqv:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqw:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqx:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdra:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdjr:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqu:J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d1

    :try_start_25
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqz:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqz:Lorg/json/JSONObject;

    const-string p2, "status"

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_40

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdra:Z

    const-string p1, "App settings could not be fetched successfully."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_40
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdra:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqz:Lorg/json/JSONObject;

    const-string p2, "app_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqy:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqz:Lorg/json/JSONObject;

    const-string p2, "ad_unit_id_settings"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a5

    const/4 p2, 0x0

    :goto_57
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_a5

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "format"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_unit_id"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_a2

    :cond_7a
    const-string v3, "interstitial"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqw:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :cond_88
    const-string v3, "rewarded"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string v1, "mediation_config"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_a2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajs;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqx:Ljava/util/Map;

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    :goto_a2
    add-int/lit8 p2, p2, 0x1

    goto :goto_57

    :cond_a5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqz:Lorg/json/JSONObject;

    const-string p2, "persistable_banner_ad_unit_ids"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c1

    :goto_af
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_c1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqv:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_be} :catch_c2

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :cond_c1
    return-void

    :catch_c2
    move-exception p1

    const-string p2, "Exception occurred while processing app setting json"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object p2

    const-string p3, "AppSettings.parseAppSettingsJson"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d1
    return-void
.end method


# virtual methods
.method public final zzul()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqu:J

    return-wide v0
.end method

.method public final zzum()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdra:Z

    return v0
.end method

.method public final zzun()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdjr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzuo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzup()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzajs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqx:Ljava/util/Map;

    return-object v0
.end method

.method public final zzuq()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzdqz:Lorg/json/JSONObject;

    return-object v0
.end method
