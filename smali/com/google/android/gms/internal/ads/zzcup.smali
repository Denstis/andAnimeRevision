###### Class com.google.android.gms.internal.ads.zzcup (com.google.android.gms.internal.ads.zzcup)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# static fields
.field static final zzghu:Lcom/google/android/gms/internal/ads/zzcva;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcup;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcup;->zzghu:Lcom/google/android/gms/internal/ads/zzcva;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/reward/AdMetadataListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    return-void
.end method
