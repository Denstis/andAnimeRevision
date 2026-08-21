###### Class com.google.android.exoplayer2.audio.AudioAttributes (com.google.android.exoplayer2.audio.AudioAttributes)
.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;


# instance fields
.field private audioAttributesV21:Landroid/media/AudioAttributes;

.field public final contentType:I

.field public final flags:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    const-class v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getAudioAttributesV21()Landroid/media/AudioAttributes;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    if-nez v0, :cond_21

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    add-int/2addr v1, v0

    return v1
.end method

###### Class com.google.android.exoplayer2.audio.AudioAttributes.AnonymousClass1 (com.google.android.exoplayer2.audio.AudioAttributes$1)
.class synthetic Lcom/google/android/exoplayer2/audio/AudioAttributes$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.audio.AudioAttributes.Builder (com.google.android.exoplayer2.audio.AudioAttributes$Builder)
.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentType:I

.field private flags:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 6

    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    return-object v0
.end method

.method public setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    return-object p0
.end method

.method public setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    return-object p0
.end method
