###### Class com.google.android.gms.internal.ads.zzbxb (com.google.android.gms.internal.ads.zzbxb)
.class public final Lcom/google/android/gms/internal/ads/zzbxb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfob:Lcom/google/android/gms/internal/ads/zzbwq;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbwq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    return-void
.end method


# virtual methods
.method public final zzg(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbxc;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_7b

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_70

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3c

    const/4 v5, 0x1

    goto :goto_47

    :cond_3c
    const-string v6, "image"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x2

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    if-eq v5, v8, :cond_60

    if-eq v5, v7, :cond_4c

    goto :goto_70

    :cond_4c
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfob:Lcom/google/android/gms/internal/ads/zzbwq;

    const-string v6, "image_value"

    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzbwq;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbxd;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzbxd;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxb;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v3

    goto :goto_75

    :cond_60
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbxc;

    const-string v6, "string_value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzbxc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v3

    goto :goto_75

    :cond_70
    :goto_70
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v3

    :goto_75
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_7b
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbxa;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzbxd (com.google.android.gms.internal.ads.zzbxd)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbxd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# instance fields
.field private final zzczh:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzczh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzczh:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaau;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxc;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbxc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaau;)V

    return-object v1
.end method
