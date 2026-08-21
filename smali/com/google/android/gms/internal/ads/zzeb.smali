###### Class com.google.android.gms.internal.ads.zzeb (com.google.android.gms.internal.ads.zzeb)
.class final Lcom/google/android/gms/internal/ads/zzeb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzyj:Lcom/google/android/gms/internal/ads/zzdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->zzyj:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->zzyj:Lcom/google/android/gms/internal/ads/zzdx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    return-void
.end method
