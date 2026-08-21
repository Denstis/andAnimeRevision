###### Class b.h.h.d (b.h.h.d)
.class Lb/h/h/d;
.super Lb/h/h/h;
.source ""


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/h/h/h;-><init>()V

    return-void
.end method

.method private a(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    :cond_2c
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/h/l/b$f;I)Landroid/graphics/Typeface;
    .registers 8

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0, p3, p4}, Lb/h/h/h;->a([Lb/h/l/b$f;I)Lb/h/l/b$f;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    :try_start_e
    invoke-virtual {p3}, Lb/h/l/b$f;->c()Landroid/net/Uri;

    move-result-object p3

    const-string v0, "r"

    invoke-virtual {p4, p3, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_55

    :try_start_18
    invoke-direct {p0, p2}, Lb/h/h/d;->a(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_2f

    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    move-result p4

    if-nez p4, :cond_25

    goto :goto_2f

    :cond_25
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_4c

    if-eqz p2, :cond_2e

    :try_start_2b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_55

    :cond_2e
    return-object p1

    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance p3, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_4c

    :try_start_38
    invoke-super {p0, p1, p3}, Lb/h/h/h;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_45

    :try_start_3c
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4c

    if-eqz p2, :cond_44

    :try_start_41
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_55

    :cond_44
    return-object p1

    :catchall_45
    move-exception p1

    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    :try_start_48
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4b

    :catchall_4b
    :try_start_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    :try_start_4d
    throw p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    if-eqz p2, :cond_54

    :try_start_51
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_54

    :catchall_54
    :cond_54
    :try_start_54
    throw p1
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    return-object v1
.end method
