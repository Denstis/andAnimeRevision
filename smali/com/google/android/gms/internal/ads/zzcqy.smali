###### Class com.google.android.gms.internal.ads.zzcqy (com.google.android.gms.internal.ads.zzcqy)
.class public final Lcom/google/android/gms/internal/ads/zzcqy;
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
.field private final zzfgt:Ljava/lang/String;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzfgt:Ljava/lang/String;

    return-void
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzfgt:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqx;-><init>(Lcom/google/android/gms/internal/ads/zzcqy;)V

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzo(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzlk:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rewarded_sku_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcqx (com.google.android.gms.internal.ads.zzcqx)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcqx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# instance fields
.field private final zzgfq:Lcom/google/android/gms/internal/ads/zzcqy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqx;->zzgfq:Lcom/google/android/gms/internal/ads/zzcqy;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqx;->zzgfq:Lcom/google/android/gms/internal/ads/zzcqy;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqy;->zzo(Landroid/os/Bundle;)V

    return-void
.end method
