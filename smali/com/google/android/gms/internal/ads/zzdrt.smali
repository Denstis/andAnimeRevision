###### Class com.google.android.gms.internal.ads.zzdrt (com.google.android.gms.internal.ads.zzdrt)
.class final Lcom/google/android/gms/internal/ads/zzdrt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsy;


# static fields
.field private static final zzhmp:Lcom/google/android/gms/internal/ads/zzdsd;


# instance fields
.field private final zzhmo:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrt;->zzhmp:Lcom/google/android/gms/internal/ads/zzdsd;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrv;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqu;->zzazl()Lcom/google/android/gms/internal/ads/zzdqu;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrt;->zzbar()Lcom/google/android/gms/internal/ads/zzdsd;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrv;-><init>([Lcom/google/android/gms/internal/ads/zzdsd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>(Lcom/google/android/gms/internal/ads/zzdsd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdsd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzhmo:Lcom/google/android/gms/internal/ads/zzdsd;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdse;)Z
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdse;->zzbay()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhld:I

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static zzbar()Lcom/google/android/gms/internal/ads/zzdsd;
    .registers 4

    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsd;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrt;->zzhmp:Lcom/google/android/gms/internal/ads/zzdsd;

    return-object v0
.end method


# virtual methods
.method public final zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdsv<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsx;->zzi(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzhmo:Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdse;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdse;->zzbaz()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsx;->zzbbl()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqn;->zzazf()Lcom/google/android/gms/internal/ads/zzdql;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdse;->zzbba()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsm;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsx;->zzbbj()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqn;->zzazg()Lcom/google/android/gms/internal/ads/zzdql;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdse;->zzbba()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsm;

    move-result-object p1

    return-object p1

    :cond_39
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdse;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsq;->zzbbd()Lcom/google/android/gms/internal/ads/zzdso;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrq;->zzbaq()Lcom/google/android/gms/internal/ads/zzdrq;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsx;->zzbbl()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v6

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqn;->zzazf()Lcom/google/android/gms/internal/ads/zzdql;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsb;->zzbaw()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object p1

    return-object p1

    :cond_5f
    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsb;->zzbaw()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object p1

    return-object p1

    :cond_6a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdse;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsq;->zzbbc()Lcom/google/android/gms/internal/ads/zzdso;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrq;->zzbap()Lcom/google/android/gms/internal/ads/zzdrq;

    move-result-object v5

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsx;->zzbbj()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqn;->zzazg()Lcom/google/android/gms/internal/ads/zzdql;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsb;->zzbav()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object p1

    return-object p1

    :cond_8a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsx;->zzbbk()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsb;->zzbav()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object p1

    return-object p1
.end method
