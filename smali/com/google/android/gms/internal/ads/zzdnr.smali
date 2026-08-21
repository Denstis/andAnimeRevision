###### Class com.google.android.gms.internal.ads.zzdnr (com.google.android.gms.internal.ads.zzdnr)
.class public final Lcom/google/android/gms/internal/ads/zzdnr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdec;


# instance fields
.field private final zzhdr:Lcom/google/android/gms/internal/ads/zzdof;

.field private final zzhds:Lcom/google/android/gms/internal/ads/zzdet;

.field private final zzhdt:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdof;Lcom/google/android/gms/internal/ads/zzdet;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhdr:Lcom/google/android/gms/internal/ads/zzdof;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhds:Lcom/google/android/gms/internal/ads/zzdet;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhdt:I

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhdr:Lcom/google/android/gms/internal/ads/zzdof;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdof;->zzo([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_b

    new-array p2, v0, [B

    :cond_b
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x8

    array-length v5, p2

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhds:Lcom/google/android/gms/internal/ads/zzdet;

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p2, v3, v0

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzdet;->zzk([B)[B

    move-result-object v1

    new-array v2, v4, [[B

    aput-object p1, v2, v0

    aput-object v1, v2, p2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
