###### Class com.google.android.gms.internal.ads.zzaty (com.google.android.gms.internal.ads.zzaty)
.class public final Lcom/google/android/gms/internal/ads/zzaty;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzdrj:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdrk:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdrl:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdrm:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdrn:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzdro:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

.field private zzdrq:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdrr:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaui;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrk:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrn:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrr:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdro:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    return-void
.end method

.method private static zzam(Landroid/content/Context;)Z
    .registers 7

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzapv;->zzaa(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Translucent"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return v2

    :cond_1b
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v0, p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_37} :catch_38

    return v2

    :catch_38
    const-string p0, "Fail to fetch AdActivity theme"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zztx;J)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaui;->zzvf()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrk:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_3f

    sub-long v1, v3, v1

    sget-object v5, Lcom/google/android/gms/internal/ads/zzza;->zzcko:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_33

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    goto :goto_3b

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaui;->zzvg()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    :goto_3b
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrk:J

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrk:J

    :cond_3f
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrj:J

    const/4 p2, 0x1

    if-eqz p1, :cond_55

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zztx;->extras:Landroid/os/Bundle;

    if-eqz p3, :cond_55

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztx;->extras:Landroid/os/Bundle;

    const-string p3, "gw"

    const/4 v1, 0x2

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_55

    monitor-exit v0

    return-void

    :cond_55
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrl:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    if-nez p1, :cond_6d

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrn:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaui;->zzeu(J)V

    goto :goto_76

    :cond_6d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zzvh()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrn:J

    :goto_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception p1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public final zzo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdro:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrk:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrj:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "preqs"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrl:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preqs_in_session"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "time_in_session"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrn:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "pclick"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrq:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pimp"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrr:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "support_transparent_background"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaty;->zzam(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v0

    return-object v1

    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final zztx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrr:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final zzty()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrq:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
