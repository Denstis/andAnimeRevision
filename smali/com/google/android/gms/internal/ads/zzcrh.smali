###### Class com.google.android.gms.internal.ads.zzcrh (com.google.android.gms.internal.ads.zzcrh)
.class public final Lcom/google/android/gms/internal/ads/zzcrh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcri;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasl;Lcom/google/android/gms/internal/ads/zzddl;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzlk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcrk;-><init>(Lcom/google/android/gms/internal/ads/zzcrh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzamg()Lcom/google/android/gms/internal/ads/zzcri;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasl;->zzab(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasl;->zzae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_24

    move-object v3, v1

    goto :goto_25

    :cond_24
    move-object v3, v0

    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zzaf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v4, v1

    goto :goto_32

    :cond_31
    move-object v4, v0

    :goto_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zzag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    move-object v5, v1

    goto :goto_3f

    :cond_3e
    move-object v5, v0

    :goto_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zzah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    move-object v6, v1

    goto :goto_4c

    :cond_4b
    move-object v6, v0

    :goto_4c
    const-string v0, "TIME_OUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcjk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    move-object v7, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcri;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcrk (com.google.android.gms.internal.ads.zzcrk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcrk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgga:Lcom/google/android/gms/internal/ads/zzcrh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzgga:Lcom/google/android/gms/internal/ads/zzcrh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzgga:Lcom/google/android/gms/internal/ads/zzcrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrh;->zzamg()Lcom/google/android/gms/internal/ads/zzcri;

    move-result-object v0

    return-object v0
.end method
