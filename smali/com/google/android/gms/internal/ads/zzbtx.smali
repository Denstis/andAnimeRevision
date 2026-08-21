###### Class com.google.android.gms.internal.ads.zzbtx (com.google.android.gms.internal.ads.zzbtx)
.class public final Lcom/google/android/gms/internal/ads/zzbtx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfjj:Lorg/json/JSONObject;

.field private final zzfkk:Lcom/google/android/gms/internal/ads/zzbyh;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbyh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzfjj:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzfkk:Lcom/google/android/gms/internal/ads/zzbyh;

    return-void
.end method


# virtual methods
.method public final zzahh()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzfjj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzahi()Lcom/google/android/gms/internal/ads/zzbyh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzfkk:Lcom/google/android/gms/internal/ads/zzbyh;

    return-object v0
.end method
