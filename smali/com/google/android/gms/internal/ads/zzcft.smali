###### Class com.google.android.gms.internal.ads.zzcft (com.google.android.gms.internal.ads.zzcft)
.class public final Lcom/google/android/gms/internal/ads/zzcft;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzfwu:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzfuq:Lcom/google/android/gms/internal/ads/zzcfp;

.field private final zzfwq:Lcom/google/android/gms/internal/ads/zzddi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfwr:Landroid/telephony/TelephonyManager;

.field private final zzfws:Lcom/google/android/gms/internal/ads/zzcfj;

.field private zzfwt:Lcom/google/android/gms/internal/ads/zzsv;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxq:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxp:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxp:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxp:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxr:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxs:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxs:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxs:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxs:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxs:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxt:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxp:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_ba

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxp:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ba
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzcfp;Lcom/google/android/gms/internal/ads/zzcfj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcfp;",
            "Lcom/google/android/gms/internal/ads/zzcfj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwq:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfuq:Lcom/google/android/gms/internal/ads/zzcfp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfws:Lcom/google/android/gms/internal/ads/zzcfj;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwr:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcft;)Lcom/google/android/gms/internal/ads/zzcfj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfws:Lcom/google/android/gms/internal/ads/zzcfj;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcft;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcft;->zzl(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcft;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzsp$zzh;Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)[B
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcft;->zza(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzsp$zzh;Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)[B

    move-result-object p0

    return-object p0
.end method

.method private final zza(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzsp$zzh;Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzsp$zzh;",
            "Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza;->zzng()Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzlk:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaur;->zzb(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcft;->zzba(Z)Lcom/google/android/gms/internal/ads/zzsv;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzh(Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzlk:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaur;->zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzsv;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzi(Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfuq:Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfp;->zzako()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzep(J)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfuq:Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfp;->zzakq()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzeq(J)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfuq:Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfp;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzcb(I)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzsp$zzh;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwt:Lcom/google/android/gms/internal/ads/zzsv;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzj(Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcft;->zzba(Z)Lcom/google/android/gms/internal/ads/zzsv;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzeo(J)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzlk:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaur;->zza(Landroid/content/ContentResolver;)I

    move-result p2

    if-eqz p2, :cond_86

    goto :goto_87

    :cond_86
    const/4 v1, 0x0

    :goto_87
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcft;->zzba(Z)Lcom/google/android/gms/internal/ads/zzsv;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zza$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcft;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcft;->zzk(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    move-result-object p0

    return-object p0
.end method

.method private static zzba(Z)Lcom/google/android/gms/internal/ads/zzsv;
    .registers 1

    if-eqz p0, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbvt:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbvs:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcft;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzh;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcft;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzh;

    move-result-object p0

    return-object p0
.end method

.method private final zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzh;
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsp$zzh;->zzna()Lcom/google/android/gms/internal/ads/zzsp$zzh$zzb;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsv;->zzbvt:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwt:Lcom/google/android/gms/internal/ads/zzsv;

    goto :goto_40

    :cond_1a
    sget-object v2, Lcom/google/android/gms/internal/ads/zzsv;->zzbvs:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwt:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;->zzbwn:Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;

    :goto_25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsp$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;)Lcom/google/android/gms/internal/ads/zzsp$zzh$zzb;

    goto :goto_2f

    :cond_29
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;->zzbwp:Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;

    goto :goto_25

    :cond_2c
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;->zzbwo:Lcom/google/android/gms/internal/ads/zzsp$zzh$zzc;

    goto :goto_25

    :goto_2f
    packed-switch p1, :pswitch_data_48

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;->zzbwi:Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;

    goto :goto_3d

    :pswitch_35
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;->zzbwl:Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;

    goto :goto_3d

    :pswitch_38
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;->zzbwk:Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;

    goto :goto_3d

    :pswitch_3b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;->zzbwj:Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;

    :goto_3d
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsp$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzsp$zzh$zza;)Lcom/google/android/gms/internal/ads/zzsp$zzh$zzb;

    :goto_40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsp$zzh;

    return-object p1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3b
        :pswitch_38
        :pswitch_3b
        :pswitch_38
        :pswitch_38
        :pswitch_3b
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_38
        :pswitch_38
        :pswitch_3b
        :pswitch_38
    .end packed-switch
.end method

.method private static zzk(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;
    .registers 3

    const-string v0, "device"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "active_network_state"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwu:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;->zzbxo:Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzc;

    return-object p0
.end method

.method private static zzl(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;",
            ">;"
        }
    .end annotation

    const-string v0, "ad_types"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_d

    check-cast p0, Ljava/util/List;

    goto :goto_17

    :cond_d
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_3d

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_24

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_41

    :cond_3d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_a4

    goto :goto_89

    :sswitch_62
    const-string v3, "interstitial"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v2, 0x1

    goto :goto_89

    :sswitch_6c
    const-string v3, "rewarded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v2, 0x3

    goto :goto_89

    :sswitch_76
    const-string v3, "native"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v2, 0x2

    goto :goto_89

    :sswitch_80
    const-string v3, "banner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v2, 0x0

    :cond_89
    :goto_89
    if-eqz v2, :cond_9d

    if-eq v2, v6, :cond_9a

    if-eq v2, v5, :cond_97

    if-eq v2, v4, :cond_94

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;->zzbuv:Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;

    goto :goto_9f

    :cond_94
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;->zzbve:Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;

    goto :goto_9f

    :cond_97
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;->zzbva:Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;

    goto :goto_9f

    :cond_9a
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;->zzbux:Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;

    goto :goto_9f

    :cond_9d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;->zzbuw:Lcom/google/android/gms/internal/ads/zzsp$zzb$zza;

    :goto_9f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_a3
    return-object v0

    :sswitch_data_a4
    .sparse-switch
        -0x533a80d4 -> :sswitch_80
        -0x3ebdafe9 -> :sswitch_76
        -0xe47b3f2 -> :sswitch_6c
        0x240b672c -> :sswitch_62
    .end sparse-switch
.end method


# virtual methods
.method public final zzbb(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzfwq:Lcom/google/android/gms/internal/ads/zzddi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfs;-><init>(Lcom/google/android/gms/internal/ads/zzcft;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcz;Ljava/util/concurrent/Executor;)V

    return-void
.end method
