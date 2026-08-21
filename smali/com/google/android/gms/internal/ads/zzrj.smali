###### Class com.google.android.gms.internal.ads.zzrj (com.google.android.gms.internal.ads.zzrj)
.class final Lcom/google/android/gms/internal/ads/zzrj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqa;


# instance fields
.field private final synthetic zzbrg:Lcom/google/android/gms/internal/ads/zzrh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbrg:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbrg:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrh;->zzb(Lcom/google/android/gms/internal/ads/zzrh;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbrg:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrh;->zza(Lcom/google/android/gms/internal/ads/zzrh;)V

    return-void
.end method
