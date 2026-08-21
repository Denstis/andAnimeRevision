###### Class com.google.android.gms.internal.ads.zzqb (com.google.android.gms.internal.ads.zzqb)
.class final Lcom/google/android/gms/internal/ads/zzqb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzbpu:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzbpv:Lcom/google/android/gms/internal/ads/zzpt;

.field final synthetic zzbpw:Landroid/webkit/WebView;

.field final synthetic zzbpx:Z

.field final synthetic zzbpy:Lcom/google/android/gms/internal/ads/zzpz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzpt;Landroid/webkit/WebView;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpy:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpv:Lcom/google/android/gms/internal/ads/zzpt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpw:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Lcom/google/android/gms/internal/ads/zzqb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpu:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpw:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpw:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpu:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpu:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
