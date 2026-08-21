###### Class com.google.android.gms.internal.ads.zzckk (com.google.android.gms.internal.ads.zzckk)
.class public final Lcom/google/android/gms/internal/ads/zzckk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcge<",
        "Lcom/google/android/gms/internal/ads/zzamd;",
        "Lcom/google/android/gms/internal/ads/zzchk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgae:Lcom/google/android/gms/internal/ads/zzclp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzclp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckk;->zzgae:Lcom/google/android/gms/internal/ads/zzclp;

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
            "Lcom/google/android/gms/internal/ads/zzamd;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzckk;->zzgae:Lcom/google/android/gms/internal/ads/zzclp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzclp;->zzgc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamd;

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
