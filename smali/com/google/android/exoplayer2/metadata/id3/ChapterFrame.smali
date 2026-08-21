###### Class com.google.android.exoplayer2.metadata.id3.ChapterFrame (com.google.android.exoplayer2.metadata.id3.ChapterFrame)
.class public final Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iput-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v0, :cond_47

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const-class v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V
    .registers 10

    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    iput-object p8, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    const-class v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_45

    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public getSubFrame(I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSubFrameCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_2e

    aget-object v3, p2, v2

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method

###### Class com.google.android.exoplayer2.metadata.id3.ChapterFrame.AnonymousClass1 (com.google.android.exoplayer2.metadata.id3.ChapterFrame$1)
.class final Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .registers 3

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .registers 2

    new-array p1, p1, [Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object p1

    return-object p1
.end method
