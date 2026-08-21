###### Class com.google.android.gms.internal.ads.zzph (com.google.android.gms.internal.ads.zzph)
.class final Lcom/google/android/gms/internal/ads/zzph;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private final synthetic zzbnv:Lcom/google/android/gms/internal/ads/zzpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbnv:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbnv:Lcom/google/android/gms/internal/ads/zzpf;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Lcom/google/android/gms/internal/ads/zzpf;I)V

    return-void
.end method
