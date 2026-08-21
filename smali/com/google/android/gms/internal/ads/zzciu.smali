###### Class com.google.android.gms.internal.ads.zzciu (com.google.android.gms.internal.ads.zzciu)
.class public final Lcom/google/android/gms/internal/ads/zzciu;
.super Lcom/google/android/gms/internal/ads/zzciw;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzciw<",
        "Lcom/google/android/gms/internal/ads/zzbkq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzelt:Lcom/google/android/gms/internal/ads/zzbth;

.field private final zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

.field private final zzfza:Lcom/google/android/gms/internal/ads/zzbei;

.field private final zzfzb:Lcom/google/android/gms/internal/ads/zzbmk$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbei;Lcom/google/android/gms/internal/ads/zzbth;Lcom/google/android/gms/internal/ads/zzbmk$zza;Lcom/google/android/gms/internal/ads/zzbpn;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzfza:Lcom/google/android/gms/internal/ads/zzbei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzfzb:Lcom/google/android/gms/internal/ads/zzbmk$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzcwe;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbkq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzfza:Lcom/google/android/gms/internal/ads/zzbei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbei;->zzabl()Lcom/google/android/gms/internal/ads/zzbtk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzfzb:Lcom/google/android/gms/internal/ads/zzbmk$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbmk$zza;->zza(Lcom/google/android/gms/internal/ads/zzcwe;)Lcom/google/android/gms/internal/ads/zzbmk$zza;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmk$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbmk$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmk$zza;->zzafy()Lcom/google/android/gms/internal/ads/zzbmk;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtk;->zza(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbtk;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtk;->zza(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbtk;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtk;->zza(Lcom/google/android/gms/internal/ads/zzbth;)Lcom/google/android/gms/internal/ads/zzbtk;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbtk;->zzacd()Lcom/google/android/gms/internal/ads/zzbtl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtl;->zzaca()Lcom/google/android/gms/internal/ads/zzblg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzafs()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
