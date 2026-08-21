###### Class com.google.android.gms.internal.ads.zzbik (com.google.android.gms.internal.ads.zzbik)
.class public final Lcom/google/android/gms/internal/ads/zzbik;
.super Lcom/google/android/gms/internal/ads/zzqv;
.source ""


# instance fields
.field private final zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

.field private final zzfdj:Lcom/google/android/gms/internal/ads/zzbii;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbii;Lcom/google/android/gms/internal/ads/zzvl;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzfdj:Lcom/google/android/gms/internal/ads/zzbii;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzrc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzfdj:Lcom/google/android/gms/internal/ads/zzbii;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbii;->zza(Lcom/google/android/gms/internal/ads/zzrc;)V

    return-void
.end method

.method public final zzdg()Lcom/google/android/gms/internal/ads/zzvl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    return-object v0
.end method
