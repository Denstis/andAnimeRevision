###### Class com.google.android.gms.internal.ads.zzbij (com.google.android.gms.internal.ads.zzbij)
.class public final Lcom/google/android/gms/internal/ads/zzbij;
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


# static fields
.field private static final zzfdi:Lcom/google/android/gms/internal/ads/zzbij;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbij;->zzfdi:Lcom/google/android/gms/internal/ads/zzbij;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaex()Lcom/google/android/gms/internal/ads/zzbij;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbij;->zzfdi:Lcom/google/android/gms/internal/ads/zzbij;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    const-string v0, "app_open_ad"

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
