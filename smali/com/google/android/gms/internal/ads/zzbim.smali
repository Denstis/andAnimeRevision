###### Class com.google.android.gms.internal.ads.zzbim (com.google.android.gms.internal.ads.zzbim)
.class public final Lcom/google/android/gms/internal/ads/zzbim;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfdk:Lcom/google/android/gms/internal/ads/zzbin;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbin;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfdk:Lcom/google/android/gms/internal/ads/zzbin;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfdk:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzaey()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
