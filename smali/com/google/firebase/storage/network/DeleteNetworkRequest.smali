###### Class com.google.firebase.storage.network.DeleteNetworkRequest (com.google.firebase.storage.network.DeleteNetworkRequest)
.class public Lcom/google/firebase/storage/network/DeleteNetworkRequest;
.super Lcom/google/firebase/storage/network/NetworkRequest;
.source ""


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE"

    return-object v0
.end method
