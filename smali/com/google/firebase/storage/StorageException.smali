###### Class com.google.firebase.storage.StorageException (com.google.firebase.storage.StorageException)
.class public Lcom/google/firebase/storage/StorageException;
.super Lcom/google/firebase/FirebaseException;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageException$ErrorCode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ERROR_BUCKET_NOT_FOUND:I = -0x32d3

.field public static final ERROR_CANCELED:I = -0x32f0

.field public static final ERROR_INVALID_CHECKSUM:I = -0x32e7

.field public static final ERROR_NOT_AUTHENTICATED:I = -0x32dc

.field public static final ERROR_NOT_AUTHORIZED:I = -0x32dd

.field public static final ERROR_OBJECT_NOT_FOUND:I = -0x32d2

.field public static final ERROR_PROJECT_NOT_FOUND:I = -0x32d4

.field public static final ERROR_QUOTA_EXCEEDED:I = -0x32d5

.field public static final ERROR_RETRY_LIMIT_EXCEEDED:I = -0x32e6

.field public static final ERROR_UNKNOWN:I = -0x32c8

.field private static final NETWORK_UNAVAILABLE:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageException"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final errorCode:I

.field private final httpResultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/firebase/storage/StorageException;

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;I)V
    .registers 5

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->getErrorMessageForCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    iput p1, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    iput p3, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StorageException has occurred.\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->getErrorMessageForCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n Code: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " HttpResult: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageException"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    invoke-static {p2, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    return-void
.end method

.method private static calculateErrorCode(Lcom/google/android/gms/common/api/Status;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x32f0

    return p0

    :cond_9
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, -0x32e6

    return p0

    :cond_14
    const/16 p0, -0x32c8

    return p0
.end method

.method private static calculateErrorCode(Ljava/lang/Throwable;I)I
    .registers 2

    instance-of p0, p0, Lcom/google/firebase/storage/CancelException;

    if-eqz p0, :cond_7

    const/16 p0, -0x32f0

    return p0

    :cond_7
    const/4 p0, -0x2

    if-eq p1, p0, :cond_29

    const/16 p0, 0x191

    if-eq p1, p0, :cond_26

    const/16 p0, 0x199

    if-eq p1, p0, :cond_23

    const/16 p0, 0x193

    if-eq p1, p0, :cond_20

    const/16 p0, 0x194

    if-eq p1, p0, :cond_1d

    const/16 p0, -0x32c8

    return p0

    :cond_1d
    const/16 p0, -0x32d2

    return p0

    :cond_20
    const/16 p0, -0x32dd

    return p0

    :cond_23
    const/16 p0, -0x32e7

    return p0

    :cond_26
    const/16 p0, -0x32dc

    return p0

    :cond_29
    const/16 p0, -0x32e6

    return p0
.end method

.method public static fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageException;->calculateErrorCode(Lcom/google/android/gms/common/api/Status;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object p0

    return-object p0
.end method

.method public static fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;
    .registers 4

    instance-of v0, p0, Lcom/google/firebase/storage/StorageException;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/firebase/storage/StorageException;

    return-object p0

    :cond_7
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->isResultSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-static {p0, p1}, Lcom/google/firebase/storage/StorageException;->calculateErrorCode(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method static getErrorMessageForCode(I)Ljava/lang/String;
    .registers 3

    const/16 v0, -0x32f0

    if-eq p0, v0, :cond_37

    const/16 v0, -0x32c8

    const-string v1, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    if-eq p0, v0, :cond_36

    const/16 v0, -0x32e7

    if-eq p0, v0, :cond_33

    const/16 v0, -0x32e6

    if-eq p0, v0, :cond_30

    const/16 v0, -0x32dd

    if-eq p0, v0, :cond_2d

    const/16 v0, -0x32dc

    if-eq p0, v0, :cond_2a

    packed-switch p0, :pswitch_data_3a

    return-object v1

    :pswitch_1e
    const-string p0, "Object does not exist at location."

    return-object p0

    :pswitch_21
    const-string p0, "Bucket does not exist."

    return-object p0

    :pswitch_24
    const-string p0, "Project does not exist."

    return-object p0

    :pswitch_27
    const-string p0, "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage."

    return-object p0

    :cond_2a
    const-string p0, "User is not authenticated, please authenticate using Firebase Authentication and try again."

    return-object p0

    :cond_2d
    const-string p0, "User does not have permission to access this object."

    return-object p0

    :cond_30
    const-string p0, "The operation retry limit has been exceeded."

    return-object p0

    :cond_33
    const-string p0, "Object has a checksum which does not match. Please retry the operation."

    return-object p0

    :cond_36
    return-object v1

    :cond_37
    const-string p0, "The operation was cancelled."

    return-object p0

    :pswitch_data_3a
    .packed-switch -0x32d5
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method private static isResultSuccess(I)Z
    .registers 2

    if-eqz p0, :cond_d

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_b

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-ne v0, p0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    return v0
.end method

.method public getHttpResultCode()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    return v0
.end method

.method public getIsRecoverableException()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x32e6

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

###### Class com.google.firebase.storage.StorageException.ErrorCode (com.google.firebase.storage.StorageException$ErrorCode)
.class public interface abstract annotation Lcom/google/firebase/storage/StorageException$ErrorCode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ErrorCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
