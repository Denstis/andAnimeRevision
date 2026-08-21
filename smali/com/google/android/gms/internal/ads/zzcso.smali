###### Class com.google.android.gms.internal.ads.zzcso (com.google.android.gms.internal.ads.zzcso)
.class public final Lcom/google/android/gms/internal/ads/zzcso;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcsl;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzdiv:Landroid/content/pm/PackageInfo;

.field private final zzggu:Lcom/google/android/gms/internal/ads/zzatn;

.field private final zzggw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatn;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzggu:Lcom/google/android/gms/internal/ads/zzatn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcso;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzggw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzdiv:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcsl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzggu:Lcom/google/android/gms/internal/ads/zzatn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzggw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzdiv:Landroid/content/pm/PackageInfo;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzatn;->zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcsn;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcso;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcsq;-><init>(Lcom/google/android/gms/internal/ads/zzcso;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcso;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcsl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzggw:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzcsl;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzcsq (com.google.android.gms.internal.ads.zzcsq)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcsq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzggy:Lcom/google/android/gms/internal/ads/zzcso;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcso;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzggy:Lcom/google/android/gms/internal/ads/zzcso;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzggy:Lcom/google/android/gms/internal/ads/zzcso;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcso;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
