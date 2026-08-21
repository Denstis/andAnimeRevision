###### Class com.google.android.gms.internal.ads.zzqe (com.google.android.gms.internal.ads.zzqe)
.class final Lcom/google/android/gms/internal/ads/zzqe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbqc:Lcom/google/android/gms/internal/ads/zzqb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbqc:Lcom/google/android/gms/internal/ads/zzqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbqc:Lcom/google/android/gms/internal/ads/zzqb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpy:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpv:Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpw:Landroid/webkit/WebView;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzbpx:Z

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzpz;->zza(Lcom/google/android/gms/internal/ads/zzpt;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
