###### Class com.google.android.gms.internal.ads.zzox (com.google.android.gms.internal.ads.zzox)
.class final Lcom/google/android/gms/internal/ads/zzox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahg:Ljava/lang/String;

.field private final synthetic zzahh:J

.field private final synthetic zzahi:J

.field private final synthetic zzbjg:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzov;Ljava/lang/String;JJ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzahg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzahh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzox;->zzahi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzahg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzahh:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzox;->zzahi:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzow;->zzd(Ljava/lang/String;JJ)V

    return-void
.end method
