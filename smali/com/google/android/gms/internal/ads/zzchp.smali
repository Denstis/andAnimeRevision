###### Class com.google.android.gms.internal.ads.zzchp (com.google.android.gms.internal.ads.zzchp)
.class public final Lcom/google/android/gms/internal/ads/zzchp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzchm;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfyj:Lcom/google/android/gms/internal/ads/zzchp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchp;->zzfyj:Lcom/google/android/gms/internal/ads/zzchp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzakv()Lcom/google/android/gms/internal/ads/zzchp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzchp;->zzfyj:Lcom/google/android/gms/internal/ads/zzchp;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchm;-><init>()V

    return-object v0
.end method
