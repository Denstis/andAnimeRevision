###### Class com.google.android.gms.internal.ads.zzdbr (com.google.android.gms.internal.ads.zzdbr)
.class final Lcom/google/android/gms/internal/ads/zzdbr;
.super Lcom/google/android/gms/internal/ads/zzdbg;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbg<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zzgpd:Lcom/google/android/gms/internal/ads/zzdbd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient zzgps:Lcom/google/android/gms/internal/ads/zzdbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbh<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbh;Lcom/google/android/gms/internal/ads/zzdbd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbh<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgps:Lcom/google/android/gms/internal/ads/zzdbh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgpd:Lcom/google/android/gms/internal/ads/zzdbd;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgps:Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbr;->zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgps:Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbr;->zzaon()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbd;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbu<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbr;->zzaon()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbu;

    return-object v0
.end method

.method public final zzaon()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgpd:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object v0
.end method

.method final zzaoo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
