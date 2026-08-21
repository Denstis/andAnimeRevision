###### Class com.google.android.gms.internal.ads.zzdmh (com.google.android.gms.internal.ads.zzdmh)
.class public final Lcom/google/android/gms/internal/ads/zzdmh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdec;


# instance fields
.field private final zzhau:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzhau:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private static zzf([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5

    const-string p1, "javax.crypto.spec.GCMParameterSpec"

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {p1, v1, p0, v0, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    nop

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdos;->zzaxd()Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p0, v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object p1

    :cond_1b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 14

    array-length v0, p1

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_61

    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    const/16 v2, 0x10

    add-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzff(I)[B

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v3, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdnu;->zzhdz:Lcom/google/android/gms/internal/ads/zzdnu;

    const-string v4, "AES/GCM/NoPadding"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdnu;->zzhf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    array-length v4, v3

    invoke-static {v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzdmh;->zzf([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzhau:Ljavax/crypto/SecretKey;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_34

    array-length v3, p2

    if-eqz v3, :cond_34

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_34
    const/4 v5, 0x0

    array-length v6, p1

    const/16 v8, 0xc

    move-object v3, v1

    move-object v4, p1

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    array-length v1, p1

    add-int/2addr v1, v2

    if-ne p2, v1, :cond_44

    return-object v0

    :cond_44
    array-length p1, p1

    sub-int/2addr p2, p1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v10

    const-string p2, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
