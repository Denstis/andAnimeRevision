###### Class com.google.android.gms.internal.ads.zzbqm (com.google.android.gms.internal.ads.zzbqm)
.class public final Lcom/google/android/gms/internal/ads/zzbqm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbqn;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfhx:Lcom/google/android/gms/internal/ads/zzbqm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbqm;->zzfhx:Lcom/google/android/gms/internal/ads/zzbqm;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzago()Lcom/google/android/gms/internal/ads/zzbqm;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbqm;->zzfhx:Lcom/google/android/gms/internal/ads/zzbqm;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqn;-><init>()V

    return-object v0
.end method
