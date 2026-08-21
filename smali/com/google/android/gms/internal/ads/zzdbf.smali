###### Class com.google.android.gms.internal.ads.zzdbf (com.google.android.gms.internal.ads.zzdbf)
.class final Lcom/google/android/gms/internal/ads/zzdbf;
.super Lcom/google/android/gms/internal/ads/zzdau;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdau<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zzgpd:Lcom/google/android/gms/internal/ads/zzdbd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbd;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdau;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbf;->zzgpd:Lcom/google/android/gms/internal/ads/zzdbd;

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbf;->zzgpd:Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
