###### Class com.google.android.exoplayer2.drm.FrameworkMediaCrypto (com.google.android.exoplayer2.drm.FrameworkMediaCrypto)
.class public final Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final forceAllowInsecureDecoderComponents:Z

.field private final mediaCrypto:Landroid/media/MediaCrypto;


# direct methods
.method public constructor <init>(Landroid/media/MediaCrypto;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCrypto;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCrypto;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->mediaCrypto:Landroid/media/MediaCrypto;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    return-void
.end method


# virtual methods
.method public getWrappedMediaCrypto()Landroid/media/MediaCrypto;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->mediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
