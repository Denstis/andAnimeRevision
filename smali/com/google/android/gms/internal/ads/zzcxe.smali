###### Class com.google.android.gms.internal.ads.zzcxe (com.google.android.gms.internal.ads.zzcxe)
.class public final Lcom/google/android/gms/internal/ads/zzcxe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzdf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgla:Lcom/google/android/gms/internal/ads/zzcxa;

.field private final zzglb:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxa;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zzgla:Lcom/google/android/gms/internal/ads/zzcxa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zzglb:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzcxe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxa;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwy;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcxe;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcxe;-><init>(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zzglb:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwy;->zzgkz:Lcom/google/android/gms/internal/ads/zzdf;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdf;

    return-object v0
.end method
