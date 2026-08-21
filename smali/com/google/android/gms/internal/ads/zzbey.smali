###### Class com.google.android.gms.internal.ads.zzbey (com.google.android.gms.internal.ads.zzbey)
.class public final Lcom/google/android/gms/internal/ads/zzbey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzapr;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzeka:Lcom/google/android/gms/internal/ads/zzbey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbey;->zzeka:Lcom/google/android/gms/internal/ads/zzbey;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaby()Lcom/google/android/gms/internal/ads/zzbey;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbey;->zzeka:Lcom/google/android/gms/internal/ads/zzbey;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzapu;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapr;

    return-object v0
.end method
