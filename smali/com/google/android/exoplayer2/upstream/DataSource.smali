###### Class com.google.android.exoplayer2.upstream.DataSource (com.google.android.exoplayer2.upstream.DataSource)
.class public interface abstract Lcom/google/android/exoplayer2/upstream/DataSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
.end method

.method public abstract read([BII)I
.end method

###### Class com.google.android.exoplayer2.upstream.DataSource.Factory (com.google.android.exoplayer2.upstream.DataSource$Factory)
.class public interface abstract Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
.end method
