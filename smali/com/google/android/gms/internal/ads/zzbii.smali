###### Class com.google.android.gms.internal.ads.zzbii (com.google.android.gms.internal.ads.zzbii)
.class public final Lcom/google/android/gms/internal/ads/zzbii;
.super Lcom/google/android/gms/internal/ads/zzbkk;
.source ""


# instance fields
.field private final view:Landroid/view/View;

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfde:Lcom/google/android/gms/internal/ads/zzcvu;

.field private final zzfdf:I

.field private zzfdh:Lcom/google/android/gms/internal/ads/zzrc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbkn;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzcvu;I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkk;-><init>(Lcom/google/android/gms/internal/ads/zzbkn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbii;->view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzfde:Lcom/google/android/gms/internal/ads/zzcvu;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzfdf:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzqr;)V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzrc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzfdh:Lcom/google/android/gms/internal/ads/zzrc;

    return-void
.end method

.method public final zzaer()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzfdf:I

    return v0
.end method

.method public final zzaet()Lcom/google/android/gms/internal/ads/zzcvu;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjd:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzfde:Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcvu;)Lcom/google/android/gms/internal/ads/zzcvu;

    move-result-object v0

    return-object v0
.end method

.method public final zzaeu()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbii;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzaev()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzr()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaew()Lcom/google/android/gms/internal/ads/zzrc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzfdh:Lcom/google/android/gms/internal/ads/zzrc;

    return-object v0
.end method

.method public final zzyw()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbii;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzyw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
