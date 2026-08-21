###### Class com.google.android.gms.internal.ads.zzcwf (com.google.android.gms.internal.ads.zzcwf)
.class public final Lcom/google/android/gms/internal/ads/zzcwf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcwg;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzgko:Lcom/google/android/gms/internal/ads/zzcwf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcwf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcwf;->zzgko:Lcom/google/android/gms/internal/ads/zzcwf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzanb()Lcom/google/android/gms/internal/ads/zzcwf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcwf;->zzgko:Lcom/google/android/gms/internal/ads/zzcwf;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcwg;-><init>()V

    return-object v0
.end method
