###### Class com.google.android.gms.internal.ads.zzdaj (com.google.android.gms.internal.ads.zzdaj)
.class final Lcom/google/android/gms/internal/ads/zzdaj;
.super Lcom/google/android/gms/internal/ads/zzdar;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdar<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final zzgoq:Lcom/google/android/gms/internal/ads/zzdaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdaj<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgoq:Lcom/google/android/gms/internal/ads/zzdaj;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdar;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    const v0, 0x79a31aac

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public final zzaof()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
