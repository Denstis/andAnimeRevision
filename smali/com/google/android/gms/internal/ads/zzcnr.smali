###### Class com.google.android.gms.internal.ads.zzcnr (com.google.android.gms.internal.ads.zzcnr)
.class public final Lcom/google/android/gms/internal/ads/zzcnr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcns;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcns;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcns;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcns;-><init>(Lcom/google/android/gms/internal/ads/zzcwe;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method
