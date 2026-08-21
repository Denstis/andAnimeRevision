###### Class com.google.android.gms.internal.ads.zzawa (com.google.android.gms.internal.ads.zzawa)
.class final Lcom/google/android/gms/internal/ads/zzawa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzy;


# instance fields
.field private final synthetic zzduo:Ljava/lang/String;

.field private final synthetic zzdup:Lcom/google/android/gms/internal/ads/zzawb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawb;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzduo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzdup:Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzae;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzduo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load URL: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzdup:Lcom/google/android/gms/internal/ads/zzawb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzawb;->zzb(Ljava/lang/Object;)V

    return-void
.end method
