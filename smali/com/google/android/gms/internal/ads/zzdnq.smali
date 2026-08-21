###### Class com.google.android.gms.internal.ads.zzdnq (com.google.android.gms.internal.ads.zzdnq)
.class public final enum Lcom/google/android/gms/internal/ads/zzdnq;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdnq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzhdn:Lcom/google/android/gms/internal/ads/zzdnq;

.field public static final enum zzhdo:Lcom/google/android/gms/internal/ads/zzdnq;

.field public static final enum zzhdp:Lcom/google/android/gms/internal/ads/zzdnq;

.field private static final synthetic zzhdq:[Lcom/google/android/gms/internal/ads/zzdnq;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnq;

    const/4 v1, 0x0

    const-string v2, "NIST_P256"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdn:Lcom/google/android/gms/internal/ads/zzdnq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnq;

    const/4 v2, 0x1

    const-string v3, "NIST_P384"

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdo:Lcom/google/android/gms/internal/ads/zzdnq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnq;

    const/4 v3, 0x2

    const-string v4, "NIST_P521"

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzdnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdp:Lcom/google/android/gms/internal/ads/zzdnq;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdnq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdn:Lcom/google/android/gms/internal/ads/zzdnq;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdo:Lcom/google/android/gms/internal/ads/zzdnq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdp:Lcom/google/android/gms/internal/ads/zzdnq;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdq:[Lcom/google/android/gms/internal/ads/zzdnq;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzdnq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdq:[Lcom/google/android/gms/internal/ads/zzdnq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdnq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdnq;

    return-object v0
.end method
