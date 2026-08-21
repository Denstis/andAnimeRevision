###### Class com.google.firebase.storage.ListResult (com.google.firebase.storage.ListResult)
.class public final Lcom/google/firebase/storage/ListResult;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ITEMS_KEY:Ljava/lang/String; = "items"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final PAGE_TOKEN_KEY:Ljava/lang/String; = "nextPageToken"

.field private static final PREFIXES_KEY:Ljava/lang/String; = "prefixes"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation
.end field

.field private final pageToken:Ljava/lang/String;

.field private final prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/ListResult;->prefixes:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/storage/ListResult;->items:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/storage/ListResult;->pageToken:Ljava/lang/String;

    return-void
.end method

.method static fromJSON(Lcom/google/firebase/storage/FirebaseStorage;Lorg/json/JSONObject;)Lcom/google/firebase/storage/ListResult;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "prefixes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3e

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_34
    invoke-virtual {p0, v5}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3e
    const-string v2, "items"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_4a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_64

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :cond_64
    const/4 p0, 0x0

    const-string v2, "nextPageToken"

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/firebase/storage/ListResult;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/firebase/storage/ListResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/ListResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/ListResult;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/ListResult;->prefixes:Ljava/util/List;

    return-object v0
.end method
