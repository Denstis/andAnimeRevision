###### Class com.google.firebase.storage.network.connection.HttpURLConnectionFactoryImpl (com.google.firebase.storage.network.connection.HttpURLConnectionFactoryImpl)
.class public Lcom/google/firebase/storage/network/connection/HttpURLConnectionFactoryImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/storage/network/connection/HttpURLConnectionFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method
