###### Class com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry (com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry)
.class public final Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    const-class v2, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_35

    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    if-ne v2, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0

    :cond_35
    :goto_35
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdta: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry.AnonymousClass1 (com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry$1)
.class final Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;
    .registers 4

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;
    .registers 2

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$1;->newArray(I)[Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    move-result-object p1

    return-object p1
.end method
