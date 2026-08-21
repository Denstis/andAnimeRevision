###### Class com.google.android.gms.internal.ads.zzub (com.google.android.gms.internal.ads.zzub)
.class final synthetic Lcom/google/android/gms/internal/ads/zzub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final zzcct:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzub;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzub;->zzcct:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzty;->zzf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
