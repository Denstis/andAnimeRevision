###### Class com.google.firebase.storage.CancelException (com.google.firebase.storage.CancelException)
.class Lcom/google/firebase/storage/CancelException;
.super Ljava/io/IOException;
.source ""


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "The operation was canceled."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
