###### Class com.google.android.gms.internal.ads.zzdmy (com.google.android.gms.internal.ads.zzdmy)
.class public final Lcom/google/android/gms/internal/ads/zzdmy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdei;


# static fields
.field private static final zzgtg:[B


# instance fields
.field private final zzhbz:Ljava/lang/String;

.field private final zzhca:[B

.field private final zzhcb:Lcom/google/android/gms/internal/ads/zzdns;

.field private final zzhcc:Lcom/google/android/gms/internal/ads/zzdmv;

.field private final zzhcd:Ljava/security/interfaces/ECPrivateKey;

.field private final zzhce:Lcom/google/android/gms/internal/ads/zzdna;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdmy;->zzgtg:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdns;Lcom/google/android/gms/internal/ads/zzdmv;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzhcd:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdna;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzhce:Lcom/google/android/gms/internal/ads/zzdna;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzhca:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzhbz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzhcb:Lcom/google/android/gms/internal/ads/zzdns;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzhcc:Lcom/google/android/gms/internal/ads/zzdmv;

    return-void
.end method
