###### Class com.google.android.gms.internal.ads.zzayx (com.google.android.gms.internal.ads.zzayx)
.class final Lcom/google/android/gms/internal/ads/zzayx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdyr:Lcom/google/android/gms/internal/ads/zzayw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdyr:Lcom/google/android/gms/internal/ads/zzayw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdyr:Lcom/google/android/gms/internal/ads/zzayw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzayw;->zza(Lcom/google/android/gms/internal/ads/zzayw;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
