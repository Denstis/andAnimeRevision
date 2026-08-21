###### Class com.google.android.gms.common.util.HexDumpUtils (com.google.android.gms.common.util.HexDumpUtils)
.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .registers 15
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    if-eqz p0, :cond_c0

    array-length v0, p0

    if-eqz v0, :cond_c0

    if-ltz p1, :cond_c0

    if-lez p2, :cond_c0

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_10

    goto/16 :goto_c0

    :cond_10
    const/16 v0, 0x39

    if-eqz p3, :cond_16

    const/16 v0, 0x4b

    :cond_16
    add-int/lit8 v1, p2, 0x10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x10

    div-int/2addr v1, v3

    mul-int v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v5, p1

    move p1, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_29
    if-lez p1, :cond_bb

    const/16 v7, 0x8

    if-nez v4, :cond_55

    const/high16 v6, 0x10000

    if-ge p2, v6, :cond_42

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v8, "%04X:"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_50

    :cond_42
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v8, "%08X:"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_50
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_5c

    :cond_55
    if-ne v4, v7, :cond_5c

    const-string v8, " -"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    :goto_5c
    new-array v8, v2, [Ljava/lang/Object;

    aget-byte v9, p0, v5

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, " %02X"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v4, v4, 0x1

    if-eqz p3, :cond_ad

    if-eq v4, v3, :cond_7b

    if-nez p1, :cond_ad

    :cond_7b
    rsub-int/lit8 v8, v4, 0x10

    if-lez v8, :cond_8a

    const/4 v9, 0x0

    :goto_80
    if-ge v9, v8, :cond_8a

    const-string v10, "   "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_80

    :cond_8a
    const-string v9, "  "

    if-lt v8, v7, :cond_91

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_95
    if-ge v7, v4, :cond_ad

    add-int v8, v6, v7

    aget-byte v8, p0, v8

    int-to-char v8, v8

    const/16 v9, 0x20

    if-lt v8, v9, :cond_a5

    const/16 v9, 0x7e

    if-gt v8, v9, :cond_a5

    goto :goto_a7

    :cond_a5
    const/16 v8, 0x2e

    :goto_a7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    :cond_ad
    if-eq v4, v3, :cond_b1

    if-nez p1, :cond_b7

    :cond_b1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_29

    :cond_bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c0
    :goto_c0
    const/4 p0, 0x0

    return-object p0
.end method
