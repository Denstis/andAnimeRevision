###### Class com.google.android.gms.internal.ads.zzajs (com.google.android.gms.internal.ads.zzajs)
.class public final Lcom/google/android/gms/internal/ads/zzajs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzdbw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdbx:J

.field private final zzdby:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdbz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdca:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdcb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdcc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdcd:Z

.field private final zzdce:Ljava/lang/String;

.field private final zzdcf:J

.field private final zzdcg:Ljava/lang/String;

.field private final zzdch:I

.field private final zzdci:I

.field private final zzdcj:J

.field private final zzdck:Z

.field private final zzdcl:Z

.field private final zzdcm:Z

.field private final zzdcn:Z

.field private zzdco:I

.field private zzdcp:I

.field private zzdcq:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "Mediation Response JSON: "

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :cond_27
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_7d

    :try_start_40
    new-instance v6, Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzajt;-><init>(Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_49} :catch_7a

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzajt;->zzddm:Ljava/lang/String;

    const-string v8, "banner"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_56

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcq:Z

    :cond_56
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v5, :cond_7a

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajt;->zzdct:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    goto :goto_77

    :cond_76
    const/4 v8, 0x0

    :goto_77
    if-eqz v8, :cond_7a

    move v5, v4

    :catch_7a
    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_7d
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdco:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcp:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdbw:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdce:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdci:I

    const-wide/16 v0, -0x1

    const-string v2, "timeout_ms"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcj:J

    const-string v2, "settings"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_141

    const-string v4, "ad_network_timeout_millis"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdbx:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzajv;

    const-string v4, "click_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdby:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzajv;

    const-string v4, "imp_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdbz:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzajv;

    const-string v4, "downloaded_imp_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdca:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzajv;

    const-string v4, "nofill_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcb:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzajv;

    const-string v4, "remote_ping_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcc:Ljava/util/List;

    const-string v4, "render_in_browser"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcd:Z

    const-string v4, "refresh"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_105

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, v4

    :cond_105
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcf:J

    const-string v0, "rewards"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqt;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzaqt;

    move-result-object v0

    if-nez v0, :cond_118

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcg:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdch:I

    goto :goto_120

    :cond_118
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcg:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzdnv:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdch:I

    :goto_120
    const-string v0, "use_displayed_impression"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdck:Z

    const-string v0, "allow_pub_rendered_attribution"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcl:Z

    const-string v0, "allow_pub_owned_ad_view"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcm:Z

    const-string v0, "allow_custom_click_gesture"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcn:Z

    return-void

    :cond_141
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdbx:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdby:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdbz:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdca:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcb:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcc:Ljava/util/List;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcf:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcg:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdch:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdck:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcd:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcl:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcm:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzdcn:Z

    return-void
.end method
