###### Class com.google.android.gms.ads.internal.overlay.zzl (com.google.android.gms.ads.internal.overlay.zzl)
.class final Lcom/google/android/gms/ads/internal/overlay/zzl;
.super Lcom/google/android/gms/internal/ads/zzauc;
.source ""


# instance fields
.field final synthetic zzdhw:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdhw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzh;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method


# virtual methods
.method public final zzsx()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlc()Lcom/google/android/gms/internal/ads/zzawj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdhw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzg;->zzblb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawj;->zza(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdhw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    iget-boolean v4, v2, Lcom/google/android/gms/ads/internal/zzg;->zzbkz:Z

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzg;->zzbla:F

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzaur;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzl;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    return-void
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzk (com.google.android.gms.ads.internal.overlay.zzk)
.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdhu:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private final zzdhv:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzl;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdhu:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdhv:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdhu:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdhv:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdhw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
