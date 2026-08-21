###### Class com.google.android.gms.internal.ads.zzcyp (com.google.android.gms.internal.ads.zzcyp)
.class public final Lcom/google/android/gms/internal/ads/zzcyp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzblz:Ljava/lang/String;

.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private final zzcdr:Ljava/lang/String;

.field private final zzdix:Ljava/lang/String;

.field private final zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

.field private final zzfhu:Lcom/google/android/gms/internal/ads/zzcjf;

.field private final zzgmx:Lcom/google/android/gms/internal/ads/zzaxm;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzaxm;Lcom/google/android/gms/internal/ads/zzcjf;Lcom/google/android/gms/internal/ads/zzaxl;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwc;Lcom/google/android/gms/common/util/Clock;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyp;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzgmx:Lcom/google/android/gms/internal/ads/zzaxm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzfhu:Lcom/google/android/gms/internal/ads/zzcjf;

    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzblz:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzdix:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzcdr:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzlk:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzgj(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxc;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "fakeForAdDebugLog"

    :cond_e
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzcyp;->zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;ZLjava/util/List;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzapy;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzapy;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    :try_start_6
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzapy;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzapy;->getAmount()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_85

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    const-string v4, ""

    if-nez v3, :cond_1f

    move-object v3, v4

    goto :goto_25

    :cond_1f
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcwc;->zzdnz:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcyp;->zzgj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_25
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    if-nez v5, :cond_2a

    goto :goto_30

    :cond_2a
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzcwc;->zzdoa:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcyp;->zzgj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_30
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_34
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_userid@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_custom_data@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_tmstmp@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_itm@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "@gw_rwd_amt@"

    invoke-static {v5, v6, p4}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzblz:Ljava/lang/String;

    const-string v7, "@gw_sdkver@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzlk:Landroid/content/Context;

    iget-boolean v7, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdlr:Z

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzate;->zzd(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_82
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzi(Ljava/util/List;)V

    :catch_85
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;ZLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_a

    const-string p3, "1"

    goto :goto_c

    :cond_a
    const-string p3, "0"

    :goto_c
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_10
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    const-string v3, "@gw_adlocid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@gw_adnetrefresh@"

    invoke-static {v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzblz:Ljava/lang/String;

    const-string v3, "@gw_sdkver@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_58

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdce:Ljava/lang/String;

    const-string v3, "@gw_qdata@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzaex:Ljava/lang/String;

    const-string v3, "@gw_adnetid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdcu:Ljava/lang/String;

    const-string v3, "@gw_allocid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzlk:Landroid/content/Context;

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdlr:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzate;->zzd(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    :cond_58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzfhu:Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcjf;->zzakw()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_adnetstatus@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzdix:Ljava/lang/String;

    const-string v3, "@gw_seqnum@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzcdr:Ljava/lang/String;

    const-string v3, "@gw_sessid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_78
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcyp;->zzi(Ljava/util/List;)V

    return-void
.end method

.method public final zzei(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyp;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcys;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcys;-><init>(Lcom/google/android/gms/internal/ads/zzcyp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzgk(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyp;->zzgmx:Lcom/google/android/gms/internal/ads/zzaxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxm;->zzei(Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcyp;->zzei(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcys (com.google.android.gms.internal.ads.zzcys)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcys;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzgna:Lcom/google/android/gms/internal/ads/zzcyp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyp;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzgna:Lcom/google/android/gms/internal/ads/zzcyp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzgna:Lcom/google/android/gms/internal/ads/zzcyp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzcyz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyp;->zzgk(Ljava/lang/String;)V

    return-void
.end method
