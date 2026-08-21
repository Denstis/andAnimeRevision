###### Class com.google.android.gms.internal.ads.zzaub (com.google.android.gms.internal.ads.zzaub)
.class final Lcom/google/android/gms/internal/ads/zzaub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdrx:Lcom/google/android/gms/internal/ads/zzauc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzdrx:Lcom/google/android/gms/internal/ads/zzauc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzdrx:Lcom/google/android/gms/internal/ads/zzauc;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zza(Lcom/google/android/gms/internal/ads/zzauc;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzdrx:Lcom/google/android/gms/internal/ads/zzauc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzsx()V

    return-void
.end method
