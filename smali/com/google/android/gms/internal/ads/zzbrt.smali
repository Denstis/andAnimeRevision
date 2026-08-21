###### Class com.google.android.gms.internal.ads.zzbrt (com.google.android.gms.internal.ads.zzbrt)
.class public final Lcom/google/android/gms/internal/ads/zzbrt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbrq;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfil:Lcom/google/android/gms/internal/ads/zzbrt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbrt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbrt;->zzfil:Lcom/google/android/gms/internal/ads/zzbrt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzagt()Lcom/google/android/gms/internal/ads/zzbrt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbrt;->zzfil:Lcom/google/android/gms/internal/ads/zzbrt;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbrq;-><init>()V

    return-object v0
.end method
