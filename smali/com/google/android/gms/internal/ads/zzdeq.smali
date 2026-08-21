###### Class com.google.android.gms.internal.ads.zzdeq (com.google.android.gms.internal.ads.zzdeq)
.class public final Lcom/google/android/gms/internal/ads/zzdeq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzgsq:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/gms/internal/ads/zzder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdeq;->zzgsq:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static zzgp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzder;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdeq;->zzgsq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzder;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzder;->zzgq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No KMS client does support: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_2c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_31
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :goto_35
    throw v0

    :goto_36
    goto :goto_35
.end method
