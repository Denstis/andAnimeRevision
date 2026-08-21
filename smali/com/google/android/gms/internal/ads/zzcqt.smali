###### Class com.google.android.gms.internal.ads.zzcqt (com.google.android.gms.internal.ads.zzcqt)
.class public final Lcom/google/android/gms/internal/ads/zzcqt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcqu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgs:Landroid/os/Bundle;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zzfgs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcqu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzcqt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzame()Lcom/google/android/gms/internal/ads/zzcqu;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zzfgs:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqu;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcqw (com.google.android.gms.internal.ads.zzcqw)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcqw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgfp:Lcom/google/android/gms/internal/ads/zzcqt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzgfp:Lcom/google/android/gms/internal/ads/zzcqt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzgfp:Lcom/google/android/gms/internal/ads/zzcqt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqt;->zzame()Lcom/google/android/gms/internal/ads/zzcqu;

    move-result-object v0

    return-object v0
.end method
