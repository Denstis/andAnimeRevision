###### Class com.google.android.gms.internal.ads.zzdav (com.google.android.gms.internal.ads.zzdav)
.class public final Lcom/google/android/gms/internal/ads/zzdav;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzgov:Ljava/lang/Object;

.field private static final zzgow:Ljava/lang/reflect/Method;

.field private static final zzgox:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdav;->zzaog()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdav;->zzgov:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_1e

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const-string v2, "getStackTraceElement"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzdav;->zza(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_1e
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdav;->zzgow:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdav;->zzgov:Ljava/lang/Object;

    if-nez v0, :cond_25

    goto :goto_29

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdav;->zzaoh()Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_29
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdav;->zzgox:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static varargs zza(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.JavaLangAccess"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_c} :catch_e
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return-object p0

    :catchall_d
    return-object v0

    :catch_e
    move-exception p0

    throw p0
.end method

.method private static zzaog()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.SharedSecrets"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getJavaLangAccess"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_16} :catch_17
    .catchall {:try_start_1 .. :try_end_16} :catchall_16

    :catchall_16
    return-object v0

    :catch_17
    move-exception v0

    throw v0
.end method

.method private static zzaoh()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "getStackTraceDepth"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzdav;->zza(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v0

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdav;->zzaog()Ljava/lang/Object;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    return-object v0
.end method

.method public static zzf(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_c

    return-void

    :cond_c
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_f
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static zzg(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdav;->zzf(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
