###### Class com.google.android.gms.internal.ads.zzcer (com.google.android.gms.internal.ads.zzcer)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxn;


# static fields
.field static final zzftu:Lcom/google/android/gms/internal/ads/zzcxn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcer;->zzftu:Lcom/google/android/gms/internal/ads/zzcxn;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzais;->zzdaz:Lcom/google/android/gms/internal/ads/zzair;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzair;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v2, "error_reason"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
