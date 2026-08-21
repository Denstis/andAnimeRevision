###### Class com.google.android.gms.internal.ads.zzdfe (com.google.android.gms.internal.ads.zzdfe)
.class final Lcom/google/android/gms/internal/ads/zzdfe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdef<",
        "Lcom/google/android/gms/internal/ads/zzdec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzapm()Lcom/google/android/gms/internal/ads/zzdex;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdex<",
            "Lcom/google/android/gms/internal/ads/zzdec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfg;-><init>()V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzden;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzden<",
            "Lcom/google/android/gms/internal/ads/zzdec;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x2d9f47

    if-eq v1, v4, :cond_10

    goto :goto_1a

    :cond_10
    const-string v1, "aead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, -0x1

    :goto_1b
    const/4 v1, 0x1

    if-nez v0, :cond_c5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x2

    sparse-switch p2, :sswitch_data_d6

    goto :goto_6c

    :sswitch_27
    const-string p2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x5

    goto :goto_6c

    :sswitch_31
    const-string p2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x2

    goto :goto_6c

    :sswitch_3b
    const-string p2, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x1

    goto :goto_6c

    :sswitch_45
    const-string p2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x4

    goto :goto_6c

    :sswitch_4f
    const-string p2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x0

    goto :goto_6c

    :sswitch_59
    const-string p2, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x3

    goto :goto_6c

    :sswitch_63
    const-string p2, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const/4 v2, 0x6

    :cond_6c
    :goto_6c
    packed-switch v2, :pswitch_data_f4

    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "No support for primitive \'Aead\' with key type \'%s\'."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_7f
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfo;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfo;-><init>()V

    goto :goto_a8

    :pswitch_85
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfp;-><init>()V

    goto :goto_a8

    :pswitch_8b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfn;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfn;-><init>()V

    goto :goto_a8

    :pswitch_91
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfk;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfk;-><init>()V

    goto :goto_a8

    :pswitch_97
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>()V

    goto :goto_a8

    :pswitch_9d
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfi;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfi;-><init>()V

    goto :goto_a8

    :pswitch_a3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfh;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdfh;-><init>()V

    :goto_a8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzden;->getVersion()I

    move-result v2

    if-lt v2, p3, :cond_af

    return-object p2

    :cond_af
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "No key manager for key type \'%s\' with version at least %d."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c5
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v3

    const-string p2, "No support for primitive \'%s\'."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_d6
    .sparse-switch
        0xe9b3aa4 -> :sswitch_63
        0x1580a8e0 -> :sswitch_59
        0x4878f271 -> :sswitch_4f
        0x579e3055 -> :sswitch_45
        0x6b1dc604 -> :sswitch_3b
        0x6e9ea62f -> :sswitch_31
        0x7bee4165 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
    .end packed-switch
.end method
