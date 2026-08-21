###### Class h.y (h.y)
.class public final enum Lh/y;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lh/y;

.field public static final enum d:Lh/y;

.field public static final enum e:Lh/y;

.field public static final enum f:Lh/y;

.field public static final enum g:Lh/y;

.field private static final synthetic h:[Lh/y;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lh/y;

    const/4 v1, 0x0

    const-string v2, "HTTP_1_0"

    const-string v3, "http/1.0"

    invoke-direct {v0, v2, v1, v3}, Lh/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/y;->c:Lh/y;

    new-instance v0, Lh/y;

    const/4 v2, 0x1

    const-string v3, "HTTP_1_1"

    const-string v4, "http/1.1"

    invoke-direct {v0, v3, v2, v4}, Lh/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/y;->d:Lh/y;

    new-instance v0, Lh/y;

    const/4 v3, 0x2

    const-string v4, "SPDY_3"

    const-string v5, "spdy/3.1"

    invoke-direct {v0, v4, v3, v5}, Lh/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/y;->e:Lh/y;

    new-instance v0, Lh/y;

    const/4 v4, 0x3

    const-string v5, "HTTP_2"

    const-string v6, "h2"

    invoke-direct {v0, v5, v4, v6}, Lh/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/y;->f:Lh/y;

    new-instance v0, Lh/y;

    const/4 v5, 0x4

    const-string v6, "QUIC"

    const-string v7, "quic"

    invoke-direct {v0, v6, v5, v7}, Lh/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/y;->g:Lh/y;

    const/4 v0, 0x5

    new-array v0, v0, [Lh/y;

    sget-object v6, Lh/y;->c:Lh/y;

    aput-object v6, v0, v1

    sget-object v1, Lh/y;->d:Lh/y;

    aput-object v1, v0, v2

    sget-object v1, Lh/y;->e:Lh/y;

    aput-object v1, v0, v3

    sget-object v1, Lh/y;->f:Lh/y;

    aput-object v1, v0, v4

    sget-object v1, Lh/y;->g:Lh/y;

    aput-object v1, v0, v5

    sput-object v0, Lh/y;->h:[Lh/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lh/y;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lh/y;
    .registers 4

    sget-object v0, Lh/y;->c:Lh/y;

    iget-object v0, v0, Lh/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lh/y;->c:Lh/y;

    return-object p0

    :cond_d
    sget-object v0, Lh/y;->d:Lh/y;

    iget-object v0, v0, Lh/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p0, Lh/y;->d:Lh/y;

    return-object p0

    :cond_1a
    sget-object v0, Lh/y;->f:Lh/y;

    iget-object v0, v0, Lh/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object p0, Lh/y;->f:Lh/y;

    return-object p0

    :cond_27
    sget-object v0, Lh/y;->e:Lh/y;

    iget-object v0, v0, Lh/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object p0, Lh/y;->e:Lh/y;

    return-object p0

    :cond_34
    sget-object v0, Lh/y;->g:Lh/y;

    iget-object v0, v0, Lh/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object p0, Lh/y;->g:Lh/y;

    return-object p0

    :cond_41
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lh/y;
    .registers 2

    const-class v0, Lh/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/y;

    return-object p0
.end method

.method public static values()[Lh/y;
    .registers 1

    sget-object v0, Lh/y;->h:[Lh/y;

    invoke-virtual {v0}, [Lh/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/y;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/y;->b:Ljava/lang/String;

    return-object v0
.end method
