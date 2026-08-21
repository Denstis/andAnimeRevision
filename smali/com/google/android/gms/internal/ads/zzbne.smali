###### Class com.google.android.gms.internal.ads.zzbne (com.google.android.gms.internal.ads.zzbne)
.class public final Lcom/google/android/gms/internal/ads/zzbne;
.super Lcom/google/android/gms/internal/ads/zzbpm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbpm<",
        "Lcom/google/android/gms/internal/ads/zzbnf;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbnf;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbnf;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpm;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzcl(I)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnd;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbnd (com.google.android.gms.internal.ads.zzbnd)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbnd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpo;


# instance fields
.field private final zzdwc:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzdwc:I

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzdwc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnf;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbnf;->zzcl(I)V

    return-void
.end method
