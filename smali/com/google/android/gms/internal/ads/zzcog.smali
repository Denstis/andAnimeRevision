###### Class com.google.android.gms.internal.ads.zzcog (com.google.android.gms.internal.ads.zzcog)
.class public final Lcom/google/android/gms/internal/ads/zzcog;
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
.field private final zzgej:Lcom/google/android/gms/internal/ads/zzuf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzgej:Lcom/google/android/gms/internal/ads/zzuf;

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzgej:Lcom/google/android/gms/internal/ads/zzuf;

    if-eqz v0, :cond_1b

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuf;->orientation:I

    const/4 v1, 0x1

    const-string v2, "avo"

    if-ne v0, v1, :cond_13

    const-string v0, "p"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const-string v0, "l"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
