###### Class com.google.android.gms.internal.ads.zzclp (com.google.android.gms.internal.ads.zzclp)
.class public final Lcom/google/android/gms/internal/ads/zzclp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

.field private final zzgbf:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzamd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzgbf:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

    return-void
.end method


# virtual methods
.method public final zzgb(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchm;->zzdd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzgbf:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Couldn\'t create RTB adapter : "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzgc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzgbf:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzgbf:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzamd;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method
