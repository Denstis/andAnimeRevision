###### Class com.google.android.gms.internal.ads.zzcpu (com.google.android.gms.internal.ads.zzcpu)
.class public final Lcom/google/android/gms/internal/ads/zzcpu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcpr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcpt;->zzgfh:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method
