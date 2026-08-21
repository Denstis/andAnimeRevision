###### Class com.google.android.gms.internal.ads.zzchd (com.google.android.gms.internal.ads.zzchd)
.class public final Lcom/google/android/gms/internal/ads/zzchd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcga<",
        "Lcom/google/android/gms/internal/ads/zzbrs;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

.field private final zzfbx:Ljava/util/concurrent/Executor;

.field private final zzfxy:Lcom/google/android/gms/internal/ads/zzbso;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbso;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzlk:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzfxy:Lcom/google/android/gms/internal/ads/zzbso;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzfbx:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzcvr;)Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjh:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final synthetic zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 12

    :try_start_0
    new-instance p4, Lb/c/b/a$a;

    invoke-direct {p4}, Lb/c/b/a$a;-><init>()V

    invoke-virtual {p4}, Lb/c/b/a$a;->a()Lb/c/b/a;

    move-result-object p4

    iget-object v0, p4, Lb/c/b/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object p1, p4, Lb/c/b/a;->a:Landroid/content/Intent;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Intent;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzfxy:Lcom/google/android/gms/internal/ads/zzbso;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbla;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbla;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbrx;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzchf;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzchf;-><init>(Lcom/google/android/gms/internal/ads/zzaxv;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzbrx;-><init>(Lcom/google/android/gms/internal/ads/zzbsu;)V

    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzbso;->zza(Lcom/google/android/gms/internal/ads/zzbla;Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbru;->zzadi()Lcom/google/android/gms/internal/ads/zzboo;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaxl;

    const/4 p4, 0x0

    invoke-direct {v6, p4, p4, p4}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(IIZ)V

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaxl;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvp;->zzud()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbru;->zzadh()Lcom/google/android/gms/internal/ads/zzbrs;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_53

    return-object p1

    :catchall_53
    move-exception p1

    const-string p2, "Error in CustomTabsAdRenderer"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Z
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzlk:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwichMR1()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzlk:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzk(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzchd;->zzc(Lcom/google/android/gms/internal/ads/zzcvr;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbrs;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzchd;->zzc(Lcom/google/android/gms/internal/ads/zzcvr;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzchc;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Lcom/google/android/gms/internal/ads/zzchd;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->zzfbx:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzchc (com.google.android.gms.internal.ads.zzchc)
.class final synthetic Lcom/google/android/gms/internal/ads/zzchc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzfxu:Lcom/google/android/gms/internal/ads/zzchd;

.field private final zzfxv:Landroid/net/Uri;

.field private final zzfxw:Lcom/google/android/gms/internal/ads/zzcvz;

.field private final zzfxx:Lcom/google/android/gms/internal/ads/zzcvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchd;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxu:Lcom/google/android/gms/internal/ads/zzchd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxv:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxw:Lcom/google/android/gms/internal/ads/zzcvz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxx:Lcom/google/android/gms/internal/ads/zzcvr;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxu:Lcom/google/android/gms/internal/ads/zzchd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxv:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxw:Lcom/google/android/gms/internal/ads/zzcvz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfxx:Lcom/google/android/gms/internal/ads/zzcvr;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzchd;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzchf (com.google.android.gms.internal.ads.zzchf)
.class final synthetic Lcom/google/android/gms/internal/ads/zzchf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsu;


# instance fields
.field private final zzbrt:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzbrt:Lcom/google/android/gms/internal/ads/zzaxv;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzbrt:Lcom/google/android/gms/internal/ads/zzaxv;

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzki()Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
