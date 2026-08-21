###### Class com.google.android.gms.internal.ads.zzblf (com.google.android.gms.internal.ads.zzblf)
.class public final Lcom/google/android/gms/internal/ads/zzblf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcvz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzffu:Lcom/google/android/gms/internal/ads/zzbla;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbla;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblf;->zzffu:Lcom/google/android/gms/internal/ads/zzbla;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzbla;)Lcom/google/android/gms/internal/ads/zzblf;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzblf;-><init>(Lcom/google/android/gms/internal/ads/zzbla;)V

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzbla;)Lcom/google/android/gms/internal/ads/zzcvz;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbla;->zzafp()Lcom/google/android/gms/internal/ads/zzcvz;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcvz;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblf;->zzffu:Lcom/google/android/gms/internal/ads/zzbla;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblf;->zzf(Lcom/google/android/gms/internal/ads/zzbla;)Lcom/google/android/gms/internal/ads/zzcvz;

    move-result-object v0

    return-object v0
.end method
