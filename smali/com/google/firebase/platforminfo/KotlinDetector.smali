###### Class com.google.firebase.platforminfo.KotlinDetector (com.google.firebase.platforminfo.KotlinDetector)
.class public final Lcom/google/firebase/platforminfo/KotlinDetector;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectVersion()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget-object v0, Lg/e;->f:Lg/e;

    invoke-virtual {v0}, Lg/e;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
