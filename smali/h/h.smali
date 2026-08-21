###### Class h.h (h.h)
.class public final Lh/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lh/h;

.field public static final e:Lh/h;

.field public static final f:Lh/h;

.field public static final g:Lh/h;

.field public static final h:Lh/h;

.field public static final i:Lh/h;

.field public static final j:Lh/h;

.field public static final k:Lh/h;

.field public static final l:Lh/h;

.field public static final m:Lh/h;

.field public static final n:Lh/h;

.field public static final o:Lh/h;

.field public static final p:Lh/h;

.field public static final q:Lh/h;

.field public static final r:Lh/h;

.field public static final s:Lh/h;

.field public static final t:Lh/h;

.field public static final u:Lh/h;

.field public static final v:Lh/h;

.field public static final w:Lh/h;

.field public static final x:Lh/h;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh/h$a;

    invoke-direct {v0}, Lh/h$a;-><init>()V

    sput-object v0, Lh/h;->b:Ljava/util/Comparator;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lh/h;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lh/h;->c:Ljava/util/Map;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->d:Lh/h;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->e:Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->f:Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->g:Lh/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->h:Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->i:Lh/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x41

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x84

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v1, 0x8a

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x8b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x8d

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->j:Lh/h;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->k:Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->l:Lh/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_FALLBACK_SCSV"

    const/16 v1, 0x5600

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->m:Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->n:Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->o:Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->p:Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->q:Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->r:Lh/h;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->s:Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->t:Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->u:Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->v:Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v1, 0xc035

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v1, 0xc036

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca8

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->w:Lh/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca9

    invoke-static {v0, v1}, Lh/h;->a(Ljava/lang/String;I)Lh/h;

    move-result-object v0

    sput-object v0, Lh/h;->x:Lh/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lh/h;->a:Ljava/lang/String;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lh/h;
    .registers 4

    const-class v0, Lh/h;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lh/h;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/h;

    if-nez v1, :cond_17

    new-instance v1, Lh/h;

    invoke-direct {v1, p0}, Lh/h;-><init>(Ljava/lang/String;)V

    sget-object v2, Lh/h;->c:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;I)Lh/h;
    .registers 2

    invoke-static {p0}, Lh/h;->a(Ljava/lang/String;)Lh/h;

    move-result-object p0

    return-object p0
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    invoke-static {v3}, Lh/h;->a(Ljava/lang/String;)Lh/h;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/h;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class h.h.a (h.h$a)
.class final Lh/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    :goto_d
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v0, :cond_23

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_20

    if-ge v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x1

    :goto_1f
    return v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_32

    if-ge p1, p2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x1

    :goto_31
    return v2

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lh/h$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
