###### Class com.google.android.gms.internal.ads.zzazk (com.google.android.gms.internal.ads.zzazk)
.class public final Lcom/google/android/gms/internal/ads/zzazk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzeai:Z

.field public final zzeaj:I

.field public final zzeak:I

.field public final zzeal:I

.field public final zzeam:Ljava/lang/String;

.field public final zzean:I

.field public final zzeao:I

.field public final zzeap:I

.field public final zzeaq:I

.field public final zzear:Z

.field public final zzeas:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    move-object v0, v1

    :catch_c
    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzchu:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "aggressive_media_codec_release"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeai:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzchb:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "byte_buffer_precache_limit"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeaj:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzchi:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "exo_cache_buffer_size"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeak:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcgx:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "exo_connect_timeout_millis"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeal:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcgw:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "exo_player_version"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeam:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcgy:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "exo_read_timeout_millis"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzean:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcgz:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "load_check_interval_bytes"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeao:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcha:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "player_precache_limit"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeap:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzchc:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "socket_receive_buffer_size"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeaq:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcpr:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "use_cache_data_source"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzear:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzche:Lcom/google/android/gms/internal/ads/zzyp;

    const-string v1, "min_retry_count"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzeas:I

    return-void
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzyp<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzazk;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 3

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    :cond_7
    return p2
.end method

.method private static zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzyp<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzyp<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
