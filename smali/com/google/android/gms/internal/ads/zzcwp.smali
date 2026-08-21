###### Class com.google.android.gms.internal.ads.zzcwp (com.google.android.gms.internal.ads.zzcwp)
.class public final Lcom/google/android/gms/internal/ads/zzcwp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/common/util/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgku:Lcom/google/android/gms/internal/ads/zzcwq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgku:Lcom/google/android/gms/internal/ads/zzcwq;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method
