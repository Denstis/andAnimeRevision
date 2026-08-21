###### Class com.google.android.gms.internal.ads.zzbwm (com.google.android.gms.internal.ads.zzbwm)
.class public final Lcom/google/android/gms/internal/ads/zzbwm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

.field private final zzfoc:Lcom/google/android/gms/internal/ads/zzbxb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Lcom/google/android/gms/internal/ads/zzbwq;Lcom/google/android/gms/internal/ads/zzbxb;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwm;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwm;->zzfoc:Lcom/google/android/gms/internal/ads/zzbxb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbur;",
            ">;"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v7, p3

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwp;

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, p0, p1, v3, v7}, Lcom/google/android/gms/internal/ads/zzbwp;-><init>(Lcom/google/android/gms/internal/ads/zzbwm;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v2

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    const-string v1, "images"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v3

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    const-string v1, "secondary_image"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v5

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    const-string v1, "app_icon"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v4

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    const-string v1, "attribution"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzbwq;->zze(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v6

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzbwq;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v8

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    const-string v1, "enable_omid"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_48

    :goto_42
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    :goto_46
    move-object v9, v0

    goto :goto_6e

    :cond_48
    const-string v1, "omid_settings"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_51

    goto :goto_42

    :cond_51
    const-string v10, "omid_html"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5e

    goto :goto_42

    :cond_5e
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/ads/zzbwu;

    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Lcom/google/android/gms/internal/ads/zzbwq;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v9, v10, v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    goto :goto_46

    :goto_6e
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfoc:Lcom/google/android/gms/internal/ads/zzbxb;

    const-string v1, "custom_assets"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzbxb;->zzg(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v10

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzddi;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v6, v0, v1

    const/4 v1, 0x5

    aput-object v8, v0, v1

    const/4 v1, 0x6

    aput-object v9, v0, v1

    const/4 v1, 0x7

    aput-object v10, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zza([Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddd;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/ads/zzbwo;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbwo;-><init>(Lcom/google/android/gms/internal/ads/zzbwm;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbwm;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v12, v13, v0}, Lcom/google/android/gms/internal/ads/zzddd;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbwo (com.google.android.gms.internal.ads.zzbwo)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbwo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzffr:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfod:Lcom/google/android/gms/internal/ads/zzbwm;

.field private final zzfoe:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfof:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfog:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfoh:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfoi:Lorg/json/JSONObject;

.field private final zzfoj:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfok:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzfol:Lcom/google/android/gms/internal/ads/zzddi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwm;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzddi;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfod:Lcom/google/android/gms/internal/ads/zzbwm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoe:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzffr:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfof:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfog:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoh:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoi:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoj:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfok:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfol:Lcom/google/android/gms/internal/ads/zzddi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoe:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzffr:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfof:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfog:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoh:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoi:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfoj:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfok:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzfol:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->setImages(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zza(Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zza(Lcom/google/android/gms/internal/ads/zzaba;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbwq;->zzi(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzf(Ljava/util/List;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbwq;->zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zza(Lcom/google/android/gms/internal/ads/zzxk;)V

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v1, :cond_63

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzi(Lcom/google/android/gms/internal/ads/zzbbw;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbur;->zzaa(Landroid/view/View;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxl()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzb(Lcom/google/android/gms/internal/ads/zzwr;)V

    :cond_63
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v1, :cond_6e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzj(Lcom/google/android/gms/internal/ads/zzbbw;)V

    :cond_6e
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbxc;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbxc;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_95

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8d

    goto :goto_78

    :cond_8d
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzbxc;->zzce:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbxc;->zzfpb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbur;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaau;)V

    goto :goto_78

    :cond_95
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzbxc;->zzce:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbxc;->zzfpa:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    :cond_9d
    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbwp (com.google.android.gms.internal.ads.zzbwp)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbwp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfod:Lcom/google/android/gms/internal/ads/zzbwm;

.field private final zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

.field private final zzfon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwm;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfod:Lcom/google/android/gms/internal/ads/zzbwm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfon:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzfon:Lorg/json/JSONObject;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbur;-><init>()V

    const-string v4, "template_id"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbur;->zzdg(I)V

    const-string v4, "custom_template_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbur;->zzfr(Ljava/lang/String;)V

    const-string v4, "omid_settings"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2e

    const-string v6, "omid_partner_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_2e
    move-object v4, v5

    :goto_2f
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbur;->zzfs(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgki:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbur;->zzahp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_e4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbur;->zzahp()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_71

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbur;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_69

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbur;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_71

    :cond_61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjh;

    const-string v1, "Unexpected custom template id in the response."

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_69
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjh;

    const-string v1, "No custom template id for custom template ad response."

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_71
    :goto_71
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-string v0, "rating"

    invoke-virtual {v2, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzbur;->setStarRating(D)V

    const-string v0, "headline"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzdnj:Z

    if-eqz v1, :cond_b3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaul;->zzvp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b3
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_to_action"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "advertiser"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_e4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbur;->zzahp()I

    move-result v1

    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid template ID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzbwu (com.google.android.gms.internal.ads.zzbwu)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbwu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzfou:Lcom/google/android/gms/internal/ads/zzbwq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwq;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzfou:Lcom/google/android/gms/internal/ads/zzbwq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzfou:Lcom/google/android/gms/internal/ads/zzbwq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzcyz:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbwq;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
