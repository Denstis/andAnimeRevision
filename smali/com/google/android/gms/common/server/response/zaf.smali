###### Class com.google.android.gms.common.server.response.zaf (com.google.android.gms.common.server.response.zaf)
.class final Lcom/google/android/gms/common/server/response/zaf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/server/response/FastParser$zaa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zah(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zae(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
