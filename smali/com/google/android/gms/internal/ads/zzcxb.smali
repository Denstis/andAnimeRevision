###### Class com.google.android.gms.internal.ads.zzcxb (com.google.android.gms.internal.ads.zzcxb)
.class public final Lcom/google/android/gms/internal/ads/zzcxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Landroid/content/Context;",
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxb;->zzgla:Lcom/google/android/gms/internal/ads/zzcxa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxb;->zzglb:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcwy;)Landroid/content/Context;
    .registers 2

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzcwy;->zzzc:Landroid/content/Context;

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzcxb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxa;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwy;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcxb;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcxb;-><init>(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxb;->zzgla:Lcom/google/android/gms/internal/ads/zzcxa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxb;->zzglb:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcwy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxb;->zzb(Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcwy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
