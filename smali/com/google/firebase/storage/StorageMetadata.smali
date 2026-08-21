###### Class com.google.firebase.storage.StorageMetadata (com.google.firebase.storage.StorageMetadata)
.class public Lcom/google/firebase/storage/StorageMetadata;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageMetadata$Builder;,
        Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    }
.end annotation


# static fields
.field private static final BUCKET_KEY:Ljava/lang/String; = "bucket"

.field private static final CACHE_CONTROL:Ljava/lang/String; = "cacheControl"

.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "contentDisposition"

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "contentEncoding"

.field private static final CONTENT_LANGUAGE:Ljava/lang/String; = "contentLanguage"

.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "contentType"

.field private static final CUSTOM_METADATA_KEY:Ljava/lang/String; = "metadata"

.field private static final GENERATION_KEY:Ljava/lang/String; = "generation"

.field private static final MD5_HASH_KEY:Ljava/lang/String; = "md5Hash"

.field private static final META_GENERATION_KEY:Ljava/lang/String; = "metageneration"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final SIZE_KEY:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "StorageMetadata"

.field private static final TIME_CREATED_KEY:Ljava/lang/String; = "timeCreated"

.field private static final TIME_UPDATED_KEY:Ljava/lang/String; = "updated"


# instance fields
.field private mBucket:Ljava/lang/String;

.field private mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreationTime:Ljava/lang/String;

.field private mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGeneration:Ljava/lang/String;

.field private mMD5Hash:Ljava/lang/String;

.field private mMetadataGeneration:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mStorage:Lcom/google/firebase/storage/FirebaseStorage;

.field private mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private mUpdatedTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorage:Lcom/google/firebase/storage/FirebaseStorage;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mBucket:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mGeneration:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mMetadataGeneration:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCreationTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mUpdatedTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mMD5Hash:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/storage/StorageMetadata;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorage:Lcom/google/firebase/storage/FirebaseStorage;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mBucket:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mGeneration:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mMetadataGeneration:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCreationTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mUpdatedTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mMD5Hash:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mStorage:Lcom/google/firebase/storage/FirebaseStorage;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorage:Lcom/google/firebase/storage/FirebaseStorage;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mBucket:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mBucket:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    if-eqz p2, :cond_85

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->mMD5Hash:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->mMD5Hash:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mSize:J

    iput-wide v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mSize:J

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->mUpdatedTime:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->mUpdatedTime:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->mCreationTime:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->mCreationTime:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->mMetadataGeneration:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->mMetadataGeneration:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/storage/StorageMetadata;->mGeneration:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mGeneration:Ljava/lang/String;

    :cond_85
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/storage/StorageMetadata;ZLcom/google/firebase/storage/StorageMetadata$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageMetadata;-><init>(Lcom/google/firebase/storage/StorageMetadata;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageReference;)Lcom/google/firebase/storage/StorageReference;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mGeneration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mBucket:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mMetadataGeneration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mCreationTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mUpdatedTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/firebase/storage/StorageMetadata;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mSize:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mMD5Hash:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method createJSONObject()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "metadata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cacheControl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentDisposition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentEncoding"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentLanguage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getBucket()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCacheControl:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentDisposition:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentEncoding:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentLanguage:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mContentType:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimeMillis()J
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCreationTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/storage/internal/Util;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomMetadata(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCustomMetadataKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mCustomMetadata:Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mGeneration:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Hash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mMD5Hash:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadataGeneration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mMetadataGeneration:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public getReference()Lcom/google/firebase/storage/StorageReference;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorage:Lcom/google/firebase/storage/FirebaseStorage;

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_40

    :cond_1d
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "gs"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/firebase/storage/internal/Slashes;->preserveSlashEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1

    :cond_40
    :goto_40
    const/4 v0, 0x0

    return-object v0

    :cond_42
    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method public getSizeBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mSize:J

    return-wide v0
.end method

.method public getUpdatedTimeMillis()J
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mUpdatedTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/storage/internal/Util;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.google.firebase.storage.StorageMetadata.AnonymousClass1 (com.google.firebase.storage.StorageMetadata$1)
.class synthetic Lcom/google/firebase/storage/StorageMetadata$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.firebase.storage.StorageMetadata.Builder (com.google.firebase.storage.StorageMetadata$Builder)
.class public Lcom/google/firebase/storage/StorageMetadata$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mFromJSON:Z

.field mMetadata:Lcom/google/firebase/storage/StorageMetadata;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/storage/StorageMetadata;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/storage/StorageMetadata;-><init>(Lcom/google/firebase/storage/StorageMetadata;ZLcom/google/firebase/storage/StorageMetadata$1;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz p1, :cond_12

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->parseJSON(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mFromJSON:Z

    :cond_12
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1, p2}, Lcom/google/firebase/storage/StorageMetadata;->access$102(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageReference;)Lcom/google/firebase/storage/StorageReference;

    return-void
.end method

.method private extractString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseJSON(Lorg/json/JSONObject;)V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "generation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$202(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$302(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "bucket"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$402(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "metageneration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$502(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "timeCreated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$602(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "updated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$702(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/firebase/storage/StorageMetadata;->access$802(Lcom/google/firebase/storage/StorageMetadata;J)J

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "md5Hash"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$902(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    goto :goto_6e

    :cond_82
    const-string v0, "contentType"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->extractString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    :cond_8d
    const-string v0, "cacheControl"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->extractString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCacheControl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    :cond_98
    const-string v0, "contentDisposition"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->extractString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    :cond_a3
    const-string v0, "contentEncoding"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->extractString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentEncoding(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    :cond_ae
    const-string v0, "contentLanguage"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->extractString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b9

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentLanguage(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    :cond_b9
    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/storage/StorageMetadata;
    .registers 5

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    iget-boolean v2, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mFromJSON:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/storage/StorageMetadata;-><init>(Lcom/google/firebase/storage/StorageMetadata;ZLcom/google/firebase/storage/StorageMetadata$1;)V

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1300(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1200(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1100(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1000(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1500(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->access$1302(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->access$1202(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->access$1102(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method public setContentLanguage(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->access$1002(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->access$1502(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    return-object p0
.end method

.method public setCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1400(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->isUserProvided()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->access$1402(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$MetadataValue;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    :cond_1a
    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->access$1400(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

###### Class com.google.firebase.storage.StorageMetadata.MetadataValue (com.google.firebase.storage.StorageMetadata$MetadataValue)
.class Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final userProvided:Z

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->userProvided:Z

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->value:Ljava/lang/Object;

    return-void
.end method

.method static withDefaultValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method static withUserValue(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$MetadataValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/storage/StorageMetadata$MetadataValue<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method isUserProvided()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/storage/StorageMetadata$MetadataValue;->userProvided:Z

    return v0
.end method
