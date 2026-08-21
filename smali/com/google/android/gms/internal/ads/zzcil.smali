###### Class com.google.android.gms.internal.ads.zzcil (com.google.android.gms.internal.ads.zzcil)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# static fields
.field static final zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcil;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcil;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcil;->zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "json"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaim;

    const-string v0, "process json failed"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Ljava/lang/String;)V

    throw p1
.end method
