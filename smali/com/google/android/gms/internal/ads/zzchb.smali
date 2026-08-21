###### Class com.google.android.gms.internal.ads.zzchb (com.google.android.gms.internal.ads.zzchb)
.class final Lcom/google/android/gms/internal/ads/zzchb;
.super Lcom/google/android/gms/internal/ads/zzalq;
.source ""


# instance fields
.field private zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcgf<",
            "Lcom/google/android/gms/internal/ads/zzamd;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzfxt:Lcom/google/android/gms/internal/ads/zzcgw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcgw;Lcom/google/android/gms/internal/ads/zzcgf;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcgf<",
            "Lcom/google/android/gms/internal/ads/zzamd;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzfxt:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalq;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgw;Lcom/google/android/gms/internal/ads/zzcgf;Lcom/google/android/gms/internal/ads/zzcgy;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchb;-><init>(Lcom/google/android/gms/internal/ads/zzcgw;Lcom/google/android/gms/internal/ads/zzcgf;)V

    return-void
.end method


# virtual methods
.method public final zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzfxt:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lcom/google/android/gms/internal/ads/zzcgw;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->onAdLoaded()V

    return-void
.end method

.method public final zzdg(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzchk;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzchk;->onAdFailedToLoad(I)V

    return-void
.end method
