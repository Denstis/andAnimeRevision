###### Class com.google.android.gms.internal.ads.zzcts (com.google.android.gms.internal.ads.zzcts)
.class public final Lcom/google/android/gms/internal/ads/zzcts;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzghp:Lcom/google/android/gms/internal/ads/zzctp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzghp:Lcom/google/android/gms/internal/ads/zzctp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzctp;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctp;->zzaml()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzghp:Lcom/google/android/gms/internal/ads/zzctp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcts;->zzc(Lcom/google/android/gms/internal/ads/zzctp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
