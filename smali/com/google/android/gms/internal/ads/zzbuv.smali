###### Class com.google.android.gms.internal.ads.zzbuv (com.google.android.gms.internal.ads.zzbuv)
.class public Lcom/google/android/gms/internal/ads/zzbuv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final zzflx:Lcom/google/android/gms/internal/ads/zzcvr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    return-void
.end method


# virtual methods
.method public zzahl()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdlo:Z

    return v0
.end method

.method public zzaia()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzaib()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzaic()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdcm:Z

    return v0
.end method

.method public zzaid()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdcl:Z

    return v0
.end method
