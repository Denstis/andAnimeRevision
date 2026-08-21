###### Class com.google.android.gms.internal.ads.zzbag (com.google.android.gms.internal.ads.zzbag)
.class public final Lcom/google/android/gms/internal/ads/zzbag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgf;
.implements Lcom/google/android/gms/internal/ads/zzlp;
.implements Lcom/google/android/gms/internal/ads/zzns;
.implements Lcom/google/android/gms/internal/ads/zzow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgf;",
        "Lcom/google/android/gms/internal/ads/zzlp;",
        "Lcom/google/android/gms/internal/ads/zzns<",
        "Lcom/google/android/gms/internal/ads/zzne;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzow;"
    }
.end annotation


# static fields
.field private static zzeci:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zzecj:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private bytesTransferred:I

.field private final zzebk:Lcom/google/android/gms/internal/ads/zzazk;

.field private final zzeck:Lcom/google/android/gms/internal/ads/zzbad;

.field private final zzecl:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzecm:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzecn:Lcom/google/android/gms/internal/ads/zzms;

.field private zzeco:Lcom/google/android/gms/internal/ads/zzgc;

.field private zzecp:Ljava/nio/ByteBuffer;

.field private zzecq:Z

.field private zzecr:Lcom/google/android/gms/internal/ads/zzbao;

