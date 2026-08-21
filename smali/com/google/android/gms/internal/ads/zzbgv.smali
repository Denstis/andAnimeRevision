###### Class com.google.android.gms.internal.ads.zzbgv (com.google.android.gms.internal.ads.zzbgv)
.class public final Lcom/google/android/gms/internal/ads/zzbgv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgs;


# instance fields
.field private zzdrp:Lcom/google/android/gms/internal/ads/zzaui;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaui;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    const-string v1, "content_url_opted_out"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaui;->zzah(Z)V

    return-void
.end method
