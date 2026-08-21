###### Class com.google.android.gms.internal.ads.zzbca (com.google.android.gms.internal.ads.zzbca)
.class final Lcom/google/android/gms/internal/ads/zzbca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic zzefc:Lcom/google/android/gms/internal/ads/zzasi;

.field private final synthetic zzefd:Lcom/google/android/gms/internal/ads/zzbbv;

.field private final synthetic zzefe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbv;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzasi;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefd:Lcom/google/android/gms/internal/ads/zzbbv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefc:Lcom/google/android/gms/internal/ads/zzasi;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefe:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefd:Lcom/google/android/gms/internal/ads/zzbbv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefc:Lcom/google/android/gms/internal/ads/zzasi;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefe:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbv;->zza(Lcom/google/android/gms/internal/ads/zzbbv;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzasi;I)V

    return-void
.end method
