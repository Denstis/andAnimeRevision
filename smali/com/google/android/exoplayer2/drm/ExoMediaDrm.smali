###### Class com.google.android.exoplayer2.drm.ExoMediaDrm (com.google.android.exoplayer2.drm.ExoMediaDrm)
.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EVENT_KEY_EXPIRED:I = 0x3

.field public static final EVENT_KEY_REQUIRED:I = 0x2

.field public static final EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final KEY_TYPE_OFFLINE:I = 0x2

.field public static final KEY_TYPE_RELEASE:I = 0x3

.field public static final KEY_TYPE_STREAMING:I = 0x1


# virtual methods
.method public abstract closeSession([B)V
.end method

.method public abstract createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation
.end method

.method public abstract getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
.end method

.method public abstract provideKeyResponse([B[B)[B
.end method

.method public abstract provideProvisionResponse([B)V
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method

###### Class com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest (com.google.android.exoplayer2.drm.ExoMediaDrm$KeyRequest)
.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# instance fields
.field private final data:[B

.field private final licenseServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    return-object v0
.end method

.method public getLicenseServerUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.exoplayer2.drm.ExoMediaDrm.KeyStatus (com.google.android.exoplayer2.drm.ExoMediaDrm$KeyStatus)
.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation


# instance fields
.field private final keyId:[B

.field private final statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    return v0
.end method

###### Class com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener (com.google.android.exoplayer2.drm.ExoMediaDrm$OnEventListener)
.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEvent(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BII[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "+TT;>;[BII[B)V"
        }
    .end annotation
.end method

###### Class com.google.android.exoplayer2.drm.ExoMediaDrm.OnKeyStatusChangeListener (com.google.android.exoplayer2.drm.ExoMediaDrm$OnKeyStatusChangeListener)
.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onKeyStatusChange(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLjava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "+TT;>;[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation
.end method

###### Class com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest (com.google.android.exoplayer2.drm.ExoMediaDrm$ProvisionRequest)
.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionRequest"
.end annotation


# instance fields
.field private final data:[B

.field private final defaultUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-object v0
.end method
