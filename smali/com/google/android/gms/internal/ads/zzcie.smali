###### Class com.google.android.gms.internal.ads.zzcie (com.google.android.gms.internal.ads.zzcie)
.class public final Lcom/google/android/gms/internal/ads/zzcie;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcge<",
        "Lcom/google/android/gms/internal/ads/zzcwm;",
        "Lcom/google/android/gms/internal/ads/zzchk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsy:Lcom/google/android/gms/internal/ads/zzchm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcie;->zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcgf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcgf<",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcie;->zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcwm;

    move-result-object p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchk;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgf;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcgf;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbnz;Ljava/lang/String;)V

    return-object v1
.end method
