###### Class com.google.android.gms.internal.ads.zzcoy (com.google.android.gms.internal.ads.zzcoy)
.class public final Lcom/google/android/gms/internal/ads/zzcoy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcov;",
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zzlk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcov;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcox;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcox;-><init>(Lcom/google/android/gms/internal/ads/zzcoy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzaly()Lcom/google/android/gms/internal/ads/zzcov;
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zzlk:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzko()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzos()F

    move-result v8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzko()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzot()Z

    move-result v9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcov;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzcov;-><init>(IZZIIIFZ)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcox (com.google.android.gms.internal.ads.zzcox)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgev:Lcom/google/android/gms/internal/ads/zzcoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcoy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzgev:Lcom/google/android/gms/internal/ads/zzcoy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzgev:Lcom/google/android/gms/internal/ads/zzcoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoy;->zzaly()Lcom/google/android/gms/internal/ads/zzcov;

    move-result-object v0

    return-object v0
.end method
