###### Class com.google.android.gms.internal.ads.zzgy (com.google.android.gms.internal.ads.zzgy)
.class public abstract Lcom/google/android/gms/internal/ads/zzgy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzagd:Lcom/google/android/gms/internal/ads/zzgy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgy;->zzagd:Lcom/google/android/gms/internal/ads/zzgy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgy;->zzep()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzhd;I)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {p0, v0, p3, v0}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    const/4 p2, 0x1

    if-nez p1, :cond_31

    const/4 p1, -0x1

    if-eqz p4, :cond_22

    if-eq p4, p2, :cond_20

    const/4 v1, 0x2

    if-ne p4, v1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgy;->zzep()I

    move-result p4

    sub-int/2addr p4, p2

    if-nez p4, :cond_2a

    goto :goto_20

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_20
    :goto_20
    const/4 p2, 0x0

    goto :goto_2a

    :cond_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgy;->zzep()I

    move-result p4

    sub-int/2addr p4, p2

    if-nez p4, :cond_2a

    const/4 p2, -0x1

    :cond_2a
    :goto_2a
    if-ne p2, p1, :cond_2d

    return p1

    :cond_2d
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    return v0

    :cond_31
    add-int/2addr p1, p2

    return p1
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;
    .registers 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;ZJ)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object p1

    return-object p1
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzhd;ZJ)Lcom/google/android/gms/internal/ads/zzhd;
.end method

.method public abstract zzc(Ljava/lang/Object;)I
.end method

.method public abstract zzep()I
.end method

.method public abstract zzeq()I
.end method
