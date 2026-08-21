###### Class com.google.android.gms.internal.ads.zzaet (com.google.android.gms.internal.ads.zzaet)
.class public final Lcom/google/android/gms/internal/ads/zzaet;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaet;->zzlk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaet;->zzlk:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzasl;->zzab(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const-string p1, "eventName"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "eventId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x170bf

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_48

    const v2, 0x170c1

    if-eq v1, v2, :cond_3e

    const v2, 0x170c7

    if-eq v1, v2, :cond_34

    goto :goto_51

    :cond_34
    const-string v1, "_ai"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 v0, 0x1

    goto :goto_51

    :cond_3e
    const-string v1, "_ac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 v0, 0x0

    goto :goto_51

    :cond_48
    const-string v1, "_aa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 v0, 0x2

    :cond_51
    :goto_51
    if-eqz v0, :cond_71

    if-eq v0, v4, :cond_67

    if-eq v0, v3, :cond_5d

    const-string p1, "logScionEvent gmsg contained unsupported eventName"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_5d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaet;->zzlk:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzasl;->zzk(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaet;->zzlk:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzasl;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_71
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaet;->zzlk:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzasl;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
