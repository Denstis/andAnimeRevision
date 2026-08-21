###### Class com.google.android.gms.internal.ads.zzcse (com.google.android.gms.internal.ads.zzcse)
.class public final Lcom/google/android/gms/internal/ads/zzcse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcsb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzlk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcsb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcsd;-><init>(Lcom/google/android/gms/internal/ads/zzcse;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzamj()Lcom/google/android/gms/internal/ads/zzcsb;
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzlk:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzlk:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaul;->zzq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzlk:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    const/4 v6, 0x0

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v6

    move v9, v6

    move v6, v1

    move v1, v9

    goto :goto_46

    :cond_45
    const/4 v6, -0x1

    :goto_46
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_54

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    move v7, v1

    move v3, v6

    move v6, v0

    goto :goto_5c

    :cond_54
    move v7, v1

    move v3, v6

    const/4 v6, 0x0

    goto :goto_5c

    :cond_58
    const/4 v0, -0x2

    const/4 v3, -0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_5c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsb;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcsb;-><init>(Ljava/lang/String;IIIZI)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcsd (com.google.android.gms.internal.ads.zzcsd)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcsd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzggq:Lcom/google/android/gms/internal/ads/zzcse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcse;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzggq:Lcom/google/android/gms/internal/ads/zzcse;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzggq:Lcom/google/android/gms/internal/ads/zzcse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcse;->zzamj()Lcom/google/android/gms/internal/ads/zzcsb;

    move-result-object v0

    return-object v0
.end method
