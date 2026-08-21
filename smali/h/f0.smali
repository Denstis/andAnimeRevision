###### Class h.f0 (h.f0)
.class public final enum Lh/f0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lh/f0;

.field public static final enum d:Lh/f0;

.field public static final enum e:Lh/f0;

.field public static final enum f:Lh/f0;

.field public static final enum g:Lh/f0;

.field private static final synthetic h:[Lh/f0;


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lh/f0;

    const/4 v1, 0x0

    const-string v2, "TLS_1_3"

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v2, v1, v3}, Lh/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/f0;->c:Lh/f0;

    new-instance v0, Lh/f0;

    const/4 v2, 0x1

    const-string v3, "TLS_1_2"

    const-string v4, "TLSv1.2"

    invoke-direct {v0, v3, v2, v4}, Lh/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/f0;->d:Lh/f0;

    new-instance v0, Lh/f0;

    const/4 v3, 0x2

    const-string v4, "TLS_1_1"

    const-string v5, "TLSv1.1"

    invoke-direct {v0, v4, v3, v5}, Lh/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/f0;->e:Lh/f0;

    new-instance v0, Lh/f0;

    const/4 v4, 0x3

    const-string v5, "TLS_1_0"

    const-string v6, "TLSv1"

    invoke-direct {v0, v5, v4, v6}, Lh/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/f0;->f:Lh/f0;

    new-instance v0, Lh/f0;

    const/4 v5, 0x4

    const-string v6, "SSL_3_0"

    const-string v7, "SSLv3"

    invoke-direct {v0, v6, v5, v7}, Lh/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/f0;->g:Lh/f0;

    const/4 v0, 0x5

    new-array v0, v0, [Lh/f0;

    sget-object v6, Lh/f0;->c:Lh/f0;

    aput-object v6, v0, v1

    sget-object v1, Lh/f0;->d:Lh/f0;

    aput-object v1, v0, v2

    sget-object v1, Lh/f0;->e:Lh/f0;

    aput-object v1, v0, v3

    sget-object v1, Lh/f0;->f:Lh/f0;

    aput-object v1, v0, v4

    sget-object v1, Lh/f0;->g:Lh/f0;

    aput-object v1, v0, v5

    sput-object v0, Lh/f0;->h:[Lh/f0;

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

    iput-object p3, p0, Lh/f0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lh/f0;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4b88569

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3e

    const v1, 0x4c38896

    if-eq v0, v1, :cond_34

    packed-switch v0, :pswitch_data_7a

    goto :goto_48

    :pswitch_16
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    goto :goto_49

    :pswitch_20
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :pswitch_2a
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x2

    goto :goto_49

    :cond_34
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x3

    goto :goto_49

    :cond_3e
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x4

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v0, -0x1

    :goto_49
    if-eqz v0, :cond_76

    if-eq v0, v5, :cond_73

    if-eq v0, v4, :cond_70

    if-eq v0, v3, :cond_6d

    if-ne v0, v2, :cond_56

    sget-object p0, Lh/f0;->g:Lh/f0;

    return-object p0

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    sget-object p0, Lh/f0;->f:Lh/f0;

    return-object p0

    :cond_70
    sget-object p0, Lh/f0;->e:Lh/f0;

    return-object p0

    :cond_73
    sget-object p0, Lh/f0;->d:Lh/f0;

    return-object p0

    :cond_76
    sget-object p0, Lh/f0;->c:Lh/f0;

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch -0x1dfc3f27
        :pswitch_2a
        :pswitch_20
        :pswitch_16
    .end packed-switch
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lh/f0;",
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

    invoke-static {v3}, Lh/f0;->a(Ljava/lang/String;)Lh/f0;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lh/f0;
    .registers 2

    const-class v0, Lh/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/f0;

    return-object p0
.end method

.method public static values()[Lh/f0;
    .registers 1

    sget-object v0, Lh/f0;->h:[Lh/f0;

    invoke-virtual {v0}, [Lh/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/f0;

    return-object v0
.end method
