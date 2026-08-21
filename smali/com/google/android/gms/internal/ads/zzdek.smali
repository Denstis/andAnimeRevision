###### Class com.google.android.gms.internal.ads.zzdek (com.google.android.gms.internal.ads.zzdek)
.class public final Lcom/google/android/gms/internal/ads/zzdek;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdeo;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final zzbey:Ljava/io/InputStream;

.field private final zzgsj:Lorg/json/JSONObject;

.field private zzgsk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdek;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgsk:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzbey:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgsj:Lorg/json/JSONObject;

    return-void
.end method

.method public static zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzdeo;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdek;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdek;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final zzapn()Lcom/google/android/gms/internal/ads/zzdjx;
    .registers 16

    const-string v0, "keyMaterialType"

    const-string v1, "value"

    const-string v2, "typeUrl"

    const-string v3, "outputPrefixType"

    const-string v4, "keyId"

    const-string v5, "status"

    const-string v6, "keyData"

    const-string v7, "primaryKeyId"

    const-string v8, "key"

    :try_start_12
    new-instance v9, Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzbey:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdfb;->zzg(Ljava/io/InputStream;)[B

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdek;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_1b8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjx;->zzaul()Lcom/google/android/gms/internal/ads/zzdjx$zzb;

    move-result-object v10

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzdjx$zzb;->zzet(I)Lcom/google/android/gms/internal/ads/zzdjx$zzb;

    :cond_45
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    :goto_4a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1af

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a7

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a7

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a7

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjx$zza;->zzauq()Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;

    move-result-object v11

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ENABLED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7f

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdjr;->zzgxv:Lcom/google/android/gms/internal/ads/zzdjr;

    goto :goto_89

    :cond_7f
    const-string v13, "DISABLED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18a

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdjr;->zzgxw:Lcom/google/android/gms/internal/ads/zzdjr;

    :goto_89
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdjr;)Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;

    move-result-object v11

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;->zzeu(I)Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;

    move-result-object v11

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TINK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a4

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzb:Lcom/google/android/gms/internal/ads/zzdkj;

    goto :goto_c4

    :cond_a4
    const-string v13, "RAW"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_af

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzd:Lcom/google/android/gms/internal/ads/zzdkj;

    goto :goto_c4

    :cond_af
    const-string v13, "LEGACY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ba

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdkj;->zzgzc:Lcom/google/android/gms/internal/ads/zzdkj;

    goto :goto_c4

    :cond_ba
    const-string v13, "CRUNCHY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16d

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdkj;->zzgze:Lcom/google/android/gms/internal/ads/zzdkj;

    :goto_c4
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdkj;)Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;

    move-result-object v11

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_165

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_165

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_165

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzdmm;->decode(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjn;->zzatx()Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object v13

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzdjn$zza;->zzgw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object v13

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzdjn$zza;->zzbo(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object v12

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "SYMMETRIC"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_109

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdjn$zzb;->zzgxo:Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    goto :goto_129

    :cond_109
    const-string v13, "ASYMMETRIC_PRIVATE"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_114

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdjn$zzb;->zzgxp:Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    goto :goto_129

    :cond_114
    const-string v13, "ASYMMETRIC_PUBLIC"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11f

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdjn$zzb;->zzgxq:Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    goto :goto_129

    :cond_11f
    const-string v13, "REMOTE"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_148

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdjn$zzb;->zzgxr:Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    :goto_129
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzdjn$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdjn$zzb;)Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdjn;

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdjn;)Lcom/google/android/gms/internal/ads/zzdjx$zza$zza;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdjx$zza;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzdjx$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdjx$zza;)Lcom/google/android/gms/internal/ads/zzdjx$zzb;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4a

    :cond_148
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "unknown key material type: "

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_161

    :cond_15b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_161
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_165
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid keyData"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16d
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "unknown output prefix type: "

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_180

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_186

    :cond_180
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_186
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18a
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "unknown status: "

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a3

    :cond_19d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1a3
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a7
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid key"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1af
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdjx;

    return-object v0

    :cond_1b8
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid keyset"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c0
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1c0} :catch_1c0

    :catch_1c0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1c8

    :goto_1c7
    throw v1

    :goto_1c8
    goto :goto_1c7
.end method
