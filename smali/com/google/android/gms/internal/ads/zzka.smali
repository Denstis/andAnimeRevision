###### Class com.google.android.gms.internal.ads.zzka (com.google.android.gms.internal.ads.zzka)
.class final Lcom/google/android/gms/internal/ads/zzka;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjv;


# instance fields
.field private final zzaut:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzavc:I

.field private final zzavf:I

.field private zzavg:I

.field private zzavh:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzju;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavc:I

    return-void
.end method


# virtual methods
.method public final zzgj()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavc:I

    return v0
.end method

.method public final zzgk()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavf:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    return v0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v0

    return v0

    :cond_18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavg:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavh:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavh:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_31
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zzavh:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final zzgl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
