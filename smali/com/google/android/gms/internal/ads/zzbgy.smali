###### Class com.google.android.gms.internal.ads.zzbgy (com.google.android.gms.internal.ads.zzbgy)
.class public final Lcom/google/android/gms/internal/ads/zzbgy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgs;


# instance fields
.field private final zzdrp:Lcom/google/android/gms/internal/ads/zzaui;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaui;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgy;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    return-void
.end method


# virtual methods
.method public final zzk(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "auto_collect_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgy;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaui;->zzaj(Z)V

    :cond_21
    return-void
.end method
