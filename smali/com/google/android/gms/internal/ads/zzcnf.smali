###### Class com.google.android.gms.internal.ads.zzcnf (com.google.android.gms.internal.ads.zzcnf)
.class public final Lcom/google/android/gms/internal/ads/zzcnf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgdo:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzgdo:Lcom/google/android/gms/internal/ads/zzcnc;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzgdo:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzalt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
