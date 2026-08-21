###### Class com.google.android.gms.internal.ads.zzbkg (com.google.android.gms.internal.ads.zzbkg)
.class public final Lcom/google/android/gms/internal/ads/zzbkg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbou;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzffc:Lcom/google/android/gms/internal/ads/zzbkh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkg;->zzffc:Lcom/google/android/gms/internal/ads/zzbkh;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkg;->zzffc:Lcom/google/android/gms/internal/ads/zzbkh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkh;->zzafl()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbou;

    return-object v0
.end method
