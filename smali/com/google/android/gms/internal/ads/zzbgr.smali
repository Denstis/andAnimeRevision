###### Class com.google.android.gms.internal.ads.zzbgr (com.google.android.gms.internal.ads.zzbgr)
.class public final Lcom/google/android/gms/internal/ads/zzbgr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzasl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfaz:Lcom/google/android/gms/internal/ads/zzbge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbge;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgr;->zzfaz:Lcom/google/android/gms/internal/ads/zzbge;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasl;

    return-object v0
.end method
