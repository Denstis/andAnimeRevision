###### Class com.google.android.gms.internal.ads.zzcqc (com.google.android.gms.internal.ads.zzcqc)
.class public final Lcom/google/android/gms/internal/ads/zzcqc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcpz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcpz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqb;-><init>(Lcom/google/android/gms/internal/ads/zzcqc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzamb()Lcom/google/android/gms/internal/ads/zzcpz;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzfbb:Lcom/google/android/gms/internal/ads/zzcvp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpz;-><init>(Lcom/google/android/gms/internal/ads/zzcvp;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcqb (com.google.android.gms.internal.ads.zzcqb)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcqb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgfi:Lcom/google/android/gms/internal/ads/zzcqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqc;->zzamb()Lcom/google/android/gms/internal/ads/zzcpz;

    move-result-object v0

    return-object v0
.end method
