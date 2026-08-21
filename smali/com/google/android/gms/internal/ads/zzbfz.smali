###### Class com.google.android.gms.internal.ads.zzbfz (com.google.android.gms.internal.ads.zzbfz)
.class public final Lcom/google/android/gms/internal/ads/zzbfz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/ads/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfag:Lcom/google/android/gms/internal/ads/zzbfx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzfag:Lcom/google/android/gms/internal/ads/zzbfx;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzfag:Lcom/google/android/gms/internal/ads/zzbfx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfx;->zzads()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method
