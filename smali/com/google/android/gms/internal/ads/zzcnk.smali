###### Class com.google.android.gms.internal.ads.zzcnk (com.google.android.gms.internal.ads.zzcnk)
.class public final Lcom/google/android/gms/internal/ads/zzcnk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcj<",
        "Lcom/google/android/gms/internal/ads/zzape;",
        "Lcom/google/android/gms/internal/ads/zzcnl;",
        ">;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private zzgdq:Lcom/google/android/gms/internal/ads/zzcee;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcee;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnk;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnk;->zzgdq:Lcom/google/android/gms/internal/ads/zzcee;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzape;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnk;->zzgdq:Lcom/google/android/gms/internal/ads/zzcee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzg(Lcom/google/android/gms/internal/ads/zzape;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcnj;-><init>(Lcom/google/android/gms/internal/ads/zzape;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnk;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzcnj (com.google.android.gms.internal.ads.zzcnj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcnj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzfhh:Lcom/google/android/gms/internal/ads/zzape;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzape;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnj;->zzfhh:Lcom/google/android/gms/internal/ads/zzape;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnj;->zzfhh:Lcom/google/android/gms/internal/ads/zzape;

    check-cast p1, Ljava/io/InputStream;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnl;

    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcnl;-><init>(Landroid/util/JsonReader;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzape;->zzdma:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcnl;->zzn(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcnl;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
