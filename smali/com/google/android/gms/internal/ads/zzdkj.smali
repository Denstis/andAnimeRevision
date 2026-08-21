###### Class com.google.android.gms.internal.ads.zzdkj (com.google.android.gms.internal.ads.zzdkj)
.class public final enum Lcom/google/android/gms/internal/ads/zzdkj;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdkj;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdra;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdqz<",
            "Lcom/google/android/gms/internal/ads/zzdkj;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzgza:Lcom/google/android/gms/internal/ads/zzdkj;

.field public static final enum zzgzb:Lcom/google/android/gms/internal/ads/zzdkj;

.field public static final enum zzgzc:Lcom/google/android/gms/internal/ads/zzdkj;

.field public static final enum zzgzd:Lcom/google/android/gms/internal/ads/zzdkj;

.field public static final enum zzgze:Lcom/google/android/gms/internal/ads/zzdkj;

.field public static final enum zzgzf:Lcom/google/android/gms/internal/ads/zzdkj;

.field private static final synthetic zzgzg:[Lcom/google/android/gms/internal/ads/zzdkj;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_PREFIX"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgza:Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v2, 0x1

    const-string v3, "TINK"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzb:Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v3, 0x2

    const-string v4, "LEGACY"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzc:Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v4, 0x3

    const-string v5, "RAW"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzd:Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v5, 0x4

    const-string v6, "CRUNCHY"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgze:Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v6, 0x5

    const-string v7, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzf:Lcom/google/android/gms/internal/ads/zzdkj;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdkj;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdkj;->zzgza:Lcom/google/android/gms/internal/ads/zzdkj;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzb:Lcom/google/android/gms/internal/ads/zzdkj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzc:Lcom/google/android/gms/internal/ads/zzdkj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzd:Lcom/google/android/gms/internal/ads/zzdkj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgze:Lcom/google/android/gms/internal/ads/zzdkj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzf:Lcom/google/android/gms/internal/ads/zzdkj;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzg:[Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzeg:Lcom/google/android/gms/internal/ads/zzdqz;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdkj;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdkj;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzg:[Lcom/google/android/gms/internal/ads/zzdkj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdkj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdkj;

    return-object v0
.end method

.method public static zzez(I)Lcom/google/android/gms/internal/ads/zzdkj;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgze:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzd:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzc:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzb:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgza:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/ads/zzdkj;

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

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzf:Lcom/google/android/gms/internal/ads/zzdkj;

    if-eq p0, v1, :cond_30

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdkj;->zzab()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_30
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
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzf:Lcom/google/android/gms/internal/ads/zzdkj;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdkj;->value:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzdki (com.google.android.gms.internal.ads.zzdki)
.class final Lcom/google/android/gms/internal/ads/zzdki;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqz<",
        "Lcom/google/android/gms/internal/ads/zzdkj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
