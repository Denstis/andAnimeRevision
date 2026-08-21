###### Class com.google.android.gms.internal.ads.zzcrq (com.google.android.gms.internal.ads.zzcrq)
.class public final Lcom/google/android/gms/internal/ads/zzcrq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzggg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcuf;->zzggg:Z

    :goto_7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzggg:Z

    return-void

    :cond_a
    const/4 p1, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcrr<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzggg:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcrp;->zzggf:Lcom/google/android/gms/internal/ads/zzcrr;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method
