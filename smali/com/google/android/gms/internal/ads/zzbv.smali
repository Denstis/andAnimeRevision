###### Class com.google.android.gms.internal.ads.zzbv (com.google.android.gms.internal.ads.zzbv)
.class public final enum Lcom/google/android/gms/internal/ads/zzbv;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbv;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdra;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdqz<",
            "Lcom/google/android/gms/internal/ads/zzbv;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzko:Lcom/google/android/gms/internal/ads/zzbv;

.field private static final enum zzkp:Lcom/google/android/gms/internal/ads/zzbv;

.field public static final enum zzkq:Lcom/google/android/gms/internal/ads/zzbv;

.field private static final enum zzkr:Lcom/google/android/gms/internal/ads/zzbv;

.field private static final synthetic zzks:[Lcom/google/android/gms/internal/ads/zzbv;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_ENCRYPTION_METHOD"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzko:Lcom/google/android/gms/internal/ads/zzbv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v2, 0x1

    const-string v3, "BITSLICER"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzkp:Lcom/google/android/gms/internal/ads/zzbv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v3, 0x2

    const-string v4, "TINK_HYBRID"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzkq:Lcom/google/android/gms/internal/ads/zzbv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v4, 0x3

    const-string v5, "UNENCRYPTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzkr:Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbv;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbv;->zzko:Lcom/google/android/gms/internal/ads/zzbv;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbv;->zzkp:Lcom/google/android/gms/internal/ads/zzbv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbv;->zzkq:Lcom/google/android/gms/internal/ads/zzbv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbv;->zzkr:Lcom/google/android/gms/internal/ads/zzbv;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzks:[Lcom/google/android/gms/internal/ads/zzbv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzeg:Lcom/google/android/gms/internal/ads/zzdqz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbv;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbv;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zzks:[Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbv;

    return-object v0
.end method

.method public static zzac()Lcom/google/android/gms/internal/ads/zzdrc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbw;->zzep:Lcom/google/android/gms/internal/ads/zzdrc;

    return-object v0
.end method

.method public static zzi(I)Lcom/google/android/gms/internal/ads/zzbv;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbv;->zzkr:Lcom/google/android/gms/internal/ads/zzbv;

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbv;->zzkq:Lcom/google/android/gms/internal/ads/zzbv;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbv;->zzkp:Lcom/google/android/gms/internal/ads/zzbv;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbv;->zzko:Lcom/google/android/gms/internal/ads/zzbv;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbv;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzab()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbv;->value:I

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzbx (com.google.android.gms.internal.ads.zzbx)
.class final Lcom/google/android/gms/internal/ads/zzbx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqz<",
        "Lcom/google/android/gms/internal/ads/zzbv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
