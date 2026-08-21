###### Class com.google.android.gms.internal.ads.zzlm (com.google.android.gms.internal.ads.zzlm)
.class final Lcom/google/android/gms/internal/ads/zzlm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzazs:Lcom/google/android/gms/internal/ads/zzli;

.field private final synthetic zzbay:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzli;Ljava/io/IOException;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzbay:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzli;->zze(Lcom/google/android/gms/internal/ads/zzli;)Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzbay:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzlp;->zzb(Ljava/io/IOException;)V

    return-void
.end method
