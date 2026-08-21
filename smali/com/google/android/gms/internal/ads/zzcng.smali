###### Class com.google.android.gms.internal.ads.zzcng (com.google.android.gms.internal.ads.zzcng)
.class public final Lcom/google/android/gms/internal/ads/zzcng;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgdo:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->zzgdo:Lcom/google/android/gms/internal/ads/zzcnc;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->zzgdo:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzalu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
