###### Class com.google.android.gms.internal.ads.zzxk (com.google.android.gms.internal.ads.zzxk)
.class public final Lcom/google/android/gms/internal/ads/zzxk;
.super Lcom/google/android/gms/internal/ads/zzwl;
.source ""


# instance fields
.field private final description:Ljava/lang/String;

.field private final zzcfe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->description:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcfe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final zzov()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcfe:Ljava/lang/String;

    return-object v0
.end method
