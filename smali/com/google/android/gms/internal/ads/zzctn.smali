###### Class com.google.android.gms.internal.ads.zzctn (com.google.android.gms.internal.ads.zzctn)
.class final synthetic Lcom/google/android/gms/internal/ads/zzctn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# static fields
.field static final zzdos:Lcom/google/android/gms/internal/ads/zzdal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzctn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzctn;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctl;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzctl;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
