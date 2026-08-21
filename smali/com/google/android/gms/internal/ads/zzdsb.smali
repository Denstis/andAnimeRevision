###### Class com.google.android.gms.internal.ads.zzdsb (com.google.android.gms.internal.ads.zzdsb)
.class final Lcom/google/android/gms/internal/ads/zzdsb;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzhmx:Lcom/google/android/gms/internal/ads/zzdrz;

.field private static final zzhmy:Lcom/google/android/gms/internal/ads/zzdrz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsb;->zzbax()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhmx:Lcom/google/android/gms/internal/ads/zzdrz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhmy:Lcom/google/android/gms/internal/ads/zzdrz;

    return-void
.end method

.method static zzbav()Lcom/google/android/gms/internal/ads/zzdrz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhmx:Lcom/google/android/gms/internal/ads/zzdrz;

    return-object v0
.end method

.method static zzbaw()Lcom/google/android/gms/internal/ads/zzdrz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhmy:Lcom/google/android/gms/internal/ads/zzdrz;

    return-object v0
.end method

.method private static zzbax()Lcom/google/android/gms/internal/ads/zzdrz;
    .registers 3

    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

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

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrz;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method
