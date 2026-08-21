###### Class com.google.android.exoplayer2.audio.AudioFocusManager (com.google.android.exoplayer2.audio.AudioFocusManager)
.class public final Lcom/google/android/exoplayer2/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;,
        Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerCommand;,
        Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x1

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x3

.field private static final AUDIO_FOCUS_STATE_LOST_FOCUS:I = -0x1

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x0

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGain:I

.field private final focusListener:Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;

.field private final playerControl:Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->volumeMultiplier:F

    const/4 v0, 0x0

    if-nez p1, :cond_c

    move-object p1, v0

    goto :goto_18

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    :goto_18
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;-><init>(Lcom/google/android/exoplayer2/audio/AudioFocusManager;Lcom/google/android/exoplayer2/audio/AudioFocusManager$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    return-void
.end method

.method private abandonAudioFocus()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method private abandonAudioFocus(Z)V
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    if-eqz p1, :cond_25

    :cond_15
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_22

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocusDefault()V

    :goto_22
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    :cond_25
    return-void
.end method

.method private abandonAudioFocusDefault()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private abandonAudioFocusV26()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_11
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/audio/AudioFocusManager;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/audio/AudioFocusManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)F
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->volumeMultiplier:F

    return p0
.end method

.method static synthetic access$502(Lcom/google/android/exoplayer2/audio/AudioFocusManager;F)F
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->volumeMultiplier:F

    return p1
.end method

.method private static convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_3e

    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_25
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_2d

    const/4 p0, 0x4

    return p0

    :cond_2d
    return v4

    :pswitch_2e
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne p0, v5, :cond_33

    return v4

    :cond_33
    :pswitch_33
    return v2

    :pswitch_34
    return v0

    :pswitch_35
    return v4

    :pswitch_36
    return v5

    :pswitch_37
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_35
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2e
        :pswitch_33
        :pswitch_33
        :pswitch_36
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private handleIdle(Z)I
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    :goto_5
    return p1
.end method

.method private requestAudioFocus()I
    .registers 5

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    if-eqz v0, :cond_c

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    :cond_c
    return v1

    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    const/4 v2, 0x0

    if-nez v0, :cond_28

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_21

    :cond_1d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    :goto_21
    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    :cond_28
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_2e

    const/4 v0, -0x1

    return v0

    :cond_2e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_32

    const/4 v1, 0x0

    :cond_32
    return v1
.end method

.method private requestAudioFocusDefault()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private requestAudioFocusV26()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v0, :cond_41

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_14

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_1a

    :cond_14
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    move-object v0, v1

    :goto_1a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    :cond_41
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private willPauseWhenDucked()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method public getVolumeMultiplier()F
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public handlePrepare(Z)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    return p1
.end method

.method public handleSetPlayWhenReady(ZI)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocus()V

    const/4 p1, -0x1

    return p1

    :cond_d
    if-ne p2, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->handleIdle(Z)I

    move-result p1

    goto :goto_18

    :cond_14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    :goto_18
    return p1
.end method

.method public handleStop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;ZI)I
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, -0x1

    :goto_b
    return v1

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    const-string v2, "SimpleExoPlayer must be created with a context to handle audio focus."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->focusGain:I

    if-eq p1, v1, :cond_2c

    if-nez p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    :goto_2d
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_3f

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3a

    const/4 p1, 0x3

    if-ne p3, p1, :cond_3f

    :cond_3a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    return p1

    :cond_3f
    if-ne p3, v1, :cond_46

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->handleIdle(Z)I

    move-result p1

    goto :goto_4a

    :cond_46
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->handlePrepare(Z)I

    move-result p1

    :goto_4a
    return p1
.end method

###### Class com.google.android.exoplayer2.audio.AudioFocusManager.AnonymousClass1 (com.google.android.exoplayer2.audio.AudioFocusManager$1)
.class synthetic Lcom/google/android/exoplayer2/audio/AudioFocusManager$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.audio.AudioFocusManager.AudioFocusListener (com.google.android.exoplayer2.audio.AudioFocusManager$AudioFocusListener)
.class Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioFocusManager;Lcom/google/android/exoplayer2/audio/AudioFocusManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;-><init>(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 7

    const/4 v0, -0x3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, -0x2

    if-eq p1, v0, :cond_31

    if-eq p1, v3, :cond_2b

    if-eq p1, v4, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$102(Lcom/google/android/exoplayer2/audio/AudioFocusManager;I)I

    goto :goto_45

    :cond_2b
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$102(Lcom/google/android/exoplayer2/audio/AudioFocusManager;I)I

    goto :goto_45

    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$102(Lcom/google/android/exoplayer2/audio/AudioFocusManager;I)I

    goto :goto_45

    :cond_37
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$200(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_31

    :cond_40
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$102(Lcom/google/android/exoplayer2/audio/AudioFocusManager;I)I

    :goto_45
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$100(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)I

    move-result p1

    if-eq p1, v3, :cond_88

    if-eqz p1, :cond_96

    if-eq p1, v4, :cond_7e

    if-eq p1, v2, :cond_73

    if-ne p1, v1, :cond_56

    goto :goto_96

    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$100(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$300(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    goto :goto_96

    :cond_7e
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$300(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    goto :goto_96

    :cond_88
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$300(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$400(Lcom/google/android/exoplayer2/audio/AudioFocusManager;Z)V

    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$100(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)I

    move-result p1

    if-ne p1, v1, :cond_a2

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_a4

    :cond_a2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_a4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$500(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$502(Lcom/google/android/exoplayer2/audio/AudioFocusManager;F)F

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/audio/AudioFocusManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioFocusManager;->access$300(Lcom/google/android/exoplayer2/audio/AudioFocusManager;)Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    :cond_bc
    return-void
.end method

###### Class com.google.android.exoplayer2.audio.AudioFocusManager.PlayerCommand (com.google.android.exoplayer2.audio.AudioFocusManager$PlayerCommand)
.class public interface abstract annotation Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PlayerCommand"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.audio.AudioFocusManager.PlayerControl (com.google.android.exoplayer2.audio.AudioFocusManager$PlayerControl)
.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioFocusManager$PlayerControl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerControl"
.end annotation


# virtual methods
.method public abstract executePlayerCommand(I)V
.end method

.method public abstract setVolumeMultiplier(F)V
.end method
