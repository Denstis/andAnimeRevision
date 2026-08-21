###### Class com.google.android.exoplayer2.offline.DownloadAction (com.google.android.exoplayer2.offline.DownloadAction)
.class public abstract Lcom/google/android/exoplayer2/offline/DownloadAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    }
.end annotation


# static fields
.field private static defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;


# instance fields
.field public final data:[B

.field public final isRemoveAction:Z

.field public final type:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final version:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz p5, :cond_e

    goto :goto_10

    :cond_e
    sget-object p5, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    :goto_10
    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    return-void
.end method

.method public static deserializeFromStream([Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 8

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_27

    aget-object v4, p0, v3

    iget-object v5, v4, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget v5, v4, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->version:I

    if-lt v5, v1, :cond_24

    invoke-virtual {v4, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_27
    new-instance p0, Lcom/google/android/exoplayer2/offline/DownloadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deserializer found for:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    goto :goto_47

    :goto_46
    throw p0

    :goto_47
    goto :goto_46
.end method

.method public static declared-synchronized getDefaultDeserializers()[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .registers 5

    const-class v0, Lcom/google/android/exoplayer2/offline/DownloadAction;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_55

    monitor-exit v0

    return-object v1

    :cond_b
    const/4 v1, 0x4

    :try_start_c
    new-array v1, v1, [Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    aput-object v3, v1, v2
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_55

    const-string v2, "com.google.android.exoplayer2.source.dash.offline.DashDownloadAction"

    const/4 v3, 0x1

    :try_start_16
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_22
    .catchall {:try_start_16 .. :try_end_1a} :catchall_55

    const/4 v4, 0x2

    :try_start_1b
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v2

    aput-object v2, v1, v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_23
    .catchall {:try_start_1b .. :try_end_21} :catchall_55

    goto :goto_23

    :catch_22
    const/4 v4, 0x1

    :catch_23
    :goto_23
    const-string v2, "com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction"

    :try_start_25
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_32
    .catchall {:try_start_25 .. :try_end_29} :catchall_55

    add-int/lit8 v3, v4, 0x1

    :try_start_2b
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v2

    aput-object v2, v1, v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_33
    .catchall {:try_start_2b .. :try_end_31} :catchall_55

    goto :goto_33

    :catch_32
    move v3, v4

    :catch_33
    :goto_33
    const-string v2, "com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloadAction"

    :try_start_35
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_42
    .catchall {:try_start_35 .. :try_end_39} :catchall_55

    add-int/lit8 v4, v3, 0x1

    :try_start_3b
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v2

    aput-object v2, v1, v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_43
    .catchall {:try_start_3b .. :try_end_41} :catchall_55

    goto :goto_43

    :catch_42
    move v4, v3

    :catch_43
    :goto_43
    :try_start_43
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    sput-object v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->defaultDeserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_55

    monitor-exit v0

    return-object v1

    :catchall_55
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDeserializer(Ljava/lang/Class;)Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;"
        }
    .end annotation

    const-string v0, "DESERIALIZER"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    return-object p0
.end method

.method public static serializeToStream(Lcom/google/android/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V
    .registers 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->writeToStream(Ljava/io/DataOutputStream;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public abstract createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/Downloader;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_3b

    :cond_e
    check-cast p1, Lcom/google/android/exoplayer2/offline/DownloadAction;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    iget v2, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->version:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    :goto_3b
    return v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSameMedia(Lcom/google/android/exoplayer2/offline/DownloadAction;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final toByteArray()[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->serializeToStream(Lcom/google/android/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected abstract writeToStream(Ljava/io/DataOutputStream;)V
.end method

###### Class com.google.android.exoplayer2.offline.DownloadAction.Deserializer (com.google.android.exoplayer2.offline.DownloadAction$Deserializer)
.class public abstract Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Deserializer"
.end annotation


# instance fields
.field public final type:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->type:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->version:I

    return-void
.end method


# virtual methods
.method public abstract readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;
.end method
