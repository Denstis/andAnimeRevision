###### Class com.google.android.gms.internal.ads.zzcfl (com.google.android.gms.internal.ads.zzcfl)
.class final Lcom/google/android/gms/internal/ads/zzcfl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfvz:Lcom/google/android/gms/internal/ads/zzcxn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfj;Lcom/google/android/gms/internal/ads/zzcxn;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzfvz:Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzfvz:Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxn;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    const-string v0, "Error executing function on offline signal database: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_1e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Failed to get offline signal database: "

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void
.end method
