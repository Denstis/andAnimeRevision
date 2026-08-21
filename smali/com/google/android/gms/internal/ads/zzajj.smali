###### Class com.google.android.gms.internal.ads.zzajj (com.google.android.gms.internal.ads.zzajj)
.class public final Lcom/google/android/gms/internal/ads/zzajj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcj<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
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

.field private final zzdbl:Lcom/google/android/gms/internal/ads/zzddi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzail;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaiq<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzair<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbl:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbf:Lcom/google/android/gms/internal/ads/zzaiq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbe:Lcom/google/android/gms/internal/ads/zzair;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzajj;)Lcom/google/android/gms/internal/ads/zzair;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbe:Lcom/google/android/gms/internal/ads/zzair;

    return-object p0
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzail;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaul;->zzvm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaea;->zzcxs:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Lcom/google/android/gms/internal/ads/zzajj;Lcom/google/android/gms/internal/ads/zzaxv;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaex;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaez;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbf:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "args"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbg:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzahk;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbl:Lcom/google/android/gms/internal/ads/zzddi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajj;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzaji (com.google.android.gms.internal.ads.zzaji)
.class final synthetic Lcom/google/android/gms/internal/ads/zzaji;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzdbo:Lcom/google/android/gms/internal/ads/zzajj;

.field private final zzdbp:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajj;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzdbo:Lcom/google/android/gms/internal/ads/zzajj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzdbp:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzdbo:Lcom/google/android/gms/internal/ads/zzajj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzdbp:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzail;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzajj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzail;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
