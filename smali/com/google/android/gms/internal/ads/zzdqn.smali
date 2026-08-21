###### Class com.google.android.gms.internal.ads.zzdqn (com.google.android.gms.internal.ads.zzdqn)
.class final Lcom/google/android/gms/internal/ads/zzdqn;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzhht:Lcom/google/android/gms/internal/ads/zzdql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzhhu:Lcom/google/android/gms/internal/ads/zzdql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhht:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqn;->zzaze()Lcom/google/android/gms/internal/ads/zzdql;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhhu:Lcom/google/android/gms/internal/ads/zzdql;

    return-void
.end method

.method private static zzaze()Lcom/google/android/gms/internal/ads/zzdql;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation

    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdql;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzazf()Lcom/google/android/gms/internal/ads/zzdql;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhht:Lcom/google/android/gms/internal/ads/zzdql;

    return-object v0
.end method

.method static zzazg()Lcom/google/android/gms/internal/ads/zzdql;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhhu:Lcom/google/android/gms/internal/ads/zzdql;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
