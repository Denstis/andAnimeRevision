###### Class com.google.android.gms.internal.ads.zzdfg (com.google.android.gms.internal.ads.zzdfg)
.class Lcom/google/android/gms/internal/ads/zzdfg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdfg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdex<",
        "Lcom/google/android/gms/internal/ads/zzdec;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzdfg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfg;->logger:Ljava/util/logging/Logger;

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfg$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdfg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdev;Lcom/google/android/gms/internal/ads/zzdff;)V

    return-object v0
.end method

.method public final zzapo()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/ads/zzdec;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzdec;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdfg.zza (com.google.android.gms.internal.ads.zzdfg$zza)
.class final Lcom/google/android/gms/internal/ads/zzdfg$zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzgtf:Lcom/google/android/gms/internal/ads/zzdev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdev<",
            "Lcom/google/android/gms/internal/ads/zzdec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdev;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdev<",
            "Lcom/google/android/gms/internal/ads/zzdec;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfg$zza;->zzgtf:Lcom/google/android/gms/internal/ads/zzdev;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdev;Lcom/google/android/gms/internal/ads/zzdff;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdev;)V

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfg$zza;->zzgtf:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapu()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfg$zza;->zzgtf:Lcom/google/android/gms/internal/ads/zzdev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdev;->zzapv()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdeu;->zzapr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdec;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdec;->zzc([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
