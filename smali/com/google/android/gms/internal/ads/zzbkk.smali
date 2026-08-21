###### Class com.google.android.gms.internal.ads.zzbkk (com.google.android.gms.internal.ads.zzbkk)
.class public Lcom/google/android/gms/internal/ads/zzbkk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final zzfbd:Lcom/google/android/gms/internal/ads/zzcvz;

.field protected final zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzffg:Lcom/google/android/gms/internal/ads/zzbnl;

.field private final zzffh:Lcom/google/android/gms/internal/ads/zzbob;

.field private final zzffi:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbkn;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Lcom/google/android/gms/internal/ads/zzbkn;)Lcom/google/android/gms/internal/ads/zzcvz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzfbd:Lcom/google/android/gms/internal/ads/zzcvz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkn;->zzb(Lcom/google/android/gms/internal/ads/zzbkn;)Lcom/google/android/gms/internal/ads/zzcvr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkn;->zzc(Lcom/google/android/gms/internal/ads/zzbkn;)Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffg:Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkn;->zzd(Lcom/google/android/gms/internal/ads/zzbkn;)Lcom/google/android/gms/internal/ads/zzbob;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffh:Lcom/google/android/gms/internal/ads/zzbob;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze(Lcom/google/android/gms/internal/ads/zzbkn;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffi:Ljava/lang/String;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzcvr;)Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjh:Lorg/json/JSONObject;

    const-string v0, "class_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffg:Lcom/google/android/gms/internal/ads/zzbnl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbw(Landroid/content/Context;)V

    return-void
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffi:Ljava/lang/String;

    return-object v0
.end method

.method public zzafa()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffh:Lcom/google/android/gms/internal/ads/zzbob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbob;->onAdLoaded()V

    return-void
.end method

.method public final zzafm()Lcom/google/android/gms/internal/ads/zzbnl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffg:Lcom/google/android/gms/internal/ads/zzbnl;

    return-object v0
.end method

.method public final zzju()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffi:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffi:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->zzb(Lcom/google/android/gms/internal/ads/zzcvr;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzffi:Ljava/lang/String;

    :cond_26
    return-object v0
.end method
