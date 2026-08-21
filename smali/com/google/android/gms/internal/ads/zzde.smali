###### Class com.google.android.gms.internal.ads.zzde (com.google.android.gms.internal.ads.zzde)
.class public Lcom/google/android/gms/internal/ads/zzde;
.super Lcom/google/android/gms/internal/ads/zzdd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "zzde"


# instance fields
.field private zzwt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzci;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzde;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzde;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzde;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzdx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;Lcom/google/android/gms/internal/ads/zzbk$zza;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdx;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;",
            "Lcom/google/android/gms/internal/ads/zzbk$zza;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzce()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    if-nez p4, :cond_c

    return-object p2

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzbz()I

    move-result v5

    new-instance p4, Lcom/google/android/gms/internal/ads/zzet;

    const/16 v6, 0x18

    const-string v2, "1ZdlqvbjLHrlsj3y/9QBfBegKjUOs/o1A88UhYHQ4Jmy6BR/w0ghZ+Zr+YvoOH1m"

    const-string v3, "dIiWdqkuIrENjYXIlbMEe8d+ulqMtIBUuOR2KqmaBXc="

    move-object v0, p4

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzde;->zzwt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-void
.end method

.method protected final zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzdx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;Lcom/google/android/gms/internal/ads/zzbk$zza;)V
    .registers 6

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzdx;->zzyb:Z

    if-eqz v0, :cond_2b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzde;->zzwt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_27

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzee;->zzas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbo$zza$zzc;->zzhy:Lcom/google/android/gms/internal/ads/zzbo$zza$zzc;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzbo$zza$zzc;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzde;->zzwt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzb(Z)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    :cond_27
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzde;->zzwt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-void

    :cond_2b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzde;->zza(Lcom/google/android/gms/internal/ads/zzdx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;Lcom/google/android/gms/internal/ads/zzbk$zza;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Ljava/util/List;)V

    :cond_32
    return-void
.end method
