###### Class com.google.android.gms.internal.ads.zzcxm (com.google.android.gms.internal.ads.zzcxm)
.class public final Lcom/google/android/gms/internal/ads/zzcxm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzddl;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzglj:Lcom/google/android/gms/internal/ads/zzcxm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcxm;->zzglj:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzano()Lcom/google/android/gms/internal/ads/zzddl;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwj:Lcom/google/android/gms/internal/ads/zzddl;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzddl;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcxm;->zzano()Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v0

    return-object v0
.end method
