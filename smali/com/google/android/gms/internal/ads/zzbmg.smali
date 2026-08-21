###### Class com.google.android.gms.internal.ads.zzbmg (com.google.android.gms.internal.ads.zzbmg)
.class public final Lcom/google/android/gms/internal/ads/zzbmg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "Lcom/google/android/gms/internal/ads/zzcvr;",
        "Lcom/google/android/gms/internal/ads/zzavd;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzejy:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfan:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzaxl;",
            ">;"
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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzaxl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzejy:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfan:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfef:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzejy:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfan:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfef:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwe;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbmh;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzcwe;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdal;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbmh (com.google.android.gms.internal.ads.zzbmh)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbmh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# instance fields
.field private final zzdpy:Landroid/content/Context;

.field private final zzfdz:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzfgq:Lcom/google/android/gms/internal/ads/zzcwe;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzcwe;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzdpy:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzfdz:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzfgq:Lcom/google/android/gms/internal/ads/zzcwe;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzdpy:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzfdz:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzfgq:Lcom/google/android/gms/internal/ads/zzcwe;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzavd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzavd;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvr;->zzdkv:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzej(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjj:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzavd;->zzek(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzavd;->zzr(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzavd;->setAdUnitId(Ljava/lang/String;)V

    return-object v3
.end method
