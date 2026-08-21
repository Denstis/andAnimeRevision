###### Class com.google.android.gms.internal.ads.zzcln (com.google.android.gms.internal.ads.zzcln)
.class final Lcom/google/android/gms/internal/ads/zzcln;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/zze;


# instance fields
.field private final synthetic zzgbe:Lcom/google/android/gms/internal/ads/zzbru;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcli;Lcom/google/android/gms/internal/ads/zzbru;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzgbe:Lcom/google/android/gms/internal/ads/zzbru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zzjl()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzgbe:Lcom/google/android/gms/internal/ads/zzbru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkm;->zzach()Lcom/google/android/gms/internal/ads/zzbmv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmv;->onAdClicked()V

    return-void
.end method

.method public final zzjm()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzgbe:Lcom/google/android/gms/internal/ads/zzbru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkm;->zzaci()Lcom/google/android/gms/internal/ads/zzbni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzgbe:Lcom/google/android/gms/internal/ads/zzbru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkm;->zzacj()Lcom/google/android/gms/internal/ads/zzbqw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqw;->zzagq()V

    return-void
.end method
