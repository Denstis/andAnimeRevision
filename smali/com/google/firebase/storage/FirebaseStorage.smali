###### Class com.google.firebase.storage.FirebaseStorage (com.google.firebase.storage.FirebaseStorage)
.class public Lcom/google/firebase/storage/FirebaseStorage;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final STORAGE_BUCKET_WITH_PATH_EXCEPTION:Ljava/lang/String; = "The storage Uri cannot contain a path element."

.field private static final STORAGE_URI_PARSE_EXCEPTION:Ljava/lang/String; = "The storage Uri could not be parsed."

.field private static final TAG:Ljava/lang/String; = "FirebaseStorage"


# instance fields
.field private final mApp:Lcom/google/firebase/FirebaseApp;

.field private final mAuthProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mBucketName:Ljava/lang/String;

.field private sMaxDownloadRetry:J

.field private sMaxQueryRetry:J

.field private sMaxUploadRetry:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxUploadRetry:J

    iput-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxDownloadRetry:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxQueryRetry:J

    iput-object p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->mBucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/FirebaseStorage;->mApp:Lcom/google/firebase/FirebaseApp;

    iput-object p3, p0, Lcom/google/firebase/storage/FirebaseStorage;->mAuthProvider:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method private getBucketName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/google/firebase/storage/FirebaseStorage;
    .registers 3

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "You must call FirebaseApp.initialize() first."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;
    .registers 4

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Null is not a valid value for the FirebaseApp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getStorageBucket()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p0

    return-object p0

    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gs://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getStorageBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/storage/internal/Util;->normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p0
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse bucket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseStorage"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The storage Uri could not be parsed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Null is not a valid value for the FirebaseApp."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Null is not a valid value for the Firebase Storage URL."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_21
    invoke-static {p0, p1}, Lcom/google/firebase/storage/internal/Util;->normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p0
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseStorage"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The storage Uri could not be parsed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please use a gs:// URL for your Firebase Storage bucket."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;
    .registers 4

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "You must call FirebaseApp.initialize() first."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p0

    return-object p0
.end method

.method private static getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_1d

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The storage Uri cannot contain a path element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    const-string p1, "Provided FirebaseApp must not be null."

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/google/firebase/storage/FirebaseStorageComponent;

    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/storage/FirebaseStorageComponent;

    const-string p1, "Firebase Storage component is not present."

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/FirebaseStorageComponent;->get(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p0

    return-object p0
.end method

.method private getReference(Landroid/net/Uri;)Lcom/google/firebase/storage/StorageReference;
    .registers 4

    const-string v0, "uri must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    const-string v1, "The supplied bucketname does not match the storage bucket of the current instance."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v0
.end method


# virtual methods
.method public getApp()Lcom/google/firebase/FirebaseApp;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mApp:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mAuthProvider:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getMaxDownloadRetryTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxDownloadRetry:J

    return-wide v0
.end method

.method public getMaxOperationRetryTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxQueryRetry:J

    return-wide v0
.end method

.method public getMaxUploadRetryTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxUploadRetry:J

    return-wide v0
.end method

.method public getReference()Lcom/google/firebase/storage/StorageReference;
    .registers 3

    invoke-direct {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "gs"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Landroid/net/Uri;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FirebaseApp was not initialized with a bucket name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "location must not be null or empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    return-object p1

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "location should not be a full URL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReferenceFromUrl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "location must not be null or empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "The storage Uri could not be parsed."

    if-nez v1, :cond_30

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    :goto_30
    :try_start_30
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/internal/Util;->normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-direct {p0, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Landroid/net/Uri;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    return-object p1

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse location:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FirebaseStorage"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDownloadRetryTimeMillis(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxDownloadRetry:J

    return-void
.end method

.method public setMaxOperationRetryTimeMillis(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxQueryRetry:J

    return-void
.end method

.method public setMaxUploadRetryTimeMillis(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxUploadRetry:J

    return-void
.end method
