###### Class com.google.android.gms.internal.ads.zzbgo (com.google.android.gms.internal.ads.zzbgo)
.class public final Lcom/google/android/gms/internal/ads/zzbgo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzatn;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfax:Lcom/google/android/gms/internal/ads/zzbgo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgo;->zzfax:Lcom/google/android/gms/internal/ads/zzbgo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaed()Lcom/google/android/gms/internal/ads/zzbgo;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgo;->zzfax:Lcom/google/android/gms/internal/ads/zzbgo;

    return-object v0
.end method

.method public static zzaee()Lcom/google/android/gms/internal/ads/zzatn;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatl;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatn;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzaee()Lcom/google/android/gms/internal/ads/zzatn;

    move-result-object v0

    return-object v0
.end method
