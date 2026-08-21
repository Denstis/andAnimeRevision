###### Class com.google.android.gms.internal.ads.zzbwk (com.google.android.gms.internal.ads.zzbwk)
.class final Lcom/google/android/gms/internal/ads/zzbwk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "Lcom/google/android/gms/internal/ads/zzo;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfnw:D

.field private final synthetic zzfnx:Z

.field private final synthetic zzfny:Lcom/google/android/gms/internal/ads/zzbwl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwl;DZ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwk;->zzfny:Lcom/google/android/gms/internal/ads/zzbwl;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbwk;->zzfnw:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbwk;->zzfnx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwk;->zzfny:Lcom/google/android/gms/internal/ads/zzbwl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzo;->data:[B

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbwk;->zzfnw:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbwk;->zzfnx:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbwl;->zza(Lcom/google/android/gms/internal/ads/zzbwl;[BDZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
