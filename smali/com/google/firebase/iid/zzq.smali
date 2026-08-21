###### Class com.google.firebase.iid.zzq (com.google.firebase.iid.zzq)
.class final Lcom/google/firebase/iid/zzq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzs;Z)Lcom/google/firebase/iid/zzs;
    .registers 13

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "Writing ID to properties file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p3}, Lcom/google/firebase/iid/zzs;->zza()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/firebase/iid/zzs;->zza(Lcom/google/firebase/iid/zzs;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cre"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzq;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_2e
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_a9

    :try_start_38
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_a2

    :try_start_3c
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_86

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_99

    cmp-long p4, v6, v4

    if-lez p4, :cond_86

    :try_start_4b
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzs;

    move-result-object p3
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_52} :catch_5d
    .catch Lcom/google/firebase/iid/zzt; {:try_start_4b .. :try_end_52} :catch_5b
    .catchall {:try_start_4b .. :try_end_52} :catchall_99

    if-eqz p1, :cond_57

    :try_start_54
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_a2

    :cond_57
    :try_start_57
    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_a9

    return-object p3

    :catch_5b
    move-exception p4

    goto :goto_5e

    :catch_5d
    move-exception p4

    :goto_5e
    :try_start_5e
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Tried reading ID before writing new one, but failed with: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {v2, p4, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_5e .. :try_end_90} :catchall_99

    if-eqz p1, :cond_95

    :try_start_92
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_a2

    :cond_95
    :try_start_95
    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a9

    return-object p3

    :catchall_99
    move-exception p3

    :try_start_9a
    throw p3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p4

    if-eqz p1, :cond_a1

    :try_start_9e
    invoke-static {p3, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_a1
    throw p4
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p1

    :try_start_a3
    throw p1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p3

    :try_start_a5
    invoke-static {p1, v3}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V

    throw p3
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed to write key: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;
    .registers 6

    invoke-static {p0, p1}, Lcom/google/firebase/iid/zzq;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    const-string v2, "|P|"

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object v3

    :cond_1e
    invoke-static {p0}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/zzai;->zza(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    :cond_26
    new-instance p0, Lcom/google/firebase/iid/zzs;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/String;J)V

    return-object p0
.end method

.method private final zza(Ljava/io/File;)Lcom/google/firebase/iid/zzs;
    .registers 9

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2c

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    move-object v1, p1

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    invoke-static {p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzs;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_23

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    :try_start_1c
    invoke-static {v2, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2c

    :cond_1f
    invoke-static {v2, v0}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    return-object v1

    :catchall_23
    move-exception v1

    :try_start_24
    throw v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    if-eqz p1, :cond_2b

    :try_start_28
    invoke-static {v1, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_2b
    throw v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v1

    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    throw v1
.end method

.method private static zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzs;
    .registers 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :try_start_c
    const-string p0, "cre"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_16} :catch_3d

    const-string p0, "id"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_37

    const-string p0, "pub"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-static {p0}, Lcom/google/firebase/iid/zzq;->zza(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/zzai;->zza(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_2f
    new-instance p0, Lcom/google/firebase/iid/zzt;

    const-string v0, "Invalid properties file"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    new-instance v0, Lcom/google/firebase/iid/zzs;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/String;J)V

    return-object v0

    :catch_3d
    move-exception p0

    new-instance v0, Lcom/google/firebase/iid/zzt;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private static zza(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    const/16 v0, 0x8

    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_43

    :try_start_6
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_15
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6 .. :try_end_15} :catch_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_19

    :catch_18
    move-exception p0

    :goto_19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid key stored "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/firebase/iid/zzt;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_43
    move-exception p0

    new-instance v0, Lcom/google/firebase/iid/zzt;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static zza(Landroid/content/Context;)V
    .registers 6

    invoke-static {p0}, Lcom/google/firebase/iid/zzq;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.InstanceId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzs;)V
    .registers 6

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    :try_start_7
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/iid/zzs;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Lcom/google/firebase/iid/zzt; {:try_start_7 .. :try_end_f} :catch_12

    if-eqz v0, :cond_13

    return-void

    :catch_12
    nop

    :cond_13
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Writing key to shared preferences"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/firebase/iid/zzs;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cre"

    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/iid/zzs;->zza(Lcom/google/firebase/iid/zzs;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzm;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzm;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzm;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method private static zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .registers 3

    const-string v0, "cre"

    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    :try_start_d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return-wide p0

    :catch_12
    :cond_12
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Landroidx/core/content/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "FirebaseInstanceId"

    const-string v1, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzq;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzs;)V
    :try_end_a
    .catch Lcom/google/firebase/iid/zzt; {:try_start_1 .. :try_end_a} :catch_d

    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    :try_start_e
    const-string v2, "com.google.android.gms.appid"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzs;Z)Lcom/google/firebase/iid/zzs;
    :try_end_1e
    .catch Lcom/google/firebase/iid/zzt; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception p1

    move-object v1, p1

    :cond_21
    if-nez v1, :cond_24

    return-object v0

    :cond_24
    throw v1
.end method

.method private final zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;
    .registers 6

    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzq;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzs;

    move-result-object p1
    :try_end_10
    .catch Lcom/google/firebase/iid/zzt; {:try_start_c .. :try_end_10} :catch_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p2

    goto :goto_14

    :catch_13
    move-exception p2

    :goto_14
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to read ID from file, retrying: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzq;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzs;

    move-result-object p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "IID file exists, but failed to read from it: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/firebase/iid/zzt;

    invoke-direct {p2, p1}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "com.google.InstanceId.properties"

    goto :goto_35

    :cond_9
    :try_start_9
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "com.google.InstanceId_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".properties"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_35} :catch_3f

    :goto_35
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/firebase/iid/zzq;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catch_3f
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method final zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzq;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzq;->zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;
    .registers 8

    invoke-static {}, Lcom/google/firebase/iid/zzb;->zza()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/zzai;->zza(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzs;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/String;J)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzs;Z)Lcom/google/firebase/iid/zzs;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "FirebaseInstanceId"

    if-eqz v0, :cond_31

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzs;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "Loaded key after generating new one, using loaded one"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-object v0

    :cond_31
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "Generated new key"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzs;)V

    return-object v1
.end method
