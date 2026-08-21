###### Class com.google.android.exoplayer2.metadata.MetadataDecoderFactory (com.google.android.exoplayer2.metadata.MetadataDecoderFactory)
.class public interface abstract Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
.end method

###### Class com.google.android.exoplayer2.metadata.MetadataDecoderFactory.AnonymousClass1 (com.google.android.exoplayer2.metadata.MetadataDecoderFactory$1)
.class final Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .registers 6

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4a682ec7

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2c

    const v1, 0x44ce7ed0

    if-eq v0, v1, :cond_22

    const v1, 0x62816bb7

    if-eq v0, v1, :cond_18

    goto :goto_36

    :cond_18
    const-string v0, "application/x-scte35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x2

    goto :goto_37

    :cond_22
    const-string v0, "application/x-emsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_2c
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p1, -0x1

    :goto_37
    if-eqz p1, :cond_51

    if-eq p1, v3, :cond_4b

    if-ne p1, v2, :cond_43

    new-instance p1, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object p1

    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object p1

    :cond_51
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    return-object p1
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/id3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "application/x-scte35"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method
