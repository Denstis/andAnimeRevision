###### Class com.google.android.gms.internal.ads.zzgi (com.google.android.gms.internal.ads.zzgi)
.class final Lcom/google/android/gms/internal/ads/zzgi;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private final synthetic zzaco:Lcom/google/android/gms/internal/ads/zzgj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgj;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzaco:Lcom/google/android/gms/internal/ads/zzgj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzaco:Lcom/google/android/gms/internal/ads/zzgj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgj;->zza(Landroid/os/Message;)V

    return-void
.end method
