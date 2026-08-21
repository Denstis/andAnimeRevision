###### Class com.google.firebase.storage.network.ResumableUploadByteRequest (com.google.firebase.storage.network.ResumableUploadByteRequest)
.class public Lcom/google/firebase/storage/network/ResumableUploadByteRequest;
.super Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.source ""


# instance fields
.field private final bytesToWrite:I

.field private final chunk:[B

.field private final isFinal:Z

.field private final offset:J

.field private final uploadURL:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;[BJIZ)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    if-nez p4, :cond_11

    const/4 p1, -0x1

    if-eq p7, p1, :cond_11

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentType is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/network/NetworkRequest;->mException:Ljava/lang/Exception;

    :cond_11
    const-wide/16 p1, 0x0

    cmp-long v0, p5, p1

    if-gez v0, :cond_20

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/network/NetworkRequest;->mException:Ljava/lang/Exception;

    :cond_20
    iput p7, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    iput-object p3, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->uploadURL:Landroid/net/Uri;

    if-gtz p7, :cond_27

    const/4 p4, 0x0

    :cond_27
    iput-object p4, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->chunk:[B

    iput-wide p5, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->offset:J

    iput-boolean p8, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    const-string p1, "X-Goog-Upload-Protocol"

    const-string p2, "resumable"

    invoke-super {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    const-string p2, "X-Goog-Upload-Command"

    if-eqz p1, :cond_41

    iget p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    if-lez p1, :cond_41

    const-string p1, "upload, finalize"

    goto :goto_4a

    :cond_41
    iget-boolean p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    if-eqz p1, :cond_48

    const-string p1, "finalize"

    goto :goto_4a

    :cond_48
    const-string p1, "upload"

    :goto_4a
    invoke-super {p0, p2, p1}, Lcom/google/firebase/storage/network/NetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->offset:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Goog-Upload-Offset"

    invoke-super {p0, p2, p1}, Lcom/google/firebase/storage/network/NetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method

.method protected getOutputRaw()[B
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->chunk:[B

    return-object v0
.end method

.method protected getOutputRawSize()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method protected getURL()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->uploadURL:Landroid/net/Uri;

    return-object v0
.end method
