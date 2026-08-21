###### Class com.google.android.gms.internal.ads.zzau (com.google.android.gms.internal.ads.zzau)
.class final Lcom/google/android/gms/internal/ads/zzau;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private final zzcl:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzar;->zzb(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzcl:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzau;->zzcl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
