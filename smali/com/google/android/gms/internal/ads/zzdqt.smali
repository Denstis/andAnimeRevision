###### Class com.google.android.gms.internal.ads.zzdqt (com.google.android.gms.internal.ads.zzdqt)
.class final enum Lcom/google/android/gms/internal/ads/zzdqt;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdqt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzhkg:Lcom/google/android/gms/internal/ads/zzdqt;

.field public static final enum zzhkh:Lcom/google/android/gms/internal/ads/zzdqt;

.field public static final enum zzhki:Lcom/google/android/gms/internal/ads/zzdqt;

.field public static final enum zzhkj:Lcom/google/android/gms/internal/ads/zzdqt;

.field private static final synthetic zzhkl:[Lcom/google/android/gms/internal/ads/zzdqt;


# instance fields
.field private final zzhkk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqt;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqt;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkg:Lcom/google/android/gms/internal/ads/zzdqt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqt;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdqt;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkh:Lcom/google/android/gms/internal/ads/zzdqt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqt;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzdqt;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhki:Lcom/google/android/gms/internal/ads/zzdqt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqt;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/android/gms/internal/ads/zzdqt;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkj:Lcom/google/android/gms/internal/ads/zzdqt;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdqt;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkg:Lcom/google/android/gms/internal/ads/zzdqt;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkh:Lcom/google/android/gms/internal/ads/zzdqt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqt;->zzhki:Lcom/google/android/gms/internal/ads/zzdqt;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkj:Lcom/google/android/gms/internal/ads/zzdqt;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkl:[Lcom/google/android/gms/internal/ads/zzdqt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkk:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdqt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqt;->zzhkl:[Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdqt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdqt;

    return-object v0
.end method
