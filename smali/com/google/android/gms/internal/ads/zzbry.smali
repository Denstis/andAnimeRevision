###### Class com.google.android.gms.internal.ads.zzbry (com.google.android.gms.internal.ads.zzbry)
.class public final Lcom/google/android/gms/internal/ads/zzbry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfin:Lcom/google/android/gms/internal/ads/zzbrx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbry;->zzfin:Lcom/google/android/gms/internal/ads/zzbrx;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/zzbry;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbry;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbry;-><init>(Lcom/google/android/gms/internal/ads/zzbrx;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbry;->zzfin:Lcom/google/android/gms/internal/ads/zzbrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrx;->zzagv()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
