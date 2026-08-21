###### Class com.google.android.gms.internal.ads.zzbra (com.google.android.gms.internal.ads.zzbra)
.class public final Lcom/google/android/gms/internal/ads/zzbra;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrb;


# instance fields
.field private final zzdks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

.field private zzfic:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcyp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvr;->zzdks:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzdks:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    return-void
.end method


# virtual methods
.method public final zzagq()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfic:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzdks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyp;->zzi(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfic:Z

    :cond_e
    return-void
.end method
