###### Class com.google.android.gms.internal.ads.zzbtq (com.google.android.gms.internal.ads.zzbtq)
.class public final Lcom/google/android/gms/internal/ads/zzbtq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;


# instance fields
.field private final zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private final zzegb:Lcom/google/android/gms/internal/ads/zzdf;

.field private final zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

.field private final zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

.field private final zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzfjj:Lorg/json/JSONObject;

.field private final zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

.field private final zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

.field private final zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

.field private final zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

.field private final zzfjo:Lcom/google/android/gms/internal/ads/zzbhk;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzbvm;

.field private final zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

.field private zzfjr:Z

.field private zzfjs:Z

.field private zzfjt:Z

.field private zzfju:Z

.field private zzfjv:Landroid/graphics/Point;

.field private zzfjw:Landroid/graphics/Point;

.field private zzfjx:J

.field private zzfjy:J

.field private zzfjz:Lcom/google/android/gms/internal/ads/zzwe;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbuy;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzbur;Lcom/google/android/gms/internal/ads/zzdf;Lcom/google/android/gms/internal/ads/zzbni;Lcom/google/android/gms/internal/ads/zzbmv;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzcwe;Lcom/google/android/gms/internal/ads/zzbhk;Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzcyp;)V
    .registers 20

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjr:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjt:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfju:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjw:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjx:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjy:J

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzlk:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjo:Lcom/google/android/gms/internal/ads/zzbhk;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjp:Lcom/google/android/gms/internal/ads/zzbvm;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbtq;)Lcom/google/android/gms/internal/ads/zzbni;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    return-object p0
.end method

