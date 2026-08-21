###### Class com.google.android.gms.internal.ads.zzbtg (com.google.android.gms.internal.ads.zzbtg)
.class public final Lcom/google/android/gms/internal/ads/zzbtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzuy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfje:Lcom/google/android/gms/internal/ads/zzbth;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbth;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzfje:Lcom/google/android/gms/internal/ads/zzbth;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzfje:Lcom/google/android/gms/internal/ads/zzbth;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbth;->zzagz()Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v0

    return-object v0
.end method
