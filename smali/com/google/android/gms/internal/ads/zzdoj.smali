###### Class com.google.android.gms.internal.ads.zzdoj (com.google.android.gms.internal.ads.zzdoj)
.class public final Lcom/google/android/gms/internal/ads/zzdoj;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzhew:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoj;->zzhew:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static zzaxb()Ljava/security/SecureRandom;
    .registers 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method

.method static synthetic zzaxc()Ljava/security/SecureRandom;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdoj;->zzaxb()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static zzff(I)[B
    .registers 2

    new-array p0, p0, [B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoj;->zzhew:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
