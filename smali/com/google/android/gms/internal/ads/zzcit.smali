###### Class com.google.android.gms.internal.ads.zzcit (com.google.android.gms.internal.ads.zzcit)
.class final Lcom/google/android/gms/internal/ads/zzcit;
.super Lcom/google/android/gms/internal/ads/zzalw;
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

.field private final synthetic zzfyz:Lcom/google/android/gms/internal/ads/zzcir;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcir;Lcom/google/android/gms/internal/ads/zzcgf;)V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzfyz:Lcom/google/android/gms/internal/ads/zzcir;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalw;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcir;Lcom/google/android/gms/internal/ads/zzcgf;Lcom/google/android/gms/internal/ads/zzciq;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcit;-><init>(Lcom/google/android/gms/internal/ads/zzcir;Lcom/google/android/gms/internal/ads/zzcgf;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzakm;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzfyz:Lcom/google/android/gms/internal/ads/zzcir;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zza(Lcom/google/android/gms/internal/ads/zzcir;Lcom/google/android/gms/internal/ads/zzakm;)Lcom/google/android/gms/internal/ads/zzakm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->onAdLoaded()V

    return-void
.end method

.method public final zzdg(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzfxs:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzchk;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzchk;->onAdFailedToLoad(I)V

    return-void
.end method
