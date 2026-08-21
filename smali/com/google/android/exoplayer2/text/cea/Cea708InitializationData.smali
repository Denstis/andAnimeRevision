###### Class com.google.android.exoplayer2.text.cea.Cea708InitializationData (com.google.android.exoplayer2.text.cea.Cea708InitializationData)
.class public final Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final isWideAspectRatio:Z


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    aget-byte p1, p1, v0

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;->isWideAspectRatio:Z

    return-void
.end method

.method public static buildData(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fromData(Ljava/util/List;)Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;-><init>(Ljava/util/List;)V

    return-object v0
.end method
