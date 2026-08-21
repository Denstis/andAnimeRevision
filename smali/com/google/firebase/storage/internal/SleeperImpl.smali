###### Class com.google.firebase.storage.internal.SleeperImpl (com.google.firebase.storage.internal.SleeperImpl)
.class public Lcom/google/firebase/storage/internal/SleeperImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/storage/internal/Sleeper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep(I)V
    .registers 4

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method
