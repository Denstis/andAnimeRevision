###### Class com.google.android.exoplayer2.extractor.Extractor (com.google.android.exoplayer2.extractor.Extractor)
.class public interface abstract Lcom/google/android/exoplayer2/extractor/Extractor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/Extractor$ReadResult;
    }
.end annotation


# static fields
.field public static final RESULT_CONTINUE:I = 0x0

.field public static final RESULT_END_OF_INPUT:I = -0x1

.field public static final RESULT_SEEK:I = 0x1


# virtual methods
.method public abstract init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
.end method

.method public abstract read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method

.method public abstract sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
.end method

###### Class com.google.android.exoplayer2.extractor.Extractor.ReadResult (com.google.android.exoplayer2.extractor.Extractor$ReadResult)
.class public interface abstract annotation Lcom/google/android/exoplayer2/extractor/Extractor$ReadResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReadResult"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
