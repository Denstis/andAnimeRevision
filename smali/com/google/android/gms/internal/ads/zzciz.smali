###### Class com.google.android.gms.internal.ads.zzciz (com.google.android.gms.internal.ads.zzciz)
.class public final Lcom/google/android/gms/internal/ads/zzciz;
.super Lcom/google/android/gms/internal/ads/zzciw;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzciw<",
        "Lcom/google/android/gms/internal/ads/zzbio;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzelt:Lcom/google/android/gms/internal/ads/zzbth;

.field private final zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

.field private final zzewq:Lcom/google/android/gms/internal/ads/zzcle;

.field private final zzfdl:Landroid/view/ViewGroup;

.field private final zzffd:Lcom/google/android/gms/internal/ads/zzbou;

.field private final zzfza:Lcom/google/android/gms/internal/ads/zzbei;

.field private final zzfzb:Lcom/google/android/gms/internal/ads/zzbmk$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbei;Lcom/google/android/gms/internal/ads/zzbmk$zza;Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzbth;Lcom/google/android/gms/internal/ads/zzbou;Landroid/view/ViewGroup;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzfza:Lcom/google/android/gms/internal/ads/zzbei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzfzb:Lcom/google/android/gms/internal/ads/zzbmk$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzffd:Lcom/google/android/gms/internal/ads/zzbou;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzfdl:Landroid/view/ViewGroup;

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
            "Lcom/google/android/gms/internal/ads/zzbio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzfza:Lcom/google/android/gms/internal/ads/zzbei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbei;->zzabi()Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzfzb:Lcom/google/android/gms/internal/ads/zzbmk$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbmk$zza;->zza(Lcom/google/android/gms/internal/ads/zzcwe;)Lcom/google/android/gms/internal/ads/zzbmk$zza;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmk$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbmk$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmk$zza;->zzafy()Lcom/google/android/gms/internal/ads/zzbmk;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzc(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzc(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zza(Lcom/google/android/gms/internal/ads/zzcle;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzb(Lcom/google/android/gms/internal/ads/zzbth;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzffd:Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbkh;-><init>(Lcom/google/android/gms/internal/ads/zzbou;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zza(Lcom/google/android/gms/internal/ads/zzbkh;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbin;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzfdl:Landroid/view/ViewGroup;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbin;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzb(Lcom/google/android/gms/internal/ads/zzbin;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzacz()Lcom/google/android/gms/internal/ads/zzbjn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbjn;->zzaca()Lcom/google/android/gms/internal/ads/zzblg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzafs()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
