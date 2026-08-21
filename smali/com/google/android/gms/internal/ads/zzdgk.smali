###### Class com.google.android.gms.internal.ads.zzdgk (com.google.android.gms.internal.ads.zzdgk)
.class Lcom/google/android/gms/internal/ads/zzdgk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdgk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdex<",
        "Lcom/google/android/gms/internal/ads/zzdet;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzdgk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdev;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgk$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdgk$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdev;Lcom/google/android/gms/internal/ads/zzdgm;)V

    return-object v0
.end method

.method public final zzapo()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/ads/zzdet;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzdet;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdgk.zza (com.google.android.gms.internal.ads.zzdgk$zza)
.class final Lcom/google/android/gms/internal/ads/zzdgk$zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdgk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzgtj:Lcom/google/android/gms/internal/ads/zzdev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdev<",
            "Lcom/google/android/gms/internal/ads/zzdet;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgts:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdev;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdev<",
            "Lcom/google/android/gms/internal/ads/zzdet;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgts:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdev;Lcom/google/android/gms/internal/ads/zzdgm;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgk$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdev;)V

    return-void
.end method


# virtual methods
.method public final zzk([B)[B
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapt()Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzc:Lcom/google/android/gms/internal/ads/zzdkj;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_46

    new-array v0, v3, [[B

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapu()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdet;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgts:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzdet;->zzk([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object p1

    return-object p1

    :cond_46
    new-array v0, v3, [[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapu()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgk$zza;->zzgtj:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdet;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzdet;->zzk([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
