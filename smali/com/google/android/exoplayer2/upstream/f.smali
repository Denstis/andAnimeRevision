###### Class com.google.android.exoplayer2.upstream.f (com.google.android.exoplayer2.upstream.f)
.class public final synthetic Lcom/google/android/exoplayer2/upstream/f;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic $default$createDataSource(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method
