###### Class com.google.android.gms.internal.ads.zzbgn (com.google.android.gms.internal.ads.zzbgn)
.class public final Lcom/google/android/gms/internal/ads/zzbgn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzatm;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfaw:Lcom/google/android/gms/internal/ads/zzbgn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzfaw:Lcom/google/android/gms/internal/ads/zzbgn;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaeb()Lcom/google/android/gms/internal/ads/zzbgn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzfaw:Lcom/google/android/gms/internal/ads/zzbgn;

    return-object v0
.end method

.method public static zzaec()Lcom/google/android/gms/internal/ads/zzatm;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatm;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgn;->zzaec()Lcom/google/android/gms/internal/ads/zzatm;

    move-result-object v0

    return-object v0
.end method
