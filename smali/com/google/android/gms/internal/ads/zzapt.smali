###### Class com.google.android.gms.internal.ads.zzapt (com.google.android.gms.internal.ads.zzapt)
.class public final Lcom/google/android/gms/internal/ads/zzapt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapi;


# instance fields
.field private zzdnr:Lcom/google/android/gms/internal/ads/zzaip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaip<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private zzdns:Lcom/google/android/gms/internal/ads/zzaip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaip<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaio;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxl;->zzwo()Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzaix;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzais;->zzday:Lcom/google/android/gms/internal/ads/zzait;

    const-string v2, "google.afma.request.getAdDictionary"

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzaix;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdns:Lcom/google/android/gms/internal/ads/zzaip;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaio;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxl;->zzwo()Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzaix;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzais;->zzday:Lcom/google/android/gms/internal/ads/zzait;

    const-string v1, "google.afma.sdkConstants.getSdkConstants"

    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/zzaix;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdnr:Lcom/google/android/gms/internal/ads/zzaip;

    return-void
.end method


# virtual methods
.method public final zztc()Lcom/google/android/gms/internal/ads/zzaip;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzaip<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdnr:Lcom/google/android/gms/internal/ads/zzaip;

    return-object v0
.end method
