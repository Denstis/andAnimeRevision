###### Class com.google.android.gms.internal.ads.zzaus (com.google.android.gms.internal.ads.zzaus)
.class final Lcom/google/android/gms/internal/ads/zzaus;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private final synthetic zzdta:Lcom/google/android/gms/internal/ads/zzaul;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaul;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaus;->zzdta:Lcom/google/android/gms/internal/ads/zzaul;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaul;Lcom/google/android/gms/internal/ads/zzauo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Lcom/google/android/gms/internal/ads/zzaul;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaus;->zzdta:Lcom/google/android/gms/internal/ads/zzaul;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Lcom/google/android/gms/internal/ads/zzaul;Z)Z

    return-void

    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaus;->zzdta:Lcom/google/android/gms/internal/ads/zzaul;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Lcom/google/android/gms/internal/ads/zzaul;Z)Z

    :cond_25
    return-void
.end method
