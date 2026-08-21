###### Class com.google.android.gms.internal.ads.zzawx (com.google.android.gms.internal.ads.zzawx)
.class final Lcom/google/android/gms/internal/ads/zzawx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzei(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaxa;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
