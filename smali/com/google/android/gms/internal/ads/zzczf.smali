###### Class com.google.android.gms.internal.ads.zzczf (com.google.android.gms.internal.ads.zzczf)
.class public final Lcom/google/android/gms/internal/ads/zzczf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private final zzgnn:Landroid/os/Looper;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgnn:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zzgl(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczl;->zzanz()Lcom/google/android/gms/internal/ads/zzczl$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzlk:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczl$zza;->zzgo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzczl$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzczl$zzb;->zzgoc:Lcom/google/android/gms/internal/ads/zzczl$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzczl$zzb;)Lcom/google/android/gms/internal/ads/zzczl$zza;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczh;->zzanx()Lcom/google/android/gms/internal/ads/zzczh$zzb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzczh$zzb;->zzgn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzczh$zzb;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzczh$zza;->zzgnv:Lcom/google/android/gms/internal/ads/zzczh$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzczh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzczh$zza;)Lcom/google/android/gms/internal/ads/zzczh$zzb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzczl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzczh$zzb;)Lcom/google/android/gms/internal/ads/zzczl$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzlk:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgnn:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcze;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzczl;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcze;->zzanw()V

    return-void
.end method
