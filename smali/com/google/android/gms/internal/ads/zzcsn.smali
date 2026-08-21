###### Class com.google.android.gms.internal.ads.zzcsn (com.google.android.gms.internal.ads.zzcsn)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcsn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# static fields
.field static final zzdos:Lcom/google/android/gms/internal/ads/zzdal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcsn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcsn;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsl;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
