###### Class com.google.android.gms.internal.ads.zzdsr (com.google.android.gms.internal.ads.zzdsr)
.class final Lcom/google/android/gms/internal/ads/zzdsr;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;


# instance fields
.field private final zzhnu:Lcom/google/android/gms/internal/ads/zzdsy;

.field private final zzhnv:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdsv<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnv:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnu:Lcom/google/android/gms/internal/ads/zzdsy;

    return-void
.end method

.method public static zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    return-object v0
.end method


# virtual methods
.method public final zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzdsv<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdsr;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdsv<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsv;

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnu:Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdsy;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzhnv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsv;

    if-eqz p1, :cond_28

    move-object v1, p1

    :cond_28
    return-object v1
.end method
