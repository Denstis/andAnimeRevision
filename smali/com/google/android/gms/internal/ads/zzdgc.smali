###### Class com.google.android.gms.internal.ads.zzdgc (com.google.android.gms.internal.ads.zzdgc)
.class final Lcom/google/android/gms/internal/ads/zzdgc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdel;


# instance fields
.field private final zzgtj:Lcom/google/android/gms/internal/ads/zzdev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdev<",
            "Lcom/google/android/gms/internal/ads/zzdel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdev;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdev<",
            "Lcom/google/android/gms/internal/ads/zzdel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapu()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdel;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdel;->zzc([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
