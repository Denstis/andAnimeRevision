###### Class com.google.android.gms.internal.ads.zzbst (com.google.android.gms.internal.ads.zzbst)
.class public final Lcom/google/android/gms/internal/ads/zzbst;
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
.field private static final zzfir:Lcom/google/android/gms/internal/ads/zzbst;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbst;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbst;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbst;->zzfir:Lcom/google/android/gms/internal/ads/zzbst;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzagx()Lcom/google/android/gms/internal/ads/zzbst;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbst;->zzfir:Lcom/google/android/gms/internal/ads/zzbst;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
