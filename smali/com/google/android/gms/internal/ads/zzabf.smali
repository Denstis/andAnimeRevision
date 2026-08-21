###### Class com.google.android.gms.internal.ads.zzabf (com.google.android.gms.internal.ads.zzabf)
.class public final Lcom/google/android/gms/internal/ads/zzabf;
.super Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
.source ""


# instance fields
.field private zzazq:Ljava/lang/String;

.field private final zzcvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcwc:Lcom/google/android/gms/internal/ads/zzaba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaba;)V
    .registers 6

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcvs:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcwc:Lcom/google/android/gms/internal/ads/zzaba;

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcwc:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaba;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzazq:Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzazq:Ljava/lang/String;

    :goto_1d
    :try_start_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzqe()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_4a

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_4a

    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzabi;

    if-eqz v3, :cond_44

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabi;

    goto :goto_4b

    :cond_44
    new-instance v2, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Landroid/os/IBinder;)V

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    if-eqz v2, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcvs:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_57} :catch_59

    goto :goto_25

    :cond_58
    return-void

    :catch_59
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcvs:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzazq:Ljava/lang/String;

    return-object v0
.end method
