###### Class com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput (com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput)
.class interface abstract Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput$ElementType;
    }
.end annotation


# static fields
.field public static final TYPE_BINARY:I = 0x4

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_MASTER:I = 0x1

.field public static final TYPE_STRING:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_UNSIGNED_INT:I = 0x2


# virtual methods
.method public abstract binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V
.end method

.method public abstract endMasterElement(I)V
.end method

.method public abstract floatElement(ID)V
.end method

.method public abstract getElementType(I)I
.end method

.method public abstract integerElement(IJ)V
.end method

.method public abstract isLevel1Element(I)Z
.end method

.method public abstract startMasterElement(IJJ)V
.end method

.method public abstract stringElement(ILjava/lang/String;)V
.end method

###### Class com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput.ElementType (com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput$ElementType)
.class public interface abstract annotation Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput$ElementType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ElementType"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
