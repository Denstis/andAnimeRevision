###### Class com.google.android.gms.internal.ads.zzdrg (com.google.android.gms.internal.ads.zzdrg)
.class public Lcom/google/android/gms/internal/ads/zzdrg;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private zzhlo:Lcom/google/android/gms/internal/ads/zzdsg;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrg;->zzhlo:Lcom/google/android/gms/internal/ads/zzdsg;

    return-void
.end method

.method static zzbac()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbad()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbae()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbaf()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbag()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbah()Lcom/google/android/gms/internal/ads/zzdrf;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrf;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbai()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzo(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrg;->zzhlo:Lcom/google/android/gms/internal/ads/zzdsg;

    return-object p0
.end method
