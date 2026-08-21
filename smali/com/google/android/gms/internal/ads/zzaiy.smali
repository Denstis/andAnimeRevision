###### Class com.google.android.gms.internal.ads.zzaiy (com.google.android.gms.internal.ads.zzaiy)
.class public final Lcom/google/android/gms/internal/ads/zzaiy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaip;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaip<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final zzdbd:Lcom/google/android/gms/internal/ads/zzahn;

.field private final zzdbe:Lcom/google/android/gms/internal/ads/zzair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzair<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzdbf:Lcom/google/android/gms/internal/ads/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaiq<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final zzdbg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzahn;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaiq<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzair<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbd:Lcom/google/android/gms/internal/ads/zzahn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbf:Lcom/google/android/gms/internal/ads/zzaiq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbe:Lcom/google/android/gms/internal/ads/zzair;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaiy;)Lcom/google/android/gms/internal/ads/zzair;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbe:Lcom/google/android/gms/internal/ads/zzair;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzaia;Lcom/google/android/gms/internal/ads/zzail;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaia;",
            "Lcom/google/android/gms/internal/ads/zzail;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaul;->zzvm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaea;->zzcxs:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaia;Lcom/google/android/gms/internal/ads/zzaxv;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaez;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbf:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbg:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzahk;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p2

    :try_start_2d
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaia;->release()V

    return-void

    :catchall_39
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaia;->release()V

    throw p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaia;Lcom/google/android/gms/internal/ads/zzail;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Lcom/google/android/gms/internal/ads/zzaia;Lcom/google/android/gms/internal/ads/zzail;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxv;)V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdbd:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzahn;->zzb(Lcom/google/android/gms/internal/ads/zzdf;)Lcom/google/android/gms/internal/ads/zzaia;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajb;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaia;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxv;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaxv;Lcom/google/android/gms/internal/ads/zzaia;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzaxz;Lcom/google/android/gms/internal/ads/zzaxx;)V

    return-object v0
.end method
