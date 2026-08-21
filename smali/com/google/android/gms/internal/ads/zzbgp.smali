###### Class com.google.android.gms.internal.ads.zzbgp (com.google.android.gms.internal.ads.zzbgp)
.class public final Lcom/google/android/gms/internal/ads/zzbgp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzanr;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfay:Lcom/google/android/gms/internal/ads/zzbgp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgp;->zzfay:Lcom/google/android/gms/internal/ads/zzbgp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaef()Lcom/google/android/gms/internal/ads/zzbgp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgp;->zzfay:Lcom/google/android/gms/internal/ads/zzbgp;

    return-object v0
.end method

.method public static zzaeg()Lcom/google/android/gms/internal/ads/zzanr;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanr;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzanr;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgp;->zzaeg()Lcom/google/android/gms/internal/ads/zzanr;

    move-result-object v0

    return-object v0
.end method
