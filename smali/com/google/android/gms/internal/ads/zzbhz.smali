###### Class com.google.android.gms.internal.ads.zzbhz (com.google.android.gms.internal.ads.zzbhz)
.class public final Lcom/google/android/gms/internal/ads/zzbhz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzcvr;)Lorg/json/JSONObject;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdky:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    const/4 p0, 0x0

    return-object p0
.end method