.field private zzecs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzazz;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazk;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecs:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbad;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbad;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeck:Lcom/google/android/gms/internal/ads/zzbad;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzlk:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzkn;->zzaza:Lcom/google/android/gms/internal/ads/zzkn;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkn;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzow;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecl:Lcom/google/android/gms/internal/ads/zzgx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzib;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzkn;->zzaza:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Lcom/google/android/gms/internal/ads/zzkn;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzgx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzmn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecn:Lcom/google/android/gms/internal/ads/zzms;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaug;->zzuu()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "ExoPlayerAdapter initialize "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :cond_5f
    sget p1, Lcom/google/android/gms/internal/ads/zzbag;->zzeci:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    sput p1, Lcom/google/android/gms/internal/ads/zzbag;->zzeci:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzgx;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzgx;

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecl:Lcom/google/android/gms/internal/ads/zzgx;

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecn:Lcom/google/android/gms/internal/ads/zzms;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeck:Lcom/google/android/gms/internal/ads/zzbad;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgg;->zza([Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzgs;)Lcom/google/android/gms/internal/ads/zzgc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzgc;->zza(Lcom/google/android/gms/internal/ads/zzgf;)V

    return-void
.end method

.method private final zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzlu;
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/ads/zzlq;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecq:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_22

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbaf;-><init>([B)V

    move-object v2, v0

    goto :goto_5c

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzeaq:I

    if-lez v0, :cond_2e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbai;-><init>(Lcom/google/android/gms/internal/ads/zzbag;Ljava/lang/String;)V

    goto :goto_33

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbah;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbah;-><init>(Lcom/google/android/gms/internal/ads/zzbag;Ljava/lang/String;)V

    :goto_33
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzazk;->zzear:Z

    if-eqz p2, :cond_3f

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbak;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbak;-><init>(Lcom/google/android/gms/internal/ads/zzbag;Lcom/google/android/gms/internal/ads/zznd;)V

    goto :goto_40

    :cond_3f
    move-object p2, v0

    :goto_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbaj;-><init>(Lcom/google/android/gms/internal/ads/zznd;[B)V

    move-object p2, v1

    :cond_5b
    move-object v2, p2

    :goto_5c
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbam;->zzecw:Lcom/google/android/gms/internal/ads/zzix;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzazk;->zzeas:I

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    const/4 v7, 0x0

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzazk;->zzeao:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzlq;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zznd;Lcom/google/android/gms/internal/ads/zzix;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzlp;Ljava/lang/String;I)V

    return-object v9
.end method

.method public static zzyp()I
    .registers 1

    sget v0, Lcom/google/android/gms/internal/ads/zzbag;->zzeci:I

    return v0
.end method

.method public static zzyq()I
    .registers 1

    sget v0, Lcom/google/android/gms/internal/ads/zzbag;->zzecj:I

    return v0
.end method


# virtual methods
.method public final finalize()V
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/zzbag;->zzeci:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbag;->zzeci:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaug;->zzuu()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public final getBytesTransferred()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->bytesTransferred:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    if-eqz v0, :cond_15

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzb(Lcom/google/android/gms/internal/ads/zzgf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgc;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    sget v0, Lcom/google/android/gms/internal/ads/zzbag;->zzecj:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbag;->zzecj:I

    :cond_15
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zznd;)Lcom/google/android/gms/internal/ads/zzne;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzlk:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznd;->zzib()Lcom/google/android/gms/internal/ads/zzne;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbal;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbal;-><init>(Lcom/google/android/gms/internal/ads/zzbag;)V

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzne;Lcom/google/android/gms/internal/ads/zzns;Lcom/google/android/gms/internal/ads/zzbae;)V

    return-object v0
.end method

.method final zza(Landroid/view/Surface;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecl:Lcom/google/android/gms/internal/ads/zzgx;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(Lcom/google/android/gms/internal/ads/zzge;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzgh;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb([Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void

    :cond_1a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzgh;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgc;->zza([Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbao;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecr:Lcom/google/android/gms/internal/ads/zzbao;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecr:Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz v0, :cond_9

    const-string v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgu;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzmv;)V
    .registers 3

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zznf;)V
    .registers 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->bytesTransferred:I

    return-void
.end method

.method public final zza(ZI)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecr:Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbao;->zzcx(I)V

    :cond_7
    return-void
.end method

.method public final zza([Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbag;->zza([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zza([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecp:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecq:Z

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_15

    aget-object p1, p1, p4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbag;->zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzlu;

    move-result-object p1

    goto :goto_2b

    :cond_15
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/gms/internal/ads/zzlu;

    :goto_18
    array-length v1, p1

    if-ge p4, v1, :cond_26

    aget-object v1, p1, p4

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbag;->zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzlu;

    move-result-object v1

    aput-object v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_18

    :cond_26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzlv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzlv;-><init>([Lcom/google/android/gms/internal/ads/zzlu;)V

    :goto_2b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgc;->zza(Lcom/google/android/gms/internal/ads/zzlu;)V

    sget p1, Lcom/google/android/gms/internal/ads/zzbag;->zzecj:I

    add-int/2addr p1, v0

    sput p1, Lcom/google/android/gms/internal/ads/zzbag;->zzecj:I

    return-void
.end method

.method final zzap(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzdv()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecn:Lcom/google/android/gms/internal/ads/zzms;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzms;->zzf(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method final zzb(FZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzgx;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(Lcom/google/android/gms/internal/ads/zzge;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzgh;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb([Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void

    :cond_1f
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzgh;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgc;->zza([Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void
.end method

.method public final zzb(IIIF)V
    .registers 5

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecr:Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz p3, :cond_7

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbao;->zzm(II)V

    :cond_7
    return-void
.end method

.method public final zzb(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method

.method public final zzb(Ljava/io/IOException;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecr:Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz v0, :cond_9

    const-string v1, "onLoadError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;I)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->bytesTransferred:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->bytesTransferred:I

    return-void
.end method

.method public final zzcw(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzazz;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzazz;->setReceiveBufferSize(I)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public final zzd(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method final synthetic zzd(ZJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecr:Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbao;->zzb(ZJ)V

    :cond_7
    return-void
.end method

.method public final zzdx()V
    .registers 1

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic zze(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final zzf(IJ)V
    .registers 4

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 2

    return-void
.end method

.method public final zzf(Z)V
    .registers 2

    return-void
.end method

.method final synthetic zzfb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzne;
    .registers 11

    new-instance v8, Lcom/google/android/gms/internal/ads/zznh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzear:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_c

    :cond_b
    move-object v3, p0

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzeal:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzean:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zznh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoe;Lcom/google/android/gms/internal/ads/zzns;IIZLcom/google/android/gms/internal/ads/zznm;)V

    return-object v8
.end method

.method final synthetic zzfc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzne;
    .registers 9

    new-instance v6, Lcom/google/android/gms/internal/ads/zzazz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzear:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_c

    :cond_b
    move-object v2, p0

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzeal:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzean:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzazk;->zzeaq:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzazz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzns;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecs:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 2

    return-void
.end method

.method public final zzyo()Lcom/google/android/gms/internal/ads/zzgc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzgc;

    return-object v0
.end method

.method public final zzyr()Lcom/google/android/gms/internal/ads/zzbad;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbag;->zzeck:Lcom/google/android/gms/internal/ads/zzbad;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbaf (com.google.android.gms.internal.ads.zzbaf)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbaf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;


# instance fields
.field private final zzdwb:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaf;->zzdwb:[B

    return-void
.end method


# virtual methods
.method public final zzib()Lcom/google/android/gms/internal/ads/zzne;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaf;->zzdwb:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/zznb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zznb;-><init>([B)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzbah (com.google.android.gms.internal.ads.zzbah)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzect:Lcom/google/android/gms/internal/ads/zzbag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbag;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzib()Lcom/google/android/gms/internal/ads/zzne;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzcyz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zzfb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbai (com.google.android.gms.internal.ads.zzbai)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzect:Lcom/google/android/gms/internal/ads/zzbag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbag;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzib()Lcom/google/android/gms/internal/ads/zzne;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzcyz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zzfc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbaj (com.google.android.gms.internal.ads.zzbaj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbaj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;


# instance fields
.field private final zzdlz:[B

.field private final zzecu:Lcom/google/android/gms/internal/ads/zznd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zznd;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzecu:Lcom/google/android/gms/internal/ads/zznd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzdlz:[B

    return-void
.end method


# virtual methods
.method public final zzib()Lcom/google/android/gms/internal/ads/zzne;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzecu:Lcom/google/android/gms/internal/ads/zznd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzdlz:[B

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznd;->zzib()Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zznb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zznb;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzban;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Lcom/google/android/gms/internal/ads/zzne;ILcom/google/android/gms/internal/ads/zzne;)V

    return-object v3
.end method

###### Class com.google.android.gms.internal.ads.zzbak (com.google.android.gms.internal.ads.zzbak)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;


# instance fields
.field private final zzect:Lcom/google/android/gms/internal/ads/zzbag;

.field private final zzecv:Lcom/google/android/gms/internal/ads/zznd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbag;Lcom/google/android/gms/internal/ads/zznd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbak;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbak;->zzecv:Lcom/google/android/gms/internal/ads/zznd;

    return-void
.end method


# virtual methods
.method public final zzib()Lcom/google/android/gms/internal/ads/zzne;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbak;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbak;->zzecv:Lcom/google/android/gms/internal/ads/zznd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zza(Lcom/google/android/gms/internal/ads/zznd;)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbal (com.google.android.gms.internal.ads.zzbal)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbae;


# instance fields
.field private final zzect:Lcom/google/android/gms/internal/ads/zzbag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbag;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    return-void
.end method


# virtual methods
.method public final zzb(ZJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzect:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbag;->zzd(ZJ)V

    return-void
.end method
