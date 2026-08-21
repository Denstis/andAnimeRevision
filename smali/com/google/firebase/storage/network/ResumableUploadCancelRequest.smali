###### Class com.google.firebase.storage.network.ResumableUploadCancelRequest (com.google.firebase.storage.network.ResumableUploadCancelRequest)
.class public Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;
.super Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.source ""


# static fields
.field public static cancelCalled:Z = false


# instance fields
.field private final uploadURL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->cancelCalled:Z

    iput-object p3, p0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->uploadURL:Landroid/net/Uri;

    const-string p1, "X-Goog-Upload-Protocol"

    const-string p2, "resumable"

    invoke-super {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "X-Goog-Upload-Command"

    const-string p2, "cancel"

    invoke-super {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method

.method protected getURL()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->uploadURL:Landroid/net/Uri;

    return-object v0
.end method
