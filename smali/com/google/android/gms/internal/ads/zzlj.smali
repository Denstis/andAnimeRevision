###### Class com.google.android.gms.internal.ads.zzlj (com.google.android.gms.internal.ads.zzlj)
.class final Lcom/google/android/gms/internal/ads/zzlj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzazs:Lcom/google/android/gms/internal/ads/zzli;

.field private final synthetic zzbat:Lcom/google/android/gms/internal/ads/zzlo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzli;Lcom/google/android/gms/internal/ads/zzlo;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzbat:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlo;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzli;->zzd(Lcom/google/android/gms/internal/ads/zzli;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzli;->zzd(Lcom/google/android/gms/internal/ads/zzli;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmc;->disable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method
