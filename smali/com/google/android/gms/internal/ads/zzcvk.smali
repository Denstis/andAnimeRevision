###### Class com.google.android.gms.internal.ads.zzcvk (com.google.android.gms.internal.ads.zzcvk)
.class public final Lcom/google/android/gms/internal/ads/zzcvk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcvf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeyy:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgis:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgit:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcvb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgiu:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcui;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcvb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcui;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgis:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgit:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgiu:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzeyy:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgis:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgit:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgiu:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcui;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzeyy:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcwc;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcwc;)V

    return-object v0
.end method
