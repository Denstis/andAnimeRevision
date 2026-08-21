###### Class com.google.android.gms.internal.ads.zzcax (com.google.android.gms.internal.ads.zzcax)
.class public final Lcom/google/android/gms/internal/ads/zzcax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcba;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfrn:Lcom/google/android/gms/internal/ads/zzcax;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcax;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcax;->zzfrn:Lcom/google/android/gms/internal/ads/zzcax;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzajt()Lcom/google/android/gms/internal/ads/zzcax;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcax;->zzfrn:Lcom/google/android/gms/internal/ads/zzcax;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcba;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzbsq:Lcom/google/android/gms/internal/ads/zzsf$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzbsr:Lcom/google/android/gms/internal/ads/zzsf$zza$zza;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzbti:Lcom/google/android/gms/internal/ads/zzsf$zza$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcba;-><init>(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;Lcom/google/android/gms/internal/ads/zzsf$zza$zza;Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcba;

    return-object v0
.end method