.method private final zza(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "ad_view"

    const-string v3, "relative_to"

    const-string v4, "y"

    const-string v5, "x"

    const-string v6, "height"

    const-string v7, "width"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_12c

    if-nez p3, :cond_1b

    goto/16 :goto_12c

    :cond_1b
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbtq;->zzw(Landroid/view/View;)[I

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_27
    :goto_27
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_27

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzbtq;->zzw(Landroid/view/View;)[I

    move-result-object v13

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p1, v10

    :try_start_51
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v10

    invoke-virtual {v15, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v10

    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x0

    aget v16, v13, v10

    aget v17, v9, v10

    sub-int v10, v16, v17

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v10

    invoke-virtual {v15, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x1

    aget v16, v13, v10

    aget v17, v9, v10

    sub-int v10, v16, v17

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v10

    invoke-virtual {v15, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "frame"

    invoke-virtual {v14, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_9c

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zzb(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v15, 0x1

    goto :goto_c6

    :cond_9c
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v10, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v16, v13, v15

    aget v17, v9, v15

    sub-int v15, v16, v17

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v15

    invoke-virtual {v10, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v15, 0x1

    aget v13, v13, v15

    aget v16, v9, v15

    sub-int v13, v13, v16

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v13

    invoke-virtual {v10, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_c6
    const-string v13, "visible_bounds"

    invoke-virtual {v14, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v10, v12, Landroid/widget/TextView;

    if-eqz v10, :cond_f3

    move-object v10, v12

    check-cast v10, Landroid/widget/TextView;

    const-string v13, "text_color"

    invoke-virtual {v10}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v15

    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "font_size"

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v15
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_e1} :catch_11b

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    float-to-double v2, v15

    :try_start_e6
    invoke-virtual {v14, v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    :cond_f3
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :goto_f7
    const-string v2, "is_clickable"

    if-eqz v1, :cond_10d

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    invoke-virtual {v12}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_10d

    const/4 v3, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v3, 0x0

    :goto_10e
    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_e6 .. :try_end_11a} :catch_11f

    goto :goto_124

    :catch_11b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :catch_11f
    const-string v2, "Unable to get asset views information"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :goto_124
    move-object/from16 v10, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_27

    :cond_12c
    :goto_12c
    return-object v8
.end method

.method private final zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .registers 15

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbur;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzbuy;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaco;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_3e

    const/4 p2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p2, 0x0

    :goto_3f
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbur;->zzahp()I

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz p6, :cond_73

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzaay;->zzbka:Z

    if-eqz p6, :cond_73

    const/4 p6, 0x1

    goto :goto_74

    :cond_73
    const/4 p6, 0x0

    :goto_74
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbur;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_8f

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbur;->zzahs()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object p6

    if-eqz p6, :cond_8f

    const/4 p6, 0x1

    goto :goto_90

    :cond_8f
    const/4 p6, 0x0

    :goto_90
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjp:Lcom/google/android/gms/internal/ads/zzbvm;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbvm;->zzaiw()Lcom/google/android/gms/internal/ads/zzadf;

    move-result-object p5

    if-eqz p5, :cond_aa

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_aa

    const-string p5, "custom_one_point_five_click_eligible"

    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_aa
    const-string p5, "timestamp"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfju:Z

    if-eqz p5, :cond_c4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzahc()Z

    move-result p5

    if-eqz p5, :cond_c4

    const-string p5, "custom_click_gesture_eligible"

    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_c4
    if-eqz p10, :cond_cb

    const-string p5, "is_custom_click_gesture"

    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_cb
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfdo:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbur;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/ads/zzbuy;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaco;

    move-result-object p5

    if-eqz p5, :cond_da

    const/4 p3, 0x1

    :cond_da
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzv(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "click"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjx:J

    sub-long p5, p2, p5

    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjy:J

    sub-long/2addr p2, p5

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string p2, "google.afma.nativeAds.handleClick"

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbyh;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/String;)V
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_119} :catch_11a

    return-void

    :catch_11a
    move-exception p1

    const-string p2, "Unable to create click JSON."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 9

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string p2, "/logScionEvent"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbts;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Lcom/google/android/gms/internal/ads/zzbtq;Lcom/google/android/gms/internal/ads/zzbtt;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string p2, "/nativeImpression"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Lcom/google/android/gms/internal/ads/zzbtq;Lcom/google/android/gms/internal/ads/zzbtt;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string p2, "google.afma.nativeAds.handleImpression"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_50} :catch_79

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjr:Z

    if-nez p1, :cond_77

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjj:Lorg/json/JSONObject;

    if-eqz p2, :cond_77

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkt()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzlk:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjj:Lorg/json/JSONObject;

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    invoke-virtual {p2, p3, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzavm;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjr:Z

    :cond_77
    const/4 p1, 0x1

    return p1

    :catch_79
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final zzahc()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final zzahg()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjw:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjw:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception v0

    const-string v1, "Error occurred while putting signals into JSON object."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbtq;)Lcom/google/android/gms/internal/ads/zzbmv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    return-object p0
.end method

.method private final zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbur;->zzahp()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_49

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_48

    const/4 p2, 0x6

    if-eq p1, p2, :cond_45

    return-object v0

    :cond_45
    const-string p1, "3099"

    return-object p1

    :cond_48
    return-object v0

    :cond_49
    const-string p1, "2099"

    return-object p1

    :cond_4c
    const-string p1, "1099"

    return-object p1
.end method

.method private final zzb(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result p1

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "relative_to"

    const-string v1, "self"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final zzdf(I)I
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private final zzfo(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v1
.end method

.method private final zzfq(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_17

    :try_start_6
    const-string v0, "click_point"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzahg()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "asset_id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_1e

    :catch_15
    move-exception p1

    goto :goto_19

    :catch_17
    move-exception p1

    move-object v1, v0

    :goto_19
    const-string v0, "Error occurred while grabbing click signals."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    return-object v1
.end method

.method private final zzs(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 15

    const-string v0, "window"

    const-string v1, "relative_to"

    const-string v2, "y"

    const-string v3, "x"

    const-string v4, "height"

    const-string v5, "width"

    const-string v6, "Cannot access method getTemplateTypeName: "

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_16

    return-object v7

    :cond_16
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzw(Landroid/view/View;)[I

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v12

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v12

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v12, v10, v9

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v12

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v12, v10, v8

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v12

    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "frame"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/ads/zzbtq;->zzb(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_82

    :cond_61
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v4, v10, v9

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v4

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v3, v10, v8

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zzdf(I)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v11

    :goto_82
    const-string v1, "visible_bounds"

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_87} :catch_88

    goto :goto_8d

    :catch_88
    const-string v0, "Unable to get native ad view bounding box"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :goto_8d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzctf:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_100

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c2

    :try_start_a5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTemplateTypeName"

    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_b9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a5 .. :try_end_b9} :catch_c2
    .catch Ljava/lang/SecurityException; {:try_start_a5 .. :try_end_b9} :catch_be
    .catch Ljava/lang/IllegalAccessException; {:try_start_a5 .. :try_end_b9} :catch_bc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a5 .. :try_end_b9} :catch_ba

    goto :goto_c4

    :catch_ba
    move-exception p1

    goto :goto_bf

    :catch_bc
    move-exception p1

    goto :goto_bf

    :catch_be
    move-exception p1

    :goto_bf
    invoke-static {v6, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_c2
    :cond_c2
    const-string p1, ""

    :goto_c4
    const/4 v0, -0x1

    :try_start_c5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7b2ddf4e

    if-eq v1, v2, :cond_de

    const v2, 0x78630204

    if-eq v1, v2, :cond_d4

    goto :goto_e7

    :cond_d4
    const-string v1, "medium_template"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e7

    const/4 v0, 0x1

    goto :goto_e7

    :cond_de
    const-string v1, "small_template"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_c5 .. :try_end_e4} :catch_fa

    if-eqz p1, :cond_e7

    const/4 v0, 0x0

    :cond_e7
    :goto_e7
    const-string p1, "native_template_type"

    if-eqz v0, :cond_f6

    if-eq v0, v8, :cond_f1

    :try_start_ed
    invoke-virtual {v7, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_100

    :cond_f1
    const/4 v0, 0x2

    invoke-virtual {v7, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_100

    :cond_f6
    invoke-virtual {v7, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f9
    .catch Lorg/json/JSONException; {:try_start_ed .. :try_end_f9} :catch_fa

    goto :goto_100

    :catch_fa
    move-exception p1

    const-string v0, "Could not log native template signal to JSON"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_100
    :goto_100
    return-object v7
.end method

.method private static zzt(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaul;->zzp(Landroid/view/View;)I

    move-result p0

    const-string v1, "contained_in_scroll_view"

    const/4 v2, -0x1

    if-eq p0, v2, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1a

    :catch_1a
    return-object v0
.end method

.method private final zzu(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    const-string v1, "can_show_on_lock_screen"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaul;->zzo(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "is_keyguard_locked"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzlk:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaul;->zzax(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_28

    :catch_23
    const-string p1, "Unable to get lock screen information"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :goto_28
    return-object v0
.end method

.method private final zzv(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string v1, "tracking_urls_and_actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_f
    const-string v1, "click_string"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdf;->zzcd()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzlk:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdc;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    const-string v0, "Exception obtaining click signals"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static zzw(Landroid/view/View;)[I
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjp:Lcom/google/android/gms/internal/ads/zzbvm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvm;->cancelUnconfirmedClick()V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyh;->destroy()V

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzahc()Z

    move-result v0

    return v0
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjp:Lcom/google/android/gms/internal/ads/zzbvm;

    if-eqz p1, :cond_23

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfni:Ljava/lang/ref/WeakReference;

    :cond_23
    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 6

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbtq;->zzw(Landroid/view/View;)[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    float-to-int p3, p3

    const/4 v0, 0x0

    aget v0, p1, v0

    sub-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    sub-int/2addr v0, p1

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p3, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjy:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_31

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjx:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjw:Landroid/graphics/Point;

    :cond_31
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdf;->zzb(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, p3, v2, p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzs(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzu(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbtq;->zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzbtq;->zzfq(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjw:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zzr(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjs:Z

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzs(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzu(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjv:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjw:Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjs:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zzq(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjs:Z

    :cond_1a
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjo:Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzo(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwf:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawm;->zzcp(I)Z

    move-result p1

    if-eqz p2, :cond_60

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3a
    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_59

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_59
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3a

    :cond_60
    if-eqz p3, :cond_8e

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6a
    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_6a

    if-eqz p1, :cond_89

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_89
    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_6a

    :cond_8e
    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfju:Z

    if-nez v0, :cond_a

    const-string p1, "Custom click reporting failed. enableCustomClickGesture is not set."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzahc()Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "Custom click reporting failed. Ad unit id not whitelisted."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzs(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzu(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzbtq;->zzfq(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzadf;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjp:Lcom/google/android/gms/internal/ads/zzbvm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvm;->zza(Lcom/google/android/gms/internal/ads/zzadf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjz:Lcom/google/android/gms/internal/ads/zzwe;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwi;)V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjt:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-nez p1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzahs()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v1

    if-eqz v1, :cond_25

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjt:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzahs()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxk;->zzov()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcyp;->zzei(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzahe()V

    return-void

    :cond_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjt:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzov()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcyp;->zzei(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzahe()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzahd()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public final zzahe()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjz:Lcom/google/android/gms/internal/ads/zzwe;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjz:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwe;->onAdMuted()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzahf()V
    .registers 4

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjj:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfjk:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .registers 15

    if-nez p1, :cond_8

    const-string p1, "Click data is null. No click is reported."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "click_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "click_signal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const-string v2, "asset_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_28

    :cond_27
    move-object v8, v1

    :goto_28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzfp(Ljava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "Touch event data is null. No touch event is reported."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "touch_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdf;->zzcd()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdc;->zza(III)V

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)Z
    .registers 10

    const-string v0, "impression_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p1, "The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public final zzqw()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzfju:Z

    return-void
.end method
