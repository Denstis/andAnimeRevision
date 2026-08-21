###### Class com.google.android.gms.internal.ads.zzazd (com.google.android.gms.internal.ads.zzazd)
.class final Lcom/google/android/gms/internal/ads/zzazd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdyx:Lcom/google/android/gms/internal/ads/zzayr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaze;Lcom/google/android/gms/internal/ads/zzayr;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzdyx:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzdyx:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzwz()V

    return-void
.end method
