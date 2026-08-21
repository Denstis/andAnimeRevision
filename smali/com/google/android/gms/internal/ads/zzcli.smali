###### Class com.google.android.gms.internal.ads.zzcli (com.google.android.gms.internal.ads.zzcli)
.class public final Lcom/google/android/gms/internal/ads/zzcli;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzclc<",
        "Lcom/google/android/gms/internal/ads/zzbrs;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfxy:Lcom/google/android/gms/internal/ads/zzbso;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbso;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcli;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcli;->zzfxy:Lcom/google/android/gms/internal/ads/zzbso;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzclj;)Ljava/lang/Object;
    .registers 8

    new-instance p3, Lcom/google/android/gms/internal/ads/zzclk;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcll;->zzgbd:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzclk;-><init>(Lcom/google/android/gms/internal/ads/zzcli;Lcom/google/android/gms/internal/ads/zzbsu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->zzfxy:Lcom/google/android/gms/internal/ads/zzbso;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbla;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbla;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzbso;->zza(Lcom/google/android/gms/internal/ads/zzbla;Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcln;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcln;-><init>(Lcom/google/android/gms/internal/ads/zzcli;Lcom/google/android/gms/internal/ads/zzbru;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzclj;->zza(Lcom/google/android/gms/ads/internal/zze;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbru;->zzadh()Lcom/google/android/gms/internal/ads/zzbrs;

    move-result-object p1

    return-object p1
.end method
