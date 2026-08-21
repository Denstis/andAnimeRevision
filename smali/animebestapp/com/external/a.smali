###### Class animebestapp.com.external.a (animebestapp.com.external.a)
.class public final Lanimebestapp/com/external/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[B

.field public static final b:Lanimebestapp/com/external/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/external/a;

    invoke-direct {v0}, Lanimebestapp/com/external/a;-><init>()V

    sput-object v0, Lanimebestapp/com/external/a;->b:Lanimebestapp/com/external/a;

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lanimebestapp/com/external/a;->a:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x5bt
        0x31t
        0x2ct
        0x20t
        0x32t
        0x2ct
        0x20t
        0x33t
        0x2ct
        0x20t
        0x37t
        0x2ct
        0x20t
        0x31t
        0x34t
        0x2ct
        0x20t
        0x32t
        0x38t
        0x2ct
        0x20t
        0x32t
        0x39t
        0x2ct
        0x20t
        0x33t
        0x30t
        0x2ct
        0x20t
        0x31t
        0x35t
        0x2ct
        0x20t
        0x32t
        0x36t
        0x2ct
        0x20t
        0x32t
        0x37t
        0x5dt
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 16

    const-string v0, "g"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lanimebestapp/com/external/a;->a:[B

    sget-object v1, Lg/s/c;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, "["

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lg/s/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lg/s/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lg/s/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ","

    aput-object v1, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lg/s/e;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
