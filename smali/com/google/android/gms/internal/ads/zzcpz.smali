###### Class com.google.android.gms.internal.ads.zzcpz (com.google.android.gms.internal.ads.zzcpz)
.class public final Lcom/google/android/gms/internal/ads/zzcpz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvp;->zzamx()Z

    move-result v0

    const-string v1, "render_in_browser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvp;->zzamy()Z

    move-result v0

    const-string v1, "disable_ml"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1a
    return-void
.end method
