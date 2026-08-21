###### Class com.google.android.gms.internal.ads.zzcnl (com.google.android.gms.internal.ads.zzcnl)
.class public final Lcom/google/android/gms/internal/ads/zzcnl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzgdr:Ljava/lang/String;

.field public zzgds:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v0, ""

    move-object v1, v0

    :goto_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    move-object v2, v0

    :cond_16
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3b55067a

    if-eq v4, v5, :cond_21

    goto :goto_2a

    :cond_21
    const-string v4, "params"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v3, 0x0

    :cond_2a
    :goto_2a
    if-eqz v3, :cond_30

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_9

    :cond_30
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_35
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgdr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method


# virtual methods
.method final zzn(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcnl;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaul;->zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgds:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    const-string p1, "{}"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgds:Ljava/lang/String;

    :goto_13
    return-object p0
.end method
