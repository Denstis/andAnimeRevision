###### Class com.google.android.gms.internal.ads.zzbtb (com.google.android.gms.internal.ads.zzbtb)
.class public final Lcom/google/android/gms/internal/ads/zzbtb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqp;


# instance fields
.field private final zzfix:Lcom/google/android/gms/internal/ads/zzbnl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfix:Lcom/google/android/gms/internal/ads/zzbnl;

    return-void
.end method


# virtual methods
.method public final onHide()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfix:Lcom/google/android/gms/internal/ads/zzbnl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbw(Landroid/content/Context;)V

    return-void
.end method

.method public final zzagp()V
    .registers 1

    return-void
.end method
