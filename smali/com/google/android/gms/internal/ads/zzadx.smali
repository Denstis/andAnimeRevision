###### Class com.google.android.gms.internal.ads.zzadx (com.google.android.gms.internal.ads.zzadx)
.class public final Lcom/google/android/gms/internal/ads/zzadx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcxc:Lcom/google/android/gms/internal/ads/zzadw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzcxc:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method private static zzb(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_153

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2d

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_2d
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_3b

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_d

    :cond_3b
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_49

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d

    :cond_49
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_57

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :cond_57
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_61

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_61
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_12f

    check-cast v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_70

    goto :goto_d

    :cond_70
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v0

    const/4 v8, 0x0

    :goto_77
    if-nez v7, :cond_8a

    if-ge v8, v5, :cond_8a

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_86

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_87

    :cond_86
    move-object v7, v0

    :goto_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    :cond_8a
    if-nez v7, :cond_a7

    const-string v4, "Expected JSONArray with at least 1 non-null element for key:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9d

    :goto_98
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_9d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_a7
    instance-of v8, v7, Lorg/json/JSONObject;

    if-eqz v8, :cond_c9

    new-array v7, v5, [Landroid/os/Bundle;

    :goto_ad
    if-ge v6, v5, :cond_c4

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_be

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v8

    goto :goto_bf

    :cond_be
    move-object v8, v0

    :goto_bf
    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_ad

    :cond_c4
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :cond_c9
    instance-of v8, v7, Ljava/lang/Number;

    if-eqz v8, :cond_e3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [D

    :goto_d3
    if-ge v6, v5, :cond_de

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d3

    :cond_de
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_d

    :cond_e3
    instance-of v8, v7, Ljava/lang/CharSequence;

    if-eqz v8, :cond_101

    new-array v7, v5, [Ljava/lang/String;

    :goto_e9
    if-ge v6, v5, :cond_fc

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_f6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f7

    :cond_f6
    move-object v8, v0

    :goto_f7
    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e9

    :cond_fc
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_101
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_117

    new-array v7, v5, [Z

    :goto_107
    if-ge v6, v5, :cond_112

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v8

    aput-boolean v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_107

    :cond_112
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_d

    :cond_117
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "JSONArray with unsupported type %s for key:%s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a2

    :cond_12f
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_13e

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :cond_13e
    const-string v4, "Unsupported type for key:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_14c

    goto/16 :goto_98

    :cond_14c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a2

    :cond_153
    return-object v2
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzcxc:Lcom/google/android/gms/internal/ads/zzadw;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "name"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_16

    const-string p1, "Ad metadata with no name parameter."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    const-string p1, ""

    :cond_16
    const-string v0, "info"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    :try_start_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception p2

    const-string v0, "Failed to convert ad metadata to JSON."

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    if-nez v2, :cond_3d

    const-string p1, "Failed to convert ad metadata to Bundle."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_3d
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzcxc:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
