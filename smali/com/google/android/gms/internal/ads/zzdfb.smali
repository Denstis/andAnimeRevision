###### Class com.google.android.gms.internal.ads.zzdfb (com.google.android.gms.internal.ads.zzdfb)
.class final Lcom/google/android/gms/internal/ads/zzdfb;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfb;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdjx;)Lcom/google/android/gms/internal/ads/zzdjy;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjy;->zzaus()Lcom/google/android/gms/internal/ads/zzdjy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzaui()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdjy$zza;->zzev(I)Lcom/google/android/gms/internal/ads/zzdjy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzauj()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdjx$zza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjy$zzb;->zzauu()Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzauo()Lcom/google/android/gms/internal/ads/zzdjn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdjn;->zzatu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;->zzhc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaps()Lcom/google/android/gms/internal/ads/zzdjr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdjr;)Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzapt()Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdkj;)Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaup()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;->zzew(I)Lcom/google/android/gms/internal/ads/zzdjy$zzb$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdjy$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdjy$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdjy$zzb;)Lcom/google/android/gms/internal/ads/zzdjy$zza;

    goto :goto_14

    :cond_52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdjy;

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdjx;)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzaui()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzauj()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdjx$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaps()Lcom/google/android/gms/internal/ads/zzdjr;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdjr;->zzgxv:Lcom/google/android/gms/internal/ads/zzdjr;

    if-ne v7, v8, :cond_11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaun()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzapt()Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdkj;->zzgza:Lcom/google/android/gms/internal/ads/zzdkj;

    if-eq v7, v8, :cond_75

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaps()Lcom/google/android/gms/internal/ads/zzdjr;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdjr;->zzgxu:Lcom/google/android/gms/internal/ads/zzdjr;

    if-eq v7, v8, :cond_5d

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaup()I

    move-result v7

    if-ne v7, v0, :cond_4d

    if-nez v4, :cond_45

    const/4 v4, 0x1

    goto :goto_4d

    :cond_45
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    :goto_4d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzauo()Lcom/google/android/gms/internal/ads/zzdjn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjn;->zzatw()Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdjn$zzb;->zzgxq:Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    if-eq v6, v7, :cond_5a

    const/4 v5, 0x0

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_5d
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaup()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaup()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown prefix"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzaup()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has no key data"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    if-eqz v3, :cond_b5

    if-nez v4, :cond_b4

    if-eqz v5, :cond_ac

    goto :goto_b4

    :cond_ac
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b4
    :goto_b4
    return-void

    :cond_b5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_be

    :goto_bd
    throw p0

    :goto_be
    goto :goto_bd
.end method

.method public static zzg(Ljava/io/InputStream;)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
