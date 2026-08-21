###### Class com.google.android.gms.internal.ads.zzbig (com.google.android.gms.internal.ads.zzbig)
.class public final Lcom/google/android/gms/internal/ads/zzbig;
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
.field private static final zzfdg:Lcom/google/android/gms/internal/ads/zzbig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbig;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbig;->zzfdg:Lcom/google/android/gms/internal/ads/zzbig;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaes()Lcom/google/android/gms/internal/ads/zzbig;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbig;->zzfdg:Lcom/google/android/gms/internal/ads/zzbig;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
