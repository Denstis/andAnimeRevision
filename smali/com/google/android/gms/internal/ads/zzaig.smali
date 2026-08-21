###### Class com.google.android.gms.internal.ads.zzaig (com.google.android.gms.internal.ads.zzaig)
.class final Lcom/google/android/gms/internal/ads/zzaig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxx;


# instance fields
.field private final synthetic zzdao:Lcom/google/android/gms/internal/ads/zzaia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaia;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdao:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdao:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->reject()V

    return-void
.end method
