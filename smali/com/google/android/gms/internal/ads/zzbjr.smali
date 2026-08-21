###### Class com.google.android.gms.internal.ads.zzbjr (com.google.android.gms.internal.ads.zzbjr)
.class public final Lcom/google/android/gms/internal/ads/zzbjr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfej:Lcom/google/android/gms/internal/ads/zzbjr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbjr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjr;->zzfej:Lcom/google/android/gms/internal/ads/zzbjr;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzafg()Lcom/google/android/gms/internal/ads/zzbjr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjr;->zzfej:Lcom/google/android/gms/internal/ads/zzbjr;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
