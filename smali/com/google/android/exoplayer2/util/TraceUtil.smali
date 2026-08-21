###### Class com.google.android.exoplayer2.util.TraceUtil (com.google.android.exoplayer2.util.TraceUtil)
.class public final Lcom/google/android/exoplayer2/util/TraceUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .registers 2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSectionV18()V

    :cond_9
    return-void
.end method

.method private static endSectionV18()V
    .registers 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
