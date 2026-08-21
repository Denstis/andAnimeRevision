###### Class com.google.android.gms.internal.ads.zzbva (com.google.android.gms.internal.ads.zzbva)
.class public final Lcom/google/android/gms/internal/ads/zzbva;
.super Ljava/lang/Object;
.source ""


# instance fields
.field zzfly:Lcom/google/android/gms/internal/ads/zzacn;

.field zzflz:Lcom/google/android/gms/internal/ads/zzaci;

.field zzfma:Lcom/google/android/gms/internal/ads/zzacz;

.field zzfmb:Lcom/google/android/gms/internal/ads/zzacu;

.field zzfmc:Lcom/google/android/gms/internal/ads/zzagj;

.field final zzfmd:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzact;",
            ">;"
        }
    .end annotation
.end field

.field final zzfme:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaco;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/g;

    invoke-direct {v0}, Lb/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfmd:Lb/e/g;

    new-instance v0, Lb/e/g;

    invoke-direct {v0}, Lb/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfme:Lb/e/g;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacu;)Lcom/google/android/gms/internal/ads/zzbva;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfmb:Lcom/google/android/gms/internal/ads/zzacu;

    return-object p0
.end method

.method public final zzail()Lcom/google/android/gms/internal/ads/zzbuy;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbuy;-><init>(Lcom/google/android/gms/internal/ads/zzbva;Lcom/google/android/gms/internal/ads/zzbvb;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaci;)Lcom/google/android/gms/internal/ads/zzbva;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzflz:Lcom/google/android/gms/internal/ads/zzaci;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacn;)Lcom/google/android/gms/internal/ads/zzbva;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfly:Lcom/google/android/gms/internal/ads/zzacn;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacz;)Lcom/google/android/gms/internal/ads/zzbva;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfma:Lcom/google/android/gms/internal/ads/zzacz;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzagj;)Lcom/google/android/gms/internal/ads/zzbva;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfmc:Lcom/google/android/gms/internal/ads/zzagj;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzact;Lcom/google/android/gms/internal/ads/zzaco;)Lcom/google/android/gms/internal/ads/zzbva;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfmd:Lb/e/g;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzfme:Lb/e/g;

    invoke-virtual {p2, p1, p3}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
