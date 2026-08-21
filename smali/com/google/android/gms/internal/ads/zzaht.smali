###### Class com.google.android.gms.internal.ads.zzaht (com.google.android.gms.internal.ads.zzaht)
.class final synthetic Lcom/google/android/gms/internal/ads/zzaht;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdad:Lcom/google/android/gms/internal/ads/zzaha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaha;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzdad:Lcom/google/android/gms/internal/ads/zzaha;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzaha;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaht;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(Lcom/google/android/gms/internal/ads/zzaha;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzdad:Lcom/google/android/gms/internal/ads/zzaha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaha;->destroy()V

    return-void
.end method
