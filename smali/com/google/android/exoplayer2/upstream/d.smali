###### Class com.google.android.exoplayer2.upstream.d (com.google.android.exoplayer2.upstream.d)
.class public final synthetic Lcom/google/android/exoplayer2/upstream/d;
.super Ljava/lang/Object;


# direct methods
.method public static $default$getResponseHeaders(Lcom/google/android/exoplayer2/upstream/DataSource;)Ljava/util/Map;
    .registers 2
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

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
