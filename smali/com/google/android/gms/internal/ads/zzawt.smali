###### Class com.google.android.gms.internal.ads.zzawt (com.google.android.gms.internal.ads.zzawt)
.class final Lcom/google/android/gms/internal/ads/zzawt;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private final synthetic zzdvf:Lcom/google/android/gms/internal/ads/zzawu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzdvf:Lcom/google/android/gms/internal/ads/zzawu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzdvf:Lcom/google/android/gms/internal/ads/zzawu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawu;->zza(Lcom/google/android/gms/internal/ads/zzawu;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
