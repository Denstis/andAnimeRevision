###### Class com.google.android.gms.internal.ads.zzdpt (com.google.android.gms.internal.ads.zzdpt)
.class final Lcom/google/android/gms/internal/ads/zzdpt;
.super Lcom/google/android/gms/internal/ads/zzdpw;
.source ""


# instance fields
.field private final zzhgf:I

.field private final zzhgg:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpw;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzh(III)I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzhgf:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzhgg:I

    return-void
.end method


# virtual methods
.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzhgg:I

    return v0
.end method

.method protected final zza([BIII)V
    .registers 6

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgi:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpt;->zzaxr()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zzaxr()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzhgf:I

    return v0
.end method

.method public final zzfm(I)B
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpt;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_47

    if-gez p1, :cond_26

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgi:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzhgf:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method final zzfn(I)B
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgi:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzhgf:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method
