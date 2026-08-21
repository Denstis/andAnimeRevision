###### Class com.google.android.gms.internal.ads.zzbyp (com.google.android.gms.internal.ads.zzbyp)
.class public final Lcom/google/android/gms/internal/ads/zzbyp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

.field private final zzfio:Lcom/google/android/gms/internal/ads/zzboo;

.field private final zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

.field private final zzfpy:Lcom/google/android/gms/internal/ads/zzbof;

.field private final zzfpz:Lcom/google/android/gms/internal/ads/zzbpf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmv;Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzbof;Lcom/google/android/gms/internal/ads/zzboo;Lcom/google/android/gms/internal/ads/zzbpf;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfpy:Lcom/google/android/gms/internal/ads/zzbof;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfpz:Lcom/google/android/gms/internal/ads/zzbpf;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbyh;)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Lcom/google/android/gms/internal/ads/zzbyh;)Lcom/google/android/gms/internal/ads/zzbym;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfpy:Lcom/google/android/gms/internal/ads/zzbof;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfpz:Lcom/google/android/gms/internal/ads/zzbpf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyo;->zza(Lcom/google/android/gms/internal/ads/zzbnr;)Lcom/google/android/gms/ads/internal/overlay/zzt;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbym;->zza(Lcom/google/android/gms/internal/ads/zzbym;Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    return-void
.end method
