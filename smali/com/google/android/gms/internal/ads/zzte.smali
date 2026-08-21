###### Class com.google.android.gms.internal.ads.zzte (com.google.android.gms.internal.ads.zzte)
.class final Lcom/google/android/gms/internal/ads/zzte;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrc;


# static fields
.field static final zzep:Lcom/google/android/gms/internal/ads/zzdrc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzte;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzte;->zzep:Lcom/google/android/gms/internal/ads/zzdrc;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(I)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsp$zzq$zza;->zzcd(I)Lcom/google/android/gms/internal/ads/zzsp$zzq$zza;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
