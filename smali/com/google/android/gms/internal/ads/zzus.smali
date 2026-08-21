###### Class com.google.android.gms.internal.ads.zzus (com.google.android.gms.internal.ads.zzus)
.class abstract Lcom/google/android/gms/internal/ads/zzus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzcdm:Lcom/google/android/gms/internal/ads/zzvu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzus;->zzog()Lcom/google/android/gms/internal/ads/zzvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzus;->zzcdm:Lcom/google/android/gms/internal/ads/zzvu;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzog()Lcom/google/android/gms/internal/ads/zzvu;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_24

    const-string v1, "ClientApi class is not an instance of IBinder."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-object v0

    :cond_24
    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_29

    return-object v0

    :cond_29
    const-string v2, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzvu;

    if-eqz v3, :cond_36

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvu;

    return-object v2

    :cond_36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    return-object v2

    :catch_3c
    const-string v1, "Failed to instantiate ClientApi class."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzoh()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzus;->zzcdm:Lcom/google/android/gms/internal/ads/zzvu;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "ClientApi class cannot be loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-object v1

    :cond_b
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzus;->zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const-string v2, "Cannot invoke local loader using ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final zzoi()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzus;->zzof()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "Cannot invoke remote loader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvu;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzd(Landroid/content/Context;Z)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_7

    :cond_6
    const/4 p2, 0x1

    :goto_7
    if-nez p2, :cond_1b

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    const v2, 0xbdfcb8

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzawy;->zzc(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string p2, "Google Play Services is not available."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_1b
    const-string v2, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-le v3, v2, :cond_28

    const/4 p2, 0x1

    :cond_28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzcqr:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 p2, 0x0

    :cond_3e
    if-eqz p2, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;->zzoh()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;->zzoi()Ljava/lang/Object;

    move-result-object p1

    goto :goto_9d

    :cond_4b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;->zzoi()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    if-eqz v2, :cond_95

    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zzcta:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoq()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_71

    const/4 v0, 0x1

    :cond_71
    if-eqz v0, :cond_95

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "dynamite_load"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_missing"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzop()Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v6, "gmob-apps"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    :cond_95
    if-nez p2, :cond_9c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;->zzoh()Ljava/lang/Object;

    move-result-object p1

    goto :goto_9d

    :cond_9c
    move-object p1, p2

    :cond_9d
    :goto_9d
    if-nez p1, :cond_a3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzus;->zzoe()Ljava/lang/Object;

    move-result-object p1

    :cond_a3
    return-object p1
.end method

.method protected abstract zzoe()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract zzof()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
