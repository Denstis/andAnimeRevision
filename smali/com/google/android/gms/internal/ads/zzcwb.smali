###### Class com.google.android.gms.internal.ads.zzcwb (com.google.android.gms.internal.ads.zzcwb)
.class public final Lcom/google/android/gms/internal/ads/zzcwb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcwc;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzgkd:Lcom/google/android/gms/internal/ads/zzcwb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcwb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcwb;->zzgkd:Lcom/google/android/gms/internal/ads/zzcwb;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzamz()Lcom/google/android/gms/internal/ads/zzcwb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcwb;->zzgkd:Lcom/google/android/gms/internal/ads/zzcwb;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcwc;-><init>()V

    return-object v0
.end method
