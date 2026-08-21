###### Class com.google.android.exoplayer2.util.Log (com.google.android.exoplayer2.util.Log)
.class public final Lcom/google/android/exoplayer2/util/Log;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_INFO:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x7fffffff

.field public static final LOG_LEVEL_WARNING:I = 0x2

.field private static logLevel:I = 0x0

.field private static logStackTraces:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_22

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    if-nez v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_b

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    if-nez v0, :cond_12

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_b

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_13

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-void
.end method

.method public static getLogLevel()I
    .registers 1

    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_b

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-void
.end method

.method public static setLogLevel(I)V
    .registers 1

    sput p0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    return-void
.end method

.method public static setLogStackTraces(Z)V
    .registers 1

    sput-boolean p0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_b

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_13

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-void
.end method


# virtual methods
.method public getLogStackTraces()Z
    .registers 2

    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    return v0
.end method
