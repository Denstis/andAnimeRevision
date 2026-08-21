###### Class com.google.android.gms.internal.ads.zzdpy (com.google.android.gms.internal.ads.zzdpy)
.class public abstract Lcom/google/android/gms/internal/ads/zzdpy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field zzhgj:I

.field zzhgk:I

.field private zzhgl:I

.field zzhgm:Lcom/google/android/gms/internal/ads/zzdqd;

.field private zzhgn:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpy;->zzhgk:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpy;->zzhgl:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdpy;->zzhgn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdqb;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpy;-><init>()V

    return-void
.end method

.method static zzc([BIIZ)Lcom/google/android/gms/internal/ads/zzdpy;
    .registers 11

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdqa;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdqa;-><init>([BIIZLcom/google/android/gms/internal/ads/zzdqb;)V

    :try_start_b
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzfr(I)I
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_b .. :try_end_e} :catch_f

    return-object v6

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzez(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzft(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public abstract zzaxu()I
.end method

.method public abstract zzaxv()J
.end method

.method public abstract zzaxw()J
.end method

.method public abstract zzaxx()I
.end method

.method public abstract zzaxy()J
.end method

.method public abstract zzaxz()I
.end method

.method public abstract zzaya()Z
.end method

.method public abstract zzayb()Ljava/lang/String;
.end method

.method public abstract zzayc()Lcom/google/android/gms/internal/ads/zzdpm;
.end method

.method public abstract zzayd()I
.end method

.method public abstract zzaye()I
.end method

.method public abstract zzayf()I
.end method

.method public abstract zzayg()J
.end method

.method public abstract zzayh()I
.end method

.method public abstract zzayi()J
.end method

.method abstract zzayj()J
.end method

.method public abstract zzayk()Z
.end method

.method public abstract zzayl()I
.end method

.method public abstract zzfp(I)V
.end method

.method public abstract zzfq(I)Z
.end method

.method public abstract zzfr(I)I
.end method

.method public abstract zzfs(I)V
.end method
