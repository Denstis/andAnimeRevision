###### Class com.google.android.gms.internal.ads.zzcef (com.google.android.gms.internal.ads.zzcef)
.class public final Lcom/google/android/gms/internal/ads/zzcef;
.super Lcom/google/android/gms/internal/ads/zzaox;
.source ""


# instance fields
.field private final synthetic zzfvc:Lcom/google/android/gms/internal/ads/zzcec;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcec;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzfvc:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaox;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzavq;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzfvc:Lcom/google/android/gms/internal/ads/zzcec;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavp;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzavq;->zzdtw:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzavq;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzavp;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzfvc:Lcom/google/android/gms/internal/ads/zzcec;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    return-void
.end method
