###### Class com.google.android.gms.internal.ads.zzbwq (com.google.android.gms.internal.ads.zzbwq)
.class public final Lcom/google/android/gms/internal/ads/zzbwq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

.field private final zzeen:Lcom/google/android/gms/internal/ads/zzsd;

.field private final zzegb:Lcom/google/android/gms/internal/ads/zzdf;

.field private final zzffn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfoo:Lcom/google/android/gms/internal/ads/zzbwl;

.field private final zzfop:Lcom/google/android/gms/ads/internal/zza;

.field private final zzfoq:Lcom/google/android/gms/internal/ads/zzbxe;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbwl;Lcom/google/android/gms/internal/ads/zzdf;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzsd;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcwe;Lcom/google/android/gms/internal/ads/zzbxe;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfoo:Lcom/google/android/gms/internal/ads/zzbwl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfop:Lcom/google/android/gms/ads/internal/zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzeen:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbwq;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p8, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfoq:Lcom/google/android/gms/internal/ads/zzbxe;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TT;>;"
        }
    .end annotation

    const-class p1, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbwx;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_34

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_15

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_16

    :cond_15
    const/4 p3, 0x1

    :goto_16
    const/4 v1, 0x0

    :goto_17
    if-ge v1, p3, :cond_27

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbwt;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwq;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_34
    :goto_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_19
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v4, "scale"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const/4 v1, 0x1

    const-string v2, "is_transparent"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x1

    const-string v4, "width"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "height"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz p2, :cond_47

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaau;

    const/4 v6, 0x0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_47
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfoo:Lcom/google/android/gms/internal/ads/zzbwl;

    invoke-virtual {p2, v3, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzbwl;->zza(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbws;

    move-object v2, v1

    move-wide v4, v8

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbws;-><init>(Ljava/lang/String;DII)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p2

    const-string v1, "require"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(ZLcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method private static zza(ZLcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbww;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbww;-><init>(Lcom/google/android/gms/internal/ads/zzddi;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0
.end method

.method private static zzf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzi(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxk;",
            ">;"
        }
    .end annotation

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "reasons"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_39

    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_22
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbwq;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_38
    return-object v0

    :cond_39
    :goto_39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxk;
    .registers 3

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    const-string v1, "default_reason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    :cond_13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbwq;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object p0

    return-object p0
.end method

.method private static zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxk;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "reason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_22

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxk;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzxk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-object v0
.end method


# virtual methods
.method final synthetic zza(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaat;
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4e

    :cond_a
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bg_color"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "text_color"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, -0x1

    const-string v2, "text_size"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "allow_pub_rendering"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v2, 0x3e8

    const-string v4, "animation_ms"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xfa0

    const-string v7, "presentation_ms"

    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaat;

    if-lez v1, :cond_41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_41
    move-object v7, v0

    add-int v8, p1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget v9, p1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjy:I

    move-object v2, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    return-object v11

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 16

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkk()Lcom/google/android/gms/internal/ads/zzbcb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzlk:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaar()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfop:Lcom/google/android/gms/ads/internal/zza;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzeen:Lcom/google/android/gms/internal/ads/zzsd;

    const-string v2, "native-omid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzbcb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdf;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzsd;Lcom/google/android/gms/internal/ads/zzrf;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxw;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbwz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwz;-><init>(Lcom/google/android/gms/internal/ads/zzaxw;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)V

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzaay;->zzcvz:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaau;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzaay;->zzcvz:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzaay;->zzbjx:Z

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzaat;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_c

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbwv;-><init>(Lcom/google/android/gms/internal/ads/zzbwq;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    const-string v1, "require"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(ZLcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "html_containers"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "instream"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzawg;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5b

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_21

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_21
    const-string v0, "vast_xml"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p1, "Required field \'vast_xml\' is missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfoq:Lcom/google/android/gms/internal/ads/zzbxe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxe;->zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcoe:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_5b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfoq:Lcom/google/android/gms/internal/ads/zzbxe;

    const-string v2, "base_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbxe;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    const-string v2, "require"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(ZLcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzbws (com.google.android.gms.internal.ads.zzbws)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbws;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# instance fields
.field private final zzczh:Ljava/lang/String;

.field private final zzdtl:I

.field private final zzdtm:I

.field private final zzfot:D


# direct methods
.method constructor <init>(Ljava/lang/String;DII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzczh:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfot:D

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzdtl:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzdtm:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzczh:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfot:D

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzdtl:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzdtm:I

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaau;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8
.end method

###### Class com.google.android.gms.internal.ads.zzbwv (com.google.android.gms.internal.ads.zzbwv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbwv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# instance fields
.field private final zzfch:Lorg/json/JSONObject;

.field private final zzfou:Lcom/google/android/gms/internal/ads/zzbwq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwq;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwv;->zzfou:Lcom/google/android/gms/internal/ads/zzbwq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwv;->zzfch:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwv;->zzfou:Lcom/google/android/gms/internal/ads/zzbwq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwv;->zzfch:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbwq;->zza(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaat;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzbww (com.google.android.gms.internal.ads.zzbww)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbww;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzfov:Lcom/google/android/gms/internal/ads/zzddi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbww;->zzfov:Lcom/google/android/gms/internal/ads/zzddi;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbww;->zzfov:Lcom/google/android/gms/internal/ads/zzddi;

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcjh;

    const/4 v0, 0x0

    const-string v1, "Retrieve required value in native ad response failed."

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzbwx (com.google.android.gms.internal.ads.zzbwx)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbwx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzfow:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwx;->zzfow:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwx;->zzfow:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    const-string v1, "Error during loading assets."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaug;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzbwz (com.google.android.gms.internal.ads.zzbwz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbwz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdf;


# instance fields
.field private final zzefu:Lcom/google/android/gms/internal/ads/zzaxw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzefu:Lcom/google/android/gms/internal/ads/zzaxw;

    return-void
.end method


# virtual methods
.method public final zzad(Z)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzefu:Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxw;->zzwp()V

    return-void
.end method
