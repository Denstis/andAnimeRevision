###### Class com.google.android.gms.internal.ads.zzang (com.google.android.gms.internal.ads.zzang)
.class public final Lcom/google/android/gms/internal/ads/zzang;
.super Lcom/google/android/gms/internal/ads/zzanj;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzanj;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# instance fields
.field private density:F

.field private maxHeight:I

.field private maxWidth:I

.field private rotation:I

.field private final zzbnk:Landroid/view/WindowManager;

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzdgm:Lcom/google/android/gms/internal/ads/zzyl;

.field private zzdgn:I

.field private zzdgo:I

.field private zzdgp:I

.field private zzdgq:I

.field private final zzlk:Landroid/content/Context;

.field private zzwl:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyl;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->maxWidth:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->maxHeight:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgq:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgm:Lcom/google/android/gms/internal/ads/zzyl;

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzbnk:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 11

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzbnk:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzang;->density:F

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->rotation:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgn:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgo:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxn()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_49

    goto :goto_69

    :cond_49
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaul;->zzd(Landroid/app/Activity;)[I

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzang;->maxWidth:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzwl:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    goto :goto_6f

    :cond_69
    :goto_69
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgn:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->maxWidth:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgo:I

    :goto_6f
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->maxHeight:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result p1

    if-eqz p1, :cond_86

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgn:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgo:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgq:I

    goto :goto_8b

    :cond_86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->measure(II)V

    :goto_8b
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgn:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgo:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzang;->maxWidth:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzang;->maxHeight:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzang;->density:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzang;->rotation:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzanj;->zza(IIIIFI)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanh;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgm:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyl;->zzpm()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zzx(Z)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgm:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyl;->zzpn()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zzw(Z)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgm:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyl;->zzpp()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zzy(Z)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgm:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyl;->zzpo()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zzz(Z)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->zzaa(Z)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanf;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzanf;-><init>(Lcom/google/android/gms/internal/ads/zzanh;Lcom/google/android/gms/internal/ads/zzane;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanf;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzagn;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzang;->zzi(II)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_10b

    const-string p1, "Dispatching Ready Event."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    :cond_10b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxr()Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzanj;->zzdo(Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(II)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaul;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result v0

    if-nez v0, :cond_83

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->getHeight()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zzcij:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6b

    if-nez v0, :cond_59

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v3

    if-eqz v3, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdj;->widthPixels:I

    :cond_59
    if-nez v2, :cond_6b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v3

    if-eqz v3, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdj;->heightPixels:I

    :cond_6b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgp:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzang;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgq:I

    :cond_83
    sub-int v0, p2, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzang;->zzdgq:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdg;->zzh(II)V

    return-void
.end method
