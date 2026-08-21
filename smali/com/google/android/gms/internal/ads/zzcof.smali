###### Class com.google.android.gms.internal.ads.zzcof (com.google.android.gms.internal.ads.zzcof)
.class public final Lcom/google/android/gms/internal/ads/zzcof;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcog;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Lcom/google/android/gms/internal/ads/zzcwe;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcoi;-><init>(Lcom/google/android/gms/internal/ads/zzcof;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzalx()Lcom/google/android/gms/internal/ads/zzcog;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkk:Lcom/google/android/gms/internal/ads/zzuf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcoi (com.google.android.gms.internal.ads.zzcoi)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcoi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgek:Lcom/google/android/gms/internal/ads/zzcof;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcof;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgek:Lcom/google/android/gms/internal/ads/zzcof;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgek:Lcom/google/android/gms/internal/ads/zzcof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcof;->zzalx()Lcom/google/android/gms/internal/ads/zzcog;

    move-result-object v0

    return-object v0
.end method
