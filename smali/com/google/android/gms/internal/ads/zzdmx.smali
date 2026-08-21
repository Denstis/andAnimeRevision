###### Class com.google.android.gms.internal.ads.zzdmx (com.google.android.gms.internal.ads.zzdmx)
.class public final Lcom/google/android/gms/internal/ads/zzdmx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdel;


# static fields
.field private static final zzgtg:[B


# instance fields
.field private final zzhby:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzhbz:Ljava/lang/String;

.field private final zzhca:[B

.field private final zzhcb:Lcom/google/android/gms/internal/ads/zzdns;

.field private final zzhcc:Lcom/google/android/gms/internal/ads/zzdmv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdmx;->zzgtg:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdns;Lcom/google/android/gms/internal/ads/zzdmv;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdno;->zza(Ljava/security/interfaces/ECPublicKey;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhby:Lcom/google/android/gms/internal/ads/zzdmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhca:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhbz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhcb:Lcom/google/android/gms/internal/ads/zzdns;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhcc:Lcom/google/android/gms/internal/ads/zzdmv;

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhby:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhbz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhca:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhcc:Lcom/google/android/gms/internal/ads/zzdmv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdmv;->zzaqa()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhcb:Lcom/google/android/gms/internal/ads/zzdns;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdmz;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/zzdns;)Lcom/google/android/gms/internal/ads/zzdnc;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzhcc:Lcom/google/android/gms/internal/ads/zzdmv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdnc;->zzawx()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmv;->zzl([B)Lcom/google/android/gms/internal/ads/zzdec;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmx;->zzgtg:[B

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdec;->zzc([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdnc;->zzaww()[B

    move-result-object p2

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
