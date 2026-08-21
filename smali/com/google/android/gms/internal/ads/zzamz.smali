###### Class com.google.android.gms.internal.ads.zzamz (com.google.android.gms.internal.ads.zzamz)
.class public final Lcom/google/android/gms/internal/ads/zzamz;
.super Lcom/google/android/gms/internal/ads/zzanj;
.source ""


# static fields
.field private static final zzdfp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private final lock:Ljava/lang/Object;

.field private width:I

.field private zzcxz:Lcom/google/android/gms/internal/ads/zzani;

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzdff:Landroid/app/Activity;

.field private zzdfq:Ljava/lang/String;

.field private zzdfr:Z

.field private zzdfs:I

.field private zzdft:I

.field private zzdfu:I

.field private zzdfv:I

.field private zzdfw:Lcom/google/android/gms/internal/ads/zzbdj;

.field private zzdfx:Landroid/widget/ImageView;

.field private zzdfy:Landroid/widget/LinearLayout;

.field private zzdfz:Landroid/widget/PopupWindow;

.field private zzdga:Landroid/widget/RelativeLayout;

.field private zzdgb:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bottom-center"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfp:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzani;)V
    .registers 5

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfq:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfr:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxn()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    return-void
.end method


# virtual methods
.method public final zza(IIZ)V
    .registers 4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->lock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    monitor-exit p3

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final zzg(Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzamz;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzu()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_43
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaul;->zzed(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    :cond_62
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaul;->zzed(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    :cond_81
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaul;->zzed(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    :cond_a0
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaul;->zzed(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    :cond_bf
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfr:Z

    :cond_db
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfq:Ljava/lang/String;

    :cond_eb
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_f7

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    if-ltz v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    :goto_f8
    if-nez v0, :cond_101

    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_101
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4a3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_111

    goto/16 :goto_4a3

    :cond_111
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaul;->zze(Landroid/app/Activity;)[I

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaul;->zzf(Landroid/app/Activity;)[I

    move-result-object v6

    aget v7, v5, v4

    aget v5, v5, v3

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, -0x1

    const/4 v13, 0x2

    const/16 v14, 0x32

    if-lt v8, v14, :cond_225

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    if-le v8, v7, :cond_13a

    goto/16 :goto_225

    :cond_13a
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    if-lt v8, v14, :cond_222

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    if-le v8, v5, :cond_144

    goto/16 :goto_222

    :cond_144
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    if-ne v8, v5, :cond_150

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    if-ne v5, v7, :cond_150

    const-string v5, "Cannot resize to a full-screen ad."

    goto/16 :goto_227

    :cond_150
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfr:Z

    if-eqz v5, :cond_220

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfq:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_4b0

    goto :goto_19a

    :sswitch_15e
    const-string v8, "top-center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x1

    goto :goto_19b

    :sswitch_168
    const-string v8, "bottom-center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x4

    goto :goto_19b

    :sswitch_172
    const-string v8, "bottom-right"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x5

    goto :goto_19b

    :sswitch_17c
    const-string v8, "bottom-left"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x3

    goto :goto_19b

    :sswitch_186
    const-string v8, "top-left"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x0

    goto :goto_19b

    :sswitch_190
    const-string v8, "center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x2

    goto :goto_19b

    :cond_19a
    :goto_19a
    const/4 v5, -0x1

    :goto_19b
    if-eqz v5, :cond_208

    if-eq v5, v3, :cond_1f8

    if-eq v5, v13, :cond_1e1

    if-eq v5, v11, :cond_1d4

    if-eq v5, v10, :cond_1c1

    if-eq v5, v9, :cond_1b3

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v14

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    goto :goto_205

    :cond_1b3
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v14

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    goto :goto_1d0

    :cond_1c1
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    :goto_1d0
    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    goto :goto_1de

    :cond_1d4
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    goto :goto_1d0

    :goto_1de
    add-int/2addr v8, v15

    sub-int/2addr v8, v14

    goto :goto_211

    :cond_1e1
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    div-int/2addr v15, v13

    add-int/2addr v8, v15

    add-int/lit8 v8, v8, -0x19

    goto :goto_211

    :cond_1f8
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    :goto_205
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    goto :goto_210

    :cond_208
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    goto :goto_205

    :goto_210
    add-int/2addr v8, v15

    :goto_211
    if-ltz v5, :cond_22a

    add-int/2addr v5, v14

    if-gt v5, v7, :cond_22a

    aget v5, v6, v4

    if-lt v8, v5, :cond_22a

    add-int/2addr v8, v14

    aget v5, v6, v3

    if-le v8, v5, :cond_220

    goto :goto_22a

    :cond_220
    const/4 v5, 0x1

    goto :goto_22b

    :cond_222
    :goto_222
    const-string v5, "Height is too small or too large."

    goto :goto_227

    :cond_225
    :goto_225
    const-string v5, "Width is too small or too large."

    :goto_227
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :cond_22a
    :goto_22a
    const/4 v5, 0x0

    :goto_22b
    if-nez v5, :cond_22f

    const/4 v5, 0x0

    goto :goto_28d

    :cond_22f
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfr:Z

    if-eqz v5, :cond_244

    new-array v5, v13, [I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    add-int/2addr v6, v7

    aput v6, v5, v3

    goto :goto_28d

    :cond_244
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaul;->zze(Landroid/app/Activity;)[I

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaul;->zzf(Landroid/app/Activity;)[I

    move-result-object v6

    aget v5, v5, v4

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfu:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfv:I

    add-int/2addr v8, v15

    if-gez v7, :cond_268

    const/4 v5, 0x0

    goto :goto_272

    :cond_268
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    add-int/2addr v15, v7

    if-le v15, v5, :cond_271

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    sub-int/2addr v5, v7

    goto :goto_272

    :cond_271
    move v5, v7

    :goto_272
    aget v7, v6, v4

    if-ge v8, v7, :cond_279

    aget v8, v6, v4

    goto :goto_286

    :cond_279
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    add-int/2addr v7, v8

    aget v15, v6, v3

    if-le v7, v15, :cond_286

    aget v6, v6, v3

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    sub-int v8, v6, v7

    :cond_286
    :goto_286
    new-array v6, v13, [I

    aput v5, v6, v4

    aput v8, v6, v3

    move-object v5, v6

    :goto_28d
    if-nez v5, :cond_296

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_296
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_49c

    instance-of v15, v8, Landroid/view/ViewGroup;

    if-eqz v15, :cond_49c

    move-object v15, v8

    check-cast v15, Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    if-nez v9, :cond_2fb

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaul;->zzk(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-direct {v9, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfx:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfx:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfw:Lcom/google/android/gms/internal/ads/zzbdj;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfx:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_300

    :cond_2fb
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_300
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfr:Z

    if-nez v9, :cond_335

    const/4 v9, 0x1

    goto :goto_336

    :cond_335
    const/4 v9, 0x0

    :goto_336
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfy:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v8, v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfq:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_4ca

    goto :goto_3a9

    :sswitch_36e
    const-string v14, "top-center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    const/4 v12, 0x1

    goto :goto_3a9

    :sswitch_378
    const-string v14, "bottom-center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    const/4 v12, 0x4

    goto :goto_3a9

    :sswitch_382
    const-string v14, "bottom-right"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    const/4 v12, 0x5

    goto :goto_3a9

    :sswitch_38c
    const-string v14, "bottom-left"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    const/4 v12, 0x3

    goto :goto_3a9

    :sswitch_396
    const-string v14, "top-left"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    const/4 v12, 0x0

    goto :goto_3a9

    :sswitch_3a0
    const-string v14, "center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    const/4 v12, 0x2

    :cond_3a9
    :goto_3a9
    const/16 v9, 0x9

    const/16 v14, 0xa

    if-eqz v12, :cond_3e0

    const/16 v15, 0xe

    if-eq v12, v3, :cond_3dc

    if-eq v12, v13, :cond_3d6

    const/16 v13, 0xc

    if-eq v12, v11, :cond_3d2

    if-eq v12, v10, :cond_3cb

    const/16 v9, 0xb

    const/4 v10, 0x5

    if-eq v12, v10, :cond_3c7

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3c3
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3e4

    :cond_3c7
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3c3

    :cond_3cb
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3ce
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3e4

    :cond_3d2
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3c3

    :cond_3d6
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3e4

    :cond_3dc
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ce

    :cond_3e0
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3c3

    :goto_3e4
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfy:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzamy;

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(Lcom/google/android/gms/internal/ads/zzamz;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfy:Landroid/widget/LinearLayout;

    const-string v10, "Close button"

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfy:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3fc
    .catchall {:try_start_7 .. :try_end_3fc} :catchall_4aa

    :try_start_3fc
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    aget v10, v5, v4

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    aget v11, v5, v3

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v0, v4, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_41b
    .catch Ljava/lang/RuntimeException; {:try_start_3fc .. :try_end_41b} :catch_454
    .catchall {:try_start_3fc .. :try_end_41b} :catchall_4aa

    :try_start_41b
    aget v0, v5, v4

    aget v8, v5, v3

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    if-eqz v9, :cond_42c

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    invoke-interface {v9, v0, v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzani;->zza(IIII)V

    :cond_42c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzbdj;->zzp(II)Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzbdj;)V

    aget v0, v5, v4

    aget v3, v5, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdff:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaul;->zzf(Landroid/app/Activity;)[I

    move-result-object v5

    aget v4, v5, v4

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzamz;->width:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamz;->height:I

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanj;->zzb(IIII)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdp(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_454
    move-exception v0

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_46a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46f

    :cond_46a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_46f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    if-eqz v0, :cond_49a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfx:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamz;->zzdfw:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzbdj;)V

    :cond_49a
    monitor-exit v2

    return-void

    :cond_49c
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_4a3
    :goto_4a3
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_4aa
    move-exception v0

    monitor-exit v2
    :try_end_4ac
    .catchall {:try_start_41b .. :try_end_4ac} :catchall_4aa

    goto :goto_4ae

    :goto_4ad
    throw v0

    :goto_4ae
    goto :goto_4ad

    nop

    :sswitch_data_4b0
    .sparse-switch
        -0x514d33ab -> :sswitch_190
        -0x3c587281 -> :sswitch_186
        -0x27103597 -> :sswitch_17c
        0x455fe3fa -> :sswitch_172
        0x4ccee637 -> :sswitch_168
        0x68a23bcd -> :sswitch_15e
    .end sparse-switch

    :sswitch_data_4ca
    .sparse-switch
        -0x514d33ab -> :sswitch_3a0
        -0x3c587281 -> :sswitch_396
        -0x27103597 -> :sswitch_38c
        0x455fe3fa -> :sswitch_382
        0x4ccee637 -> :sswitch_378
        0x68a23bcd -> :sswitch_36e
    .end sparse-switch
.end method

.method public final zzh(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfs:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdft:I

    return-void
.end method

.method public final zzsk()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final zzv(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfx:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfw:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzbdj;)V

    :cond_34
    if-eqz p1, :cond_44

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzanj;->zzdp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzani;->zzsl()V

    :cond_44
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfz:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdga:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdgb:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->zzdfy:Landroid/widget/LinearLayout;

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p1
.end method
