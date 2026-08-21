###### Class com.google.android.gms.internal.ads.zzdvm (com.google.android.gms.internal.ads.zzdvm)
.class public abstract Lcom/google/android/gms/internal/ads/zzdvm;
.super Lcom/google/android/gms/internal/ads/zzdvk;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbb;


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdvk;->zzhwo:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzbdb()V

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->version:I

    return v0
.end method

.method protected final zzo(Ljava/nio/ByteBuffer;)J
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbc;->zza(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->version:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Ljava/nio/ByteBuffer;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbc;->zza(B)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->flags:I

    const-wide/16 v0, 0x4

    return-wide v0
.end method
