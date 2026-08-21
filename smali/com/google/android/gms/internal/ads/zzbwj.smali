###### Class com.google.android.gms.internal.ads.zzbwj (com.google.android.gms.internal.ads.zzbwj)
.class public final Lcom/google/android/gms/internal/ads/zzbwj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzakm;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfnv:Lcom/google/android/gms/internal/ads/zzbwc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbwc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zzfnv:Lcom/google/android/gms/internal/ads/zzbwc;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zzfnv:Lcom/google/android/gms/internal/ads/zzbwc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwc;->zzajb()Lcom/google/android/gms/internal/ads/zzakm;

    move-result-object v0

    return-object v0
.end method
