###### Class com.google.android.gms.internal.ads.zzbkb (com.google.android.gms.internal.ads.zzbkb)
.class public final Lcom/google/android/gms/internal/ads/zzbkb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzada;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfer:Lcom/google/android/gms/internal/ads/zzbjz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfer:Lcom/google/android/gms/internal/ads/zzbjz;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfer:Lcom/google/android/gms/internal/ads/zzbjz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzafh()Lcom/google/android/gms/internal/ads/zzada;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzada;

    return-object v0
.end method
