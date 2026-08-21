###### Class com.google.android.gms.internal.ads.zzcfs (com.google.android.gms.internal.ads.zzcfs)
.class final Lcom/google/android/gms/internal/ads/zzcfs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfwo:Z

.field final synthetic zzfwp:Lcom/google/android/gms/internal/ads/zzcft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcft;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwp:Lcom/google/android/gms/internal/ads/zzcft;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 9

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwp:Lcom/google/android/gms/internal/ads/zzcft;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Lcom/google/android/gms/internal/ads/zzcft;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwp:Lcom/google/android/gms/internal/ads/zzcft;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcft;->zzb(Lcom/google/android/gms/internal/ads/zzcft;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwp:Lcom/google/android/gms/internal/ads/zzcft;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcft;->zzc(Lcom/google/android/gms/internal/ads/zzcft;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzh;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwp:Lcom/google/android/gms/internal/ads/zzcft;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Lcom/google/android/gms/internal/ads/zzcft;)Lcom/google/android/gms/internal/ads/zzcfj;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfv;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwo:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcfv;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzsp$zzh;Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfj;->zza(Lcom/google/android/gms/internal/ads/zzcxn;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    const-string p1, "Failed to get signals bundle"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcfv (com.google.android.gms.internal.ads.zzcfv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcfv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxn;


# instance fields
.field private final zzdyt:Z

.field private final zzfww:Lcom/google/android/gms/internal/ads/zzcfs;

.field private final zzfwx:Ljava/util/ArrayList;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzsp$zzh;

.field private final zzfwz:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfs;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzsp$zzh;Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfww:Lcom/google/android/gms/internal/ads/zzcfs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzdyt:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfwx:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfwy:Lcom/google/android/gms/internal/ads/zzsp$zzh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfwz:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfww:Lcom/google/android/gms/internal/ads/zzcfs;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzdyt:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfwx:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfwy:Lcom/google/android/gms/internal/ads/zzsp$zzh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfwz:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcfs;->zzfwp:Lcom/google/android/gms/internal/ads/zzcft;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Lcom/google/android/gms/internal/ads/zzcft;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzsp$zzh;Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)[B

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "serialized_proto_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const-string v3, "offline_signal_contents"

    invoke-virtual {p1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "total_requests"

    aput-object v5, v3, v4

    const-string v5, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'%s\'"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v1, :cond_53

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "failed_requests"

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_53
    return-object v0
.end method
