###### Class h.h0.c (h.h0.c)
.class public final Lh/h0/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lh/d0;

.field private static final d:Li/f;

.field private static final e:Li/f;

.field private static final f:Li/f;

.field private static final g:Li/f;

.field private static final h:Li/f;

.field public static final i:Ljava/nio/charset/Charset;

.field private static final j:Ljava/nio/charset/Charset;

.field private static final k:Ljava/nio/charset/Charset;

.field private static final l:Ljava/nio/charset/Charset;

.field private static final m:Ljava/nio/charset/Charset;

.field public static final n:Ljava/util/TimeZone;

.field public static final o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lh/h0/c;->a:[B

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lh/h0/c;->b:[Ljava/lang/String;

    sget-object v0, Lh/h0/c;->a:[B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lh/d0;->a(Lh/v;[B)Lh/d0;

    move-result-object v0

    sput-object v0, Lh/h0/c;->c:Lh/d0;

    sget-object v0, Lh/h0/c;->a:[B

    invoke-static {v1, v0}, Lh/b0;->a(Lh/v;[B)Lh/b0;

    const-string v0, "efbbbf"

    invoke-static {v0}, Li/f;->a(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/c;->d:Li/f;

    const-string v0, "feff"

    invoke-static {v0}, Li/f;->a(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/c;->e:Li/f;

    const-string v0, "fffe"

    invoke-static {v0}, Li/f;->a(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/c;->f:Li/f;

    const-string v0, "0000ffff"

    invoke-static {v0}, Li/f;->a(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/c;->g:Li/f;

    const-string v0, "ffff0000"

    invoke-static {v0}, Li/f;->a(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/c;->h:Li/f;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/h0/c;->j:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/h0/c;->k:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/h0/c;->l:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/h0/c;->m:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lh/h0/c;->n:Ljava/util/TimeZone;

    new-instance v0, Lh/h0/c$a;

    invoke-direct {v0}, Lh/h0/c$a;-><init>()V

    sput-object v0, Lh/h0/c;->o:Ljava/util/Comparator;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/h0/c;->p:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;IIC)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_9

    return p1

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_c
    return p2
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_11
    return p2
.end method

.method public static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_54

    if-eqz p3, :cond_4c

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-gtz p3, :cond_35

    cmp-long p3, v2, v0

    if-nez p3, :cond_33

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1c

    goto :goto_33

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    long-to-int p0, v2

    return p0

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    return-object v0
.end method

.method public static a(Lh/t;Z)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lh/t;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lh/t;->g()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    if-nez p1, :cond_3b

    invoke-virtual {p0}, Lh/t;->k()I

    move-result p1

    invoke-virtual {p0}, Lh/t;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lh/t;->c(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_51

    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/t;->k()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p0, v2, v0}, Lh/h0/c;->a(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2d

    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2}, Lh/h0/c;->a(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_2d
    if-nez v0, :cond_30

    return-object v1

    :cond_30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3e

    invoke-static {v0}, Lh/h0/c;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5a
    :try_start_5a
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    return-object v1

    :cond_6b
    invoke-static {p0}, Lh/h0/c;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_6f} :catch_73

    if-eqz v0, :cond_72

    return-object v1

    :cond_72
    return-object p0

    :catch_73
    return-object v1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_5
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v1, v4, :cond_26

    move v4, v1

    :goto_b
    if-ge v4, v5, :cond_1a

    aget-byte v6, p0, v4

    if-nez v6, :cond_1a

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_1a

    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    :cond_1a
    sub-int v5, v4, v1

    if-le v5, v3, :cond_23

    const/4 v6, 0x4

    if-lt v5, v6, :cond_23

    move v2, v1

    move v3, v5

    :cond_23
    add-int/lit8 v1, v4, 0x2

    goto :goto_5

    :cond_26
    new-instance v1, Li/c;

    invoke-direct {v1}, Li/c;-><init>()V

    :cond_2b
    :goto_2b
    array-length v4, p0

    if-ge v0, v4, :cond_55

    const/16 v4, 0x3a

    if-ne v0, v2, :cond_3c

    invoke-virtual {v1, v4}, Li/c;->writeByte(I)Li/c;

    add-int/2addr v0, v3

    if-ne v0, v5, :cond_2b

    invoke-virtual {v1, v4}, Li/c;->writeByte(I)Li/c;

    goto :goto_2b

    :cond_3c
    if-lez v0, :cond_41

    invoke-virtual {v1, v4}, Li/c;->writeByte(I)Li/c;

    :cond_41
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Li/c;->f(J)Li/c;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2b

    :cond_55
    invoke-virtual {v1}, Li/c;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 13

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_9
    const/4 v6, 0x0

    if-ge p1, p2, :cond_7b

    array-length v7, v0

    if-ne v3, v7, :cond_10

    return-object v6

    :cond_10
    add-int/lit8 v7, p1, 0x2

    if-gt v7, p2, :cond_28

    const/4 v8, 0x2

    const-string v9, "::"

    invoke-virtual {p0, p1, v9, v2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_28

    if-eq v4, v1, :cond_20

    return-object v6

    :cond_20
    add-int/lit8 v3, v3, 0x2

    move v4, v3

    if-ne v7, p2, :cond_26

    goto :goto_7b

    :cond_26
    move v5, v7

    goto :goto_4c

    :cond_28
    if-eqz v3, :cond_4b

    const/4 v7, 0x1

    const-string v8, ":"

    invoke-virtual {p0, p1, v8, v2, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_36

    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    :cond_36
    const-string v8, "."

    invoke-virtual {p0, p1, v8, v2, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_4a

    add-int/lit8 p1, v3, -0x2

    invoke-static {p0, v5, p2, v0, p1}, Lh/h0/c;->a(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_47

    return-object v6

    :cond_47
    add-int/lit8 v3, v3, 0x2

    goto :goto_7b

    :cond_4a
    return-object v6

    :cond_4b
    :goto_4b
    move v5, p1

    :goto_4c
    move p1, v5

    const/4 v7, 0x0

    :goto_4e
    if-ge p1, p2, :cond_61

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lh/h0/c;->a(C)I

    move-result v8

    if-ne v8, v1, :cond_5b

    goto :goto_61

    :cond_5b
    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_4e

    :cond_61
    :goto_61
    sub-int v8, p1, v5

    if-eqz v8, :cond_7a

    const/4 v9, 0x4

    if-le v8, v9, :cond_69

    goto :goto_7a

    :cond_69
    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    add-int/lit8 v3, v6, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    goto :goto_9

    :cond_7a
    :goto_7a
    return-object v6

    :cond_7b
    :goto_7b
    array-length p0, v0

    if-eq v3, p0, :cond_8e

    if-ne v4, v1, :cond_81

    return-object v6

    :cond_81
    array-length p0, v0

    sub-int p1, v3, v4

    sub-int/2addr p0, p1

    invoke-static {v0, v4, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    sub-int/2addr p0, v3

    add-int/2addr p0, v4

    invoke-static {v0, v4, p0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_8e
    :try_start_8e
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_92
    .catch Ljava/net/UnknownHostException; {:try_start_8e .. :try_end_92} :catch_93

    return-object p0

    :catch_93
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_9a

    :goto_99
    throw p0

    :goto_9a
    goto :goto_99
.end method

.method public static a(Li/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 5

    sget-object v0, Lh/h0/c;->d:Li/f;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2, v0}, Li/e;->a(JLi/f;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p1, Lh/h0/c;->d:Li/f;

    invoke-virtual {p1}, Li/f;->e()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Li/e;->skip(J)V

    sget-object p0, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    return-object p0

    :cond_17
    sget-object v0, Lh/h0/c;->e:Li/f;

    invoke-interface {p0, v1, v2, v0}, Li/e;->a(JLi/f;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p1, Lh/h0/c;->e:Li/f;

    invoke-virtual {p1}, Li/f;->e()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Li/e;->skip(J)V

    sget-object p0, Lh/h0/c;->j:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2c
    sget-object v0, Lh/h0/c;->f:Li/f;

    invoke-interface {p0, v1, v2, v0}, Li/e;->a(JLi/f;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object p1, Lh/h0/c;->f:Li/f;

    invoke-virtual {p1}, Li/f;->e()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Li/e;->skip(J)V

    sget-object p0, Lh/h0/c;->k:Ljava/nio/charset/Charset;

    return-object p0

    :cond_41
    sget-object v0, Lh/h0/c;->g:Li/f;

    invoke-interface {p0, v1, v2, v0}, Li/e;->a(JLi/f;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object p1, Lh/h0/c;->g:Li/f;

    invoke-virtual {p1}, Li/f;->e()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Li/e;->skip(J)V

    sget-object p0, Lh/h0/c;->l:Ljava/nio/charset/Charset;

    return-object p0

    :cond_56
    sget-object v0, Lh/h0/c;->h:Li/f;

    invoke-interface {p0, v1, v2, v0}, Li/e;->a(JLi/f;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object p1, Lh/h0/c;->h:Li/f;

    invoke-virtual {p1}, Li/f;->e()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Li/e;->skip(J)V

    sget-object p0, Lh/h0/c;->m:Ljava/nio/charset/Charset;

    return-object p0

    :cond_6b
    return-object p1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    new-instance v0, Lh/h0/c$b;

    invoke-direct {v0, p0, p1}, Lh/h0/c$b;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJJ)V
    .registers 11

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long/2addr p0, p2

    cmp-long p2, p0, p4

    if-ltz p2, :cond_12

    return-void

    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 2

    if-eqz p0, :cond_11

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_11

    goto :goto_11

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    move-exception p0

    invoke-static {p0}, Lh/h0/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    throw p0

    :catch_11
    :cond_11
    :goto_11
    return-void
.end method

.method public static a(Li/s;ILjava/util/concurrent/TimeUnit;)Z
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lh/h0/c;->b(Li/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    move v0, p4

    :goto_1
    const/4 v1, 0x0

    if-ge p1, p2, :cond_44

    array-length v2, p3

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    if-eq v0, p4, :cond_15

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    :cond_15
    move v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v2, p2, :cond_37

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_37

    const/16 v6, 0x39

    if-le v4, v6, :cond_26

    goto :goto_37

    :cond_26
    if-nez v3, :cond_2b

    if-eq p1, v2, :cond_2b

    return v1

    :cond_2b
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_34

    return v1

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    :goto_37
    sub-int p1, v2, p1

    if-nez p1, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    :cond_44
    add-int/lit8 p4, p4, 0x4

    if-eq v0, p4, :cond_49

    return v1

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p1, v3

    array-length v5, p2

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p2, v6

    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1c

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static b(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1b

    return p1

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p2
.end method

.method public static b(Li/s;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p0}, Li/s;->b()Li/t;

    move-result-object v2

    invoke-virtual {v2}, Li/t;->d()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1d

    invoke-interface {p0}, Li/s;->b()Li/t;

    move-result-object v2

    invoke-virtual {v2}, Li/t;->c()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_1e

    :cond_1d
    move-wide v5, v3

    :goto_1e
    invoke-interface {p0}, Li/s;->b()Li/t;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Li/t;->a(J)Li/t;

    :try_start_2f
    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    :goto_34
    const-wide/16 v7, 0x2000

    invoke-interface {p0, p1, v7, v8}, Li/s;->a(Li/c;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_44

    invoke-virtual {p1}, Li/c;->l()V
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_2f .. :try_end_43} :catch_68
    .catchall {:try_start_2f .. :try_end_43} :catchall_56

    goto :goto_34

    :cond_44
    const/4 p1, 0x1

    cmp-long p2, v5, v3

    invoke-interface {p0}, Li/s;->b()Li/t;

    move-result-object p0

    if-nez p2, :cond_51

    invoke-virtual {p0}, Li/t;->a()Li/t;

    goto :goto_55

    :cond_51
    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Li/t;->a(J)Li/t;

    :goto_55
    return p1

    :catchall_56
    move-exception p1

    cmp-long p2, v5, v3

    invoke-interface {p0}, Li/s;->b()Li/t;

    move-result-object p0

    if-nez p2, :cond_63

    invoke-virtual {p0}, Li/t;->a()Li/t;

    goto :goto_67

    :cond_63
    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Li/t;->a(J)Li/t;

    :goto_67
    throw p1

    :catch_68
    nop

    const/4 p1, 0x0

    cmp-long p2, v5, v3

    invoke-interface {p0}, Li/s;->b()Li/t;

    move-result-object p0

    if-nez p2, :cond_76

    invoke-virtual {p0}, Li/t;->a()Li/t;

    goto :goto_7a

    :cond_76
    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Li/t;->a(J)Li/t;

    :goto_7a
    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_23

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_16

    goto :goto_23

    :cond_16
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    return v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    :goto_23
    return v4

    :cond_24
    return v0
.end method

.method public static b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    array-length v1, p1

    if-eqz v1, :cond_26

    array-length v1, p2

    if-nez v1, :cond_c

    goto :goto_26

    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    array-length v4, p2

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_23

    aget-object v6, p2, v5

    invoke-interface {p0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    :goto_26
    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_17

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    :goto_17
    return v1

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Ljava/lang/String;II)I
    .registers 5

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_22

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1f

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1f
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_22
    return p1
.end method

.method public static d(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lh/h0/c;->b(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1, p2}, Lh/h0/c;->c(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lh/h0/c;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

###### Class h.h0.c.a (h.h0.c$a)
.class final Lh/h0/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/c;
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
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lh/h0/c$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

###### Class h.h0.c.b (h.h0.c$b)
.class final Lh/h0/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    iput-object p1, p0, Lh/h0/c$b;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lh/h0/c$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lh/h0/c$b;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean p1, p0, Lh/h0/c$b;->c:Z

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
