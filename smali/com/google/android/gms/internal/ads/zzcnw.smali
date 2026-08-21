###### Class com.google.android.gms.internal.ads.zzcnw (com.google.android.gms.internal.ads.zzcnw)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcnw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# static fields
.field static final zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcnw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcnw;->zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnv;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzcnv (com.google.android.gms.internal.ads.zzcnv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcnv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# instance fields
.field private final zzczh:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnv;->zzczh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnv;->zzczh:Ljava/lang/String;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
