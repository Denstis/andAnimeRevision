###### Class com.google.android.gms.internal.ads.zzbua (com.google.android.gms.internal.ads.zzbua)
.class public final Lcom/google/android/gms/internal/ads/zzbua;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbyh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfkj:Lcom/google/android/gms/internal/ads/zzbtx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbua;->zzfkj:Lcom/google/android/gms/internal/ads/zzbtx;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbtx;)Lcom/google/android/gms/internal/ads/zzbyh;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtx;->zzahi()Lcom/google/android/gms/internal/ads/zzbyh;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbyh;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbua;->zzfkj:Lcom/google/android/gms/internal/ads/zzbtx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbua;->zza(Lcom/google/android/gms/internal/ads/zzbtx;)Lcom/google/android/gms/internal/ads/zzbyh;

    move-result-object v0

    return-object v0
.end method
