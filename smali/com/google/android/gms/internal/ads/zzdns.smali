###### Class com.google.android.gms.internal.ads.zzdns (com.google.android.gms.internal.ads.zzdns)
.class public final enum Lcom/google/android/gms/internal/ads/zzdns;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdns;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzhdu:Lcom/google/android/gms/internal/ads/zzdns;

.field public static final enum zzhdv:Lcom/google/android/gms/internal/ads/zzdns;

.field public static final enum zzhdw:Lcom/google/android/gms/internal/ads/zzdns;

.field private static final synthetic zzhdx:[Lcom/google/android/gms/internal/ads/zzdns;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdns;

    const/4 v1, 0x0

    const-string v2, "UNCOMPRESSED"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdns;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdu:Lcom/google/android/gms/internal/ads/zzdns;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdns;

    const/4 v2, 0x1

    const-string v3, "COMPRESSED"

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdns;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdv:Lcom/google/android/gms/internal/ads/zzdns;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdns;

    const/4 v3, 0x2

    const-string v4, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzdns;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdw:Lcom/google/android/gms/internal/ads/zzdns;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdns;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdns;->zzhdu:Lcom/google/android/gms/internal/ads/zzdns;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdns;->zzhdv:Lcom/google/android/gms/internal/ads/zzdns;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdns;->zzhdw:Lcom/google/android/gms/internal/ads/zzdns;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdx:[Lcom/google/android/gms/internal/ads/zzdns;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdns;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdx:[Lcom/google/android/gms/internal/ads/zzdns;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdns;

    return-object v0
.end method
