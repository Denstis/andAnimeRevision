###### Class com.google.android.gms.internal.ads.zzawl (com.google.android.gms.internal.ads.zzawl)
.class public final Lcom/google/android/gms/internal/ads/zzawl;
.super Lcom/google/android/gms/internal/ads/zzauc;
.source ""


# instance fields
.field private final url:Ljava/lang/String;

.field private final zzduy:Lcom/google/android/gms/internal/ads/zzaxm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaul;->zzr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzawl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauc;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzaxm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawl;->zzduy:Lcom/google/android/gms/internal/ads/zzaxm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawl;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzsx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawl;->zzduy:Lcom/google/android/gms/internal/ads/zzaxm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxm;->zzei(Ljava/lang/String;)V

    return-void
.end method
