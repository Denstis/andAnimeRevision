###### Class com.google.android.gms.internal.ads.zzais (com.google.android.gms.internal.ads.zzais)
.class public final Lcom/google/android/gms/internal/ads/zzais;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zzday:Lcom/google/android/gms/internal/ads/zzait;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzait<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzdaz:Lcom/google/android/gms/internal/ads/zzair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzair<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzais;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzais;->zzday:Lcom/google/android/gms/internal/ads/zzait;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdba:Lcom/google/android/gms/internal/ads/zzair;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzais;->zzdaz:Lcom/google/android/gms/internal/ads/zzair;

    return-void
.end method

.method static final synthetic zze(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzais;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
