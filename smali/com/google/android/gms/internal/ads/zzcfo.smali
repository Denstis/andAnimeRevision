###### Class com.google.android.gms.internal.ads.zzcfo (com.google.android.gms.internal.ads.zzcfo)
.class public final Lcom/google/android/gms/internal/ads/zzcfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfwe:Lcom/google/android/gms/internal/ads/zzcfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfo;->zzfwe:Lcom/google/android/gms/internal/ads/zzcfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzakn()Lcom/google/android/gms/internal/ads/zzcfo;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfo;->zzfwe:Lcom/google/android/gms/internal/ads/zzcfo;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>()V

    return-object v0
.end method
