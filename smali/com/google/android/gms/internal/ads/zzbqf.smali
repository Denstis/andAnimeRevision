###### Class com.google.android.gms.internal.ads.zzbqf (com.google.android.gms.internal.ads.zzbqf)
.class public final Lcom/google/android/gms/internal/ads/zzbqf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbpn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbpn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    return-void
.end method

.method public static zzv(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbqf;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzbpn;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    if-eqz v0, :cond_d

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbpn;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    throw v0
.end method
