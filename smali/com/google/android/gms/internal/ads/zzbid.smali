###### Class com.google.android.gms.internal.ads.zzbid (com.google.android.gms.internal.ads.zzbid)
.class public final Lcom/google/android/gms/internal/ads/zzbid;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final view:Landroid/view/View;

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfde:Lcom/google/android/gms/internal/ads/zzcvu;

.field private final zzfdf:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzcvu;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbid;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzfde:Lcom/google/android/gms/internal/ads/zzcvu;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzfdf:I

    return-void
.end method


# virtual methods
.method public final zzaeo()Lcom/google/android/gms/internal/ads/zzbbw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    return-object v0
.end method

.method public final zzaep()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbid;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzaeq()Lcom/google/android/gms/internal/ads/zzcvu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzfde:Lcom/google/android/gms/internal/ads/zzcvu;

    return-object v0
.end method

.method public final zzaer()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzfdf:I

    return v0
.end method
