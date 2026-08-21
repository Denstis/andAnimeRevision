###### Class com.google.android.gms.internal.ads.zzbze (com.google.android.gms.internal.ads.zzbze)
.class public final Lcom/google/android/gms/internal/ads/zzbze;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcga<",
        "Lcom/google/android/gms/internal/ads/zzbyz;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfcm:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzckm<",
            "Lcom/google/android/gms/internal/ads/zzbyz;",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchn;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfef:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqj:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzckm<",
            "Lcom/google/android/gms/internal/ads/zzbyz;",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzckm<",
            "Lcom/google/android/gms/internal/ads/zzbyz;",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchn;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzckm<",
            "Lcom/google/android/gms/internal/ads/zzbyz;",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfcm:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfqj:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfef:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfcm:Lcom/google/android/gms/internal/ads/zzdwo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfqj:Lcom/google/android/gms/internal/ads/zzdwo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfef:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkn:Ljava/util/Set;

    const-string v3, "new_rewarded"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_1b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_1f
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcga;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcga;

    return-object v0
.end method
