###### Class com.google.android.gms.internal.ads.zzdar (com.google.android.gms.internal.ads.zzdar)
.class public abstract Lcom/google/android/gms/internal/ads/zzdar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzz(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzdar<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgoq:Lcom/google/android/gms/internal/ads/zzdaj;

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract zzaof()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
