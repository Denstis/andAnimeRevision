###### Class com.google.android.gms.internal.ads.zzcvx (com.google.android.gms.internal.ads.zzcvx)
.class public final Lcom/google/android/gms/internal/ads/zzcvx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzgjx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ">;"
        }
    .end annotation
.end field

.field public final zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

.field public final zzgjz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzcwa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/JsonReader;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    move-object v3, v2

    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "responses"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_29
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_configs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_43
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcvr;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/zzcvr;-><init>(Landroid/util/JsonReader;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_29

    :cond_56
    const-string v5, "common"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzcvt;-><init>(Landroid/util/JsonReader;)V

    goto :goto_29

    :cond_64
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_29

    :cond_68
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    :cond_6b
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_11

    :cond_6f
    const-string v5, "actions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_7a
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move-object v4, v2

    move-object v5, v4

    :goto_85
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_85

    :cond_9c
    const-string v7, "info"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawg;->zzb(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v5

    goto :goto_85

    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_85

    :cond_ad
    if-eqz v4, :cond_b7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcwa;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzcwa;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_7a

    :cond_bb
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjz:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjx:Ljava/util/List;

    if-eqz v3, :cond_c2

    goto :goto_d3

    :cond_c2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcvt;

    new-instance p1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    const-string v1, "{}"

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzcvt;-><init>(Landroid/util/JsonReader;)V

    :goto_d3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

    return-void
.end method

.method public static zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzcvx;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvx;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvx;-><init>(Landroid/util/JsonReader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_a} :catch_10
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_e
    move-exception v0

    goto :goto_21

    :catch_10
    move-exception v0

    goto :goto_19

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_14
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    :try_start_19
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvw;

    const-string v2, "unable to parse ServerResponse"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcvw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_e

    :goto_21
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
