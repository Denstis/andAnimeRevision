###### Class com.google.android.gms.internal.ads.zzazo (com.google.android.gms.internal.ads.zzazo)
.class public final Lcom/google/android/gms/internal/ads/zzazo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private zzcw:F

.field private zzdyg:Z

.field private final zzebf:Landroid/media/AudioManager;

.field private final zzebg:Lcom/google/android/gms/internal/ads/zzazn;

.field private zzebh:Z

.field private zzebi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzcw:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebf:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebg:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method

.method private final zzxy()V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdyg:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebi:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzcw:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_32

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebh:Z

    if-nez v3, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebf:Landroid/media/AudioManager;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_21

    goto :goto_2c

    :cond_21
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebh:Z

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebg:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazn;->zzwu()V

    return-void

    :cond_32
    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebh:Z

    if-eqz v0, :cond_4d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebf:Landroid/media/AudioManager;

    if-eqz v3, :cond_48

    if-nez v0, :cond_3f

    goto :goto_48

    :cond_3f
    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_46

    const/4 v1, 0x1

    :cond_46
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebh:Z

    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebg:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazn;->zzwu()V

    :cond_4d
    return-void
.end method


# virtual methods
.method public final getVolume()F
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzcw:F

    :goto_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebh:Z

    if-eqz v2, :cond_e

    return v0

    :cond_e
    return v1
.end method

.method public final onAudioFocusChange(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebg:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazn;->zzwu()V

    return-void
.end method

.method public final setMuted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazo;->zzxy()V

    return-void
.end method

.method public final setVolume(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzcw:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazo;->zzxy()V

    return-void
.end method

.method public final zzxw()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdyg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazo;->zzxy()V

    return-void
.end method

.method public final zzxx()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdyg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazo;->zzxy()V

    return-void
.end method
