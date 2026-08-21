###### Class h.h0.i.d (h.h0.i.d)
.class final Lh/h0/i/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/i/d$b;,
        Lh/h0/i/d$a;
    }
.end annotation


# static fields
.field static final a:[Lh/h0/i/c;

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3d

    new-array v0, v0, [Lh/h0/i/c;

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->i:Li/f;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->f:Li/f;

    const-string v4, "GET"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->f:Li/f;

    const-string v4, "POST"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->g:Li/f;

    const-string v4, "/"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->g:Li/f;

    const-string v4, "/index.html"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->h:Li/f;

    const-string v4, "http"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->h:Li/f;

    const-string v4, "https"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "200"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "204"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "206"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "304"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "400"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "404"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    sget-object v2, Lh/h0/i/c;->e:Li/f;

    const-string v4, "500"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "accept-charset"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "accept-encoding"

    const-string v4, "gzip, deflate"

    invoke-direct {v1, v2, v4}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "accept-language"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "accept-ranges"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "accept"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "access-control-allow-origin"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "age"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "allow"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "authorization"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "cache-control"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-disposition"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-encoding"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-language"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-length"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-location"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-range"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "content-type"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "cookie"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "date"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "etag"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "expect"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "expires"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "from"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "host"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "if-match"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "if-modified-since"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "if-none-match"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "if-range"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "if-unmodified-since"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "last-modified"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "link"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "location"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "max-forwards"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "proxy-authenticate"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "proxy-authorization"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "range"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "referer"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "refresh"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "retry-after"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "server"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "set-cookie"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "strict-transport-security"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "transfer-encoding"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "user-agent"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "vary"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "via"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lh/h0/i/c;

    const-string v2, "www-authenticate"

    invoke-direct {v1, v2, v3}, Lh/h0/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sput-object v0, Lh/h0/i/d;->a:[Lh/h0/i/c;

    invoke-static {}, Lh/h0/i/d;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lh/h0/i/d;->b:Ljava/util/Map;

    return-void
.end method

.method static a(Li/f;)Li/f;
    .registers 5

    invoke-virtual {p0}, Li/f;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_32

    invoke-virtual {p0, v1}, Li/f;->a(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x5a

    if-le v2, v3, :cond_14

    goto :goto_2f

    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/f;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_32
    return-object p0
.end method

.method private static a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Li/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    sget-object v2, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aget-object v2, v2, v1

    iget-object v2, v2, Lh/h0/i/c;->a:Li/f;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lh/h0/i/d;->a:[Lh/h0/i/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lh/h0/i/c;->a:Li/f;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class h.h0.i.d.a (h.h0.i.d$a)
.class final Lh/h0/i/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Li/e;

.field private final c:I

.field private d:I

.field e:[Lh/h0/i/c;

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(IILi/s;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lh/h0/i/c;

    iput-object v0, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    iget-object v0, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/h0/i/d$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/i/d$a;->g:I

    iput v0, p0, Lh/h0/i/d$a;->h:I

    iput p1, p0, Lh/h0/i/d$a;->c:I

    iput p2, p0, Lh/h0/i/d$a;->d:I

    invoke-static {p3}, Li/l;->a(Li/s;)Li/e;

    move-result-object p1

    iput-object p1, p0, Lh/h0/i/d$a;->b:Li/e;

    return-void
.end method

.method constructor <init>(ILi/s;)V
    .registers 3

    invoke-direct {p0, p1, p1, p2}, Lh/h0/i/d$a;-><init>(IILi/s;)V

    return-void
.end method

.method private a(I)I
    .registers 3

    iget v0, p0, Lh/h0/i/d$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private a(ILh/h0/i/c;)V
    .registers 8

    iget-object v0, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lh/h0/i/c;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    iget-object v2, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    invoke-direct {p0, p1}, Lh/h0/i/d$a;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lh/h0/i/c;->c:I

    sub-int/2addr v0, v2

    :cond_15
    iget v2, p0, Lh/h0/i/d$a;->d:I

    if-le v0, v2, :cond_1d

    invoke-direct {p0}, Lh/h0/i/d$a;->e()V

    return-void

    :cond_1d
    iget v3, p0, Lh/h0/i/d$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lh/h0/i/d$a;->b(I)I

    move-result v2

    if-ne p1, v1, :cond_55

    iget p1, p0, Lh/h0/i/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v2, v1

    if-le p1, v2, :cond_44

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lh/h0/i/c;

    const/4 v2, 0x0

    array-length v3, v1

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lh/h0/i/d$a;->f:I

    iput-object p1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    :cond_44
    iget p1, p0, Lh/h0/i/d$a;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lh/h0/i/d$a;->f:I

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    aput-object p2, v1, p1

    iget p1, p0, Lh/h0/i/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lh/h0/i/d$a;->g:I

    goto :goto_5f

    :cond_55
    invoke-direct {p0, p1}, Lh/h0/i/d$a;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    aput-object p2, v1, p1

    :goto_5f
    iget p1, p0, Lh/h0/i/d$a;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lh/h0/i/d$a;->h:I

    return-void
.end method

.method private b(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_3c

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lh/h0/i/d$a;->f:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    iget-object v2, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    aget-object v3, v2, v1

    iget v3, v3, Lh/h0/i/c;->c:I

    sub-int/2addr p1, v3

    iget v3, p0, Lh/h0/i/d$a;->h:I

    aget-object v2, v2, v1

    iget v2, v2, Lh/h0/i/c;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lh/h0/i/d$a;->h:I

    iget v2, p0, Lh/h0/i/d$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lh/h0/i/d$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_29
    iget-object p1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    iget v1, p0, Lh/h0/i/d$a;->f:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lh/h0/i/d$a;->g:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lh/h0/i/d$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lh/h0/i/d$a;->f:I

    :cond_3c
    return v0
.end method

.method private c(I)Li/f;
    .registers 5

    invoke-direct {p0, p1}, Lh/h0/i/d$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lh/h0/i/d;->a:[Lh/h0/i/c;

    aget-object p1, v0, p1

    :goto_a
    iget-object p1, p1, Lh/h0/i/c;->a:Li/f;

    return-object p1

    :cond_d
    sget-object v0, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lh/h0/i/d$a;->a(I)I

    move-result v0

    if-ltz v0, :cond_20

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-object p1, v1, v0

    goto :goto_a

    :cond_20
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_39
    throw v0

    :goto_3a
    goto :goto_39
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lh/h0/i/d$a;->d:I

    iget v1, p0, Lh/h0/i/d$a;->h:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    invoke-direct {p0}, Lh/h0/i/d$a;->e()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lh/h0/i/d$a;->b(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private d(I)Z
    .registers 4

    const/4 v0, 0x1

    if-ltz p1, :cond_a

    sget-object v1, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/h0/i/d$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/i/d$a;->g:I

    iput v0, p0, Lh/h0/i/d$a;->h:I

    return-void
.end method

.method private e(I)V
    .registers 5

    invoke-direct {p0, p1}, Lh/h0/i/d$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lh/h0/i/d;->a:[Lh/h0/i/c;

    aget-object p1, v0, p1

    iget-object v0, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_10
    sget-object v0, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lh/h0/i/d$a;->a(I)I

    move-result v0

    if-ltz v0, :cond_28

    iget-object v1, p0, Lh/h0/i/d$a;->e:[Lh/h0/i/c;

    array-length v2, v1

    if-ge v0, v2, :cond_28

    iget-object p1, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    return-void

    :cond_28
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lh/h0/i/d$a;->b:Li/e;

    invoke-interface {v0}, Li/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private f(I)V
    .registers 4

    invoke-direct {p0, p1}, Lh/h0/i/d$a;->c(I)Li/f;

    move-result-object p1

    invoke-virtual {p0}, Lh/h0/i/d$a;->b()Li/f;

    move-result-object v0

    new-instance v1, Lh/h0/i/c;

    invoke-direct {v1, p1, v0}, Lh/h0/i/c;-><init>(Li/f;Li/f;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lh/h0/i/d$a;->a(ILh/h0/i/c;)V

    return-void
.end method

.method private g()V
    .registers 4

    invoke-virtual {p0}, Lh/h0/i/d$a;->b()Li/f;

    move-result-object v0

    invoke-static {v0}, Lh/h0/i/d;->a(Li/f;)Li/f;

    invoke-virtual {p0}, Lh/h0/i/d$a;->b()Li/f;

    move-result-object v1

    new-instance v2, Lh/h0/i/c;

    invoke-direct {v2, v0, v1}, Lh/h0/i/c;-><init>(Li/f;Li/f;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lh/h0/i/d$a;->a(ILh/h0/i/c;)V

    return-void
.end method

.method private g(I)V
    .registers 5

    invoke-direct {p0, p1}, Lh/h0/i/d$a;->c(I)Li/f;

    move-result-object p1

    invoke-virtual {p0}, Lh/h0/i/d$a;->b()Li/f;

    move-result-object v0

    iget-object v1, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    new-instance v2, Lh/h0/i/c;

    invoke-direct {v2, p1, v0}, Lh/h0/i/c;-><init>(Li/f;Li/f;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h()V
    .registers 5

    invoke-virtual {p0}, Lh/h0/i/d$a;->b()Li/f;

    move-result-object v0

    invoke-static {v0}, Lh/h0/i/d;->a(Li/f;)Li/f;

    invoke-virtual {p0}, Lh/h0/i/d$a;->b()Li/f;

    move-result-object v1

    iget-object v2, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    new-instance v3, Lh/h0/i/c;

    invoke-direct {v3, v0, v1}, Lh/h0/i/c;-><init>(Li/f;Li/f;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method a(II)I
    .registers 5

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_4

    return p1

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-direct {p0}, Lh/h0/i/d$a;->f()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_14

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_5

    :cond_14
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lh/h0/i/d$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method b()Li/f;
    .registers 6

    invoke-direct {p0}, Lh/h0/i/d$a;->f()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lh/h0/i/d$a;->a(II)I

    move-result v0

    if-eqz v1, :cond_29

    invoke-static {}, Lh/h0/i/k;->b()Lh/h0/i/k;

    move-result-object v1

    iget-object v2, p0, Lh/h0/i/d$a;->b:Li/e;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Li/e;->d(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/h0/i/k;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Li/f;->a([B)Li/f;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v1, p0, Lh/h0/i/d$a;->b:Li/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Li/e;->b(J)Li/f;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lh/h0/i/d$a;->b:Li/e;

    invoke-interface {v0}, Li/e;->c()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lh/h0/i/d$a;->b:Li/e;

    invoke-interface {v0}, Li/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_88

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_24

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lh/h0/i/d$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lh/h0/i/d$a;->e(I)V

    goto :goto_0

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lh/h0/i/d$a;->g()V

    goto :goto_0

    :cond_2c
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3c

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lh/h0/i/d$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lh/h0/i/d$a;->f(I)V

    goto :goto_0

    :cond_3c
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lh/h0/i/d$a;->a(II)I

    move-result v0

    iput v0, p0, Lh/h0/i/d$a;->d:I

    iget v0, p0, Lh/h0/i/d$a;->d:I

    if-ltz v0, :cond_56

    iget v1, p0, Lh/h0/i/d$a;->c:I

    if-gt v0, v1, :cond_56

    invoke-direct {p0}, Lh/h0/i/d$a;->d()V

    goto :goto_0

    :cond_56
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh/h0/i/d$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    const/16 v1, 0x10

    if-eq v0, v1, :cond_83

    if-nez v0, :cond_76

    goto :goto_83

    :cond_76
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lh/h0/i/d$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lh/h0/i/d$a;->g(I)V

    goto/16 :goto_0

    :cond_83
    :goto_83
    invoke-direct {p0}, Lh/h0/i/d$a;->h()V

    goto/16 :goto_0

    :cond_88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    return-void
.end method

###### Class h.h0.i.d.b (h.h0.i.d$b)
.class final Lh/h0/i/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Li/c;

.field private final b:Z

.field private c:I

.field private d:Z

.field e:I

.field f:[Lh/h0/i/c;

.field g:I

.field h:I

.field i:I


# direct methods
.method constructor <init>(IZLi/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lh/h0/i/d$b;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [Lh/h0/i/c;

    iput-object v0, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    iget-object v0, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/h0/i/d$b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/i/d$b;->h:I

    iput v0, p0, Lh/h0/i/d$b;->i:I

    iput p1, p0, Lh/h0/i/d$b;->e:I

    iput-boolean p2, p0, Lh/h0/i/d$b;->b:Z

    iput-object p3, p0, Lh/h0/i/d$b;->a:Li/c;

    return-void
.end method

.method constructor <init>(Li/c;)V
    .registers 4

    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lh/h0/i/d$b;-><init>(IZLi/c;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget v0, p0, Lh/h0/i/d$b;->e:I

    iget v1, p0, Lh/h0/i/d$b;->i:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    invoke-direct {p0}, Lh/h0/i/d$b;->b()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lh/h0/i/d$b;->b(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private a(Lh/h0/i/c;)V
    .registers 8

    iget v0, p1, Lh/h0/i/c;->c:I

    iget v1, p0, Lh/h0/i/d$b;->e:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lh/h0/i/d$b;->b()V

    return-void

    :cond_a
    iget v2, p0, Lh/h0/i/d$b;->i:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lh/h0/i/d$b;->b(I)I

    iget v1, p0, Lh/h0/i/d$b;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lh/h0/i/c;

    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lh/h0/i/d$b;->g:I

    iput-object v1, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    :cond_2e
    iget v1, p0, Lh/h0/i/d$b;->g:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lh/h0/i/d$b;->g:I

    iget-object v2, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    aput-object p1, v2, v1

    iget p1, p0, Lh/h0/i/d$b;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lh/h0/i/d$b;->h:I

    iget p1, p0, Lh/h0/i/d$b;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lh/h0/i/d$b;->i:I

    return-void
.end method

.method private b(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_49

    iget-object v1, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lh/h0/i/d$b;->g:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    iget-object v2, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    aget-object v3, v2, v1

    iget v3, v3, Lh/h0/i/c;->c:I

    sub-int/2addr p1, v3

    iget v3, p0, Lh/h0/i/d$b;->i:I

    aget-object v2, v2, v1

    iget v2, v2, Lh/h0/i/c;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lh/h0/i/d$b;->i:I

    iget v2, p0, Lh/h0/i/d$b;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lh/h0/i/d$b;->h:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_29
    iget-object p1, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    iget v1, p0, Lh/h0/i/d$b;->g:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lh/h0/i/d$b;->h:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    iget v1, p0, Lh/h0/i/d$b;->g:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lh/h0/i/d$b;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lh/h0/i/d$b;->g:I

    :cond_49
    return v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/h0/i/d$b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/i/d$b;->h:I

    iput v0, p0, Lh/h0/i/d$b;->i:I

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lh/h0/i/d$b;->e:I

    if-ne v0, p1, :cond_b

    return-void

    :cond_b
    if-ge p1, v0, :cond_15

    iget v0, p0, Lh/h0/i/d$b;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lh/h0/i/d$b;->c:I

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/i/d$b;->d:Z

    iput p1, p0, Lh/h0/i/d$b;->e:I

    invoke-direct {p0}, Lh/h0/i/d$b;->a()V

    return-void
.end method

.method a(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lh/h0/i/d$b;->a:Li/c;

    or-int/2addr p1, p3

    :goto_5
    invoke-virtual {p2, p1}, Li/c;->writeByte(I)Li/c;

    return-void

    :cond_9
    iget-object v0, p0, Lh/h0/i/d$b;->a:Li/c;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Li/c;->writeByte(I)Li/c;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, Lh/h0/i/d$b;->a:Li/c;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Li/c;->writeByte(I)Li/c;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    :cond_1f
    iget-object p2, p0, Lh/h0/i/d$b;->a:Li/c;

    goto :goto_5
.end method

.method a(Li/f;)V
    .registers 5

    iget-boolean v0, p0, Lh/h0/i/d$b;->b:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_2b

    invoke-static {}, Lh/h0/i/k;->b()Lh/h0/i/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/h0/i/k;->a(Li/f;)I

    move-result v0

    invoke-virtual {p1}, Li/f;->e()I

    move-result v2

    if-ge v0, v2, :cond_2b

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    invoke-static {}, Lh/h0/i/k;->b()Lh/h0/i/k;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lh/h0/i/k;->a(Li/f;Li/d;)V

    invoke-virtual {v0}, Li/c;->p()Li/f;

    move-result-object p1

    invoke-virtual {p1}, Li/f;->e()I

    move-result v0

    const/16 v2, 0x80

    goto :goto_30

    :cond_2b
    invoke-virtual {p1}, Li/f;->e()I

    move-result v0

    const/4 v2, 0x0

    :goto_30
    invoke-virtual {p0, v0, v1, v2}, Lh/h0/i/d$b;->a(III)V

    iget-object v0, p0, Lh/h0/i/d$b;->a:Li/c;

    invoke-virtual {v0, p1}, Li/c;->a(Li/f;)Li/c;

    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lh/h0/i/d$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget v0, p0, Lh/h0/i/d$b;->c:I

    iget v2, p0, Lh/h0/i/d$b;->e:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_12

    invoke-virtual {p0, v0, v4, v3}, Lh/h0/i/d$b;->a(III)V

    :cond_12
    iput-boolean v1, p0, Lh/h0/i/d$b;->d:Z

    const v0, 0x7fffffff

    iput v0, p0, Lh/h0/i/d$b;->c:I

    iget v0, p0, Lh/h0/i/d$b;->e:I

    invoke-virtual {p0, v0, v4, v3}, Lh/h0/i/d$b;->a(III)V

    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v0, :cond_e8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/h0/i/c;

    iget-object v4, v3, Lh/h0/i/c;->a:Li/f;

    invoke-virtual {v4}, Li/f;->f()Li/f;

    move-result-object v4

    iget-object v5, v3, Lh/h0/i/c;->b:Li/f;

    sget-object v6, Lh/h0/i/d;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_6c

    const/16 v9, 0x8

    if-ge v6, v9, :cond_6c

    sget-object v9, Lh/h0/i/d;->a:[Lh/h0/i/c;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lh/h0/i/c;->b:Li/f;

    invoke-static {v9, v5}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    move v9, v6

    goto :goto_71

    :cond_5a
    sget-object v9, Lh/h0/i/d;->a:[Lh/h0/i/c;

    aget-object v9, v9, v6

    iget-object v9, v9, Lh/h0/i/c;->b:Li/f;

    invoke-static {v9, v5}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_71

    :cond_6c
    move v9, v6

    const/4 v6, -0x1

    goto :goto_71

    :cond_6f
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_71
    if-ne v6, v7, :cond_a8

    iget v10, p0, Lh/h0/i/d$b;->g:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    array-length v8, v8

    :goto_79
    if-ge v10, v8, :cond_a8

    iget-object v11, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lh/h0/i/c;->a:Li/f;

    invoke-static {v11, v4}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a5

    iget-object v11, p0, Lh/h0/i/d$b;->f:[Lh/h0/i/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lh/h0/i/c;->b:Li/f;

    invoke-static {v11, v5}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9b

    iget v6, p0, Lh/h0/i/d$b;->g:I

    sub-int/2addr v10, v6

    sget-object v6, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_a8

    :cond_9b
    if-ne v9, v7, :cond_a5

    iget v9, p0, Lh/h0/i/d$b;->g:I

    sub-int v9, v10, v9

    sget-object v11, Lh/h0/i/d;->a:[Lh/h0/i/c;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_a5
    add-int/lit8 v10, v10, 0x1

    goto :goto_79

    :cond_a8
    :goto_a8
    if-eq v6, v7, :cond_b2

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v6, v3, v4}, Lh/h0/i/d$b;->a(III)V

    goto :goto_e4

    :cond_b2
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c5

    iget-object v7, p0, Lh/h0/i/d$b;->a:Li/c;

    invoke-virtual {v7, v6}, Li/c;->writeByte(I)Li/c;

    invoke-virtual {p0, v4}, Lh/h0/i/d$b;->a(Li/f;)V

    :goto_be
    invoke-virtual {p0, v5}, Lh/h0/i/d$b;->a(Li/f;)V

    invoke-direct {p0, v3}, Lh/h0/i/d$b;->a(Lh/h0/i/c;)V

    goto :goto_e4

    :cond_c5
    sget-object v7, Lh/h0/i/c;->d:Li/f;

    invoke-virtual {v4, v7}, Li/f;->b(Li/f;)Z

    move-result v7

    if-eqz v7, :cond_de

    sget-object v7, Lh/h0/i/c;->i:Li/f;

    invoke-virtual {v7, v4}, Li/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_de

    const/16 v3, 0xf

    invoke-virtual {p0, v9, v3, v1}, Lh/h0/i/d$b;->a(III)V

    invoke-virtual {p0, v5}, Lh/h0/i/d$b;->a(Li/f;)V

    goto :goto_e4

    :cond_de
    const/16 v4, 0x3f

    invoke-virtual {p0, v9, v4, v6}, Lh/h0/i/d$b;->a(III)V

    goto :goto_be

    :goto_e4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_e8
    return-void
.end method
