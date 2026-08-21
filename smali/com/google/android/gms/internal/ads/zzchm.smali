###### Class com.google.android.gms.internal.ads.zzchm (com.google.android.gms.internal.ads.zzchm)
.class public final Lcom/google/android/gms/internal/ads/zzchm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfyg:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzajx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzfyg:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zzaku()Lcom/google/android/gms/internal/ads/zzajx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzfyg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzajx;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const-string v0, "Unexpected call to adapter creator."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzajy;
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchm;->zzaku()Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v0

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    if-nez v2, :cond_14

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_14
    :try_start_14
    const-string v2, "class_name"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzajx;->zzda(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzajx;->zzcz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzajy;

    move-result-object p1

    return-object p1

    :cond_25
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzajx;->zzcz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzajy;

    move-result-object p1
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception p2

    const-string v1, "Invalid custom event."

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajx;->zzcz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzajy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzakt()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzfyg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzfyg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzdd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamd;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchm;->zzaku()Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajx;->zzdd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcwm;
    .registers 5

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwm;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakt;

    new-instance p2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {p2}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_3f

    :cond_15
    const-string v1, "com.google.ads.mediation.AdUrlAdapter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakt;

    new-instance p2, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {p2}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_3f

    :cond_28
    const-string v1, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzamt;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_3f

    :cond_3b
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchm;->zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzajy;

    move-result-object p1

    :goto_3f
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwm;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return-object v0

    :catchall_43
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcwh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwh;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
