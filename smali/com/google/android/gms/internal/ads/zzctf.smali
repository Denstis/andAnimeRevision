###### Class com.google.android.gms.internal.ads.zzctf (com.google.android.gms.internal.ads.zzctf)
.class public final Lcom/google/android/gms/internal/ads/zzctf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzctg;",
        ">;"
    }
.end annotation


# instance fields
.field zzdjf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field zzghj:Lcom/google/android/gms/internal/ads/zzym;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzym;Lcom/google/android/gms/internal/ads/zzddl;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzym;",
            "Lcom/google/android/gms/internal/ads/zzddl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctf;->zzghj:Lcom/google/android/gms/internal/ads/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctf;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctf;->zzdjf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzctg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctf;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcti;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcti;-><init>(Lcom/google/android/gms/internal/ads/zzctf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcti (com.google.android.gms.internal.ads.zzcti)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcti;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzghk:Lcom/google/android/gms/internal/ads/zzctf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcti;->zzghk:Lcom/google/android/gms/internal/ads/zzctf;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcti;->zzghk:Lcom/google/android/gms/internal/ads/zzctf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzctg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzctf;->zzghj:Lcom/google/android/gms/internal/ads/zzym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctf;->zzdjf:Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzym;->zzd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzctg;-><init>(Ljava/util/List;)V

    return-object v1
.end method
