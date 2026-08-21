###### Class com.google.android.gms.internal.ads.zzbdk (com.google.android.gms.internal.ads.zzbdk)
.class public final Lcom/google/android/gms/internal/ads/zzbdk;
.super Landroid/content/MutableContextWrapper;
.source ""


# instance fields
.field private zzdvj:Landroid/app/Activity;

.field private zzehy:Landroid/content/Context;

.field private zzzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzehy:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzzc:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzdvj:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzehy:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzzc:Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzdvj:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzzc:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final zzxn()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzdvj:Landroid/app/Activity;

    return-object v0
.end method

.method public final zzzk()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzehy:Landroid/content/Context;

    return-object v0
.end method
