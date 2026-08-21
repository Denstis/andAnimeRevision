###### Class h.l (h.l)
.class public final Lh/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/l;->j:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/l;->k:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/l;->l:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/l;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lh/l;->b:Ljava/lang/String;

    iput-wide p3, p0, Lh/l;->c:J

    iput-object p5, p0, Lh/l;->d:Ljava/lang/String;

    iput-object p6, p0, Lh/l;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lh/l;->f:Z

    iput-boolean p8, p0, Lh/l;->g:Z

    iput-boolean p9, p0, Lh/l;->i:Z

    iput-boolean p10, p0, Lh/l;->h:Z

    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_3b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_32

    :cond_f
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_32

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x39

    if-le v0, v1, :cond_32

    :cond_1b
    const/16 v1, 0x61

    if-lt v0, v1, :cond_23

    const/16 v1, 0x7a

    if-le v0, v1, :cond_32

    :cond_23
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2b

    const/16 v1, 0x5a

    if-le v0, v1, :cond_32

    :cond_2b
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_38

    return p1

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3b
    return p2
.end method

.method private static a(Ljava/lang/String;II)J
    .registers 15

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lh/l;->a(Ljava/lang/String;IIZ)I

    move-result p1

    sget-object v1, Lh/l;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_12
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge p1, p2, :cond_a7

    add-int/lit8 v11, p1, 0x1

    invoke-static {p0, v11, p2, v10}, Lh/l;->a(Ljava/lang/String;IIZ)I

    move-result v11

    invoke-virtual {v1, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v4, v2, :cond_4a

    sget-object p1, Lh/l;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v8, v7

    move v7, v4

    move v4, p1

    goto :goto_9f

    :cond_4a
    if-ne v5, v2, :cond_62

    sget-object p1, Lh/l;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    move v5, p1

    goto :goto_9f

    :cond_62
    if-ne v6, v2, :cond_88

    sget-object p1, Lh/l;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lh/l;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    move v6, p1

    goto :goto_9f

    :cond_88
    if-ne v3, v2, :cond_9f

    sget-object p1, Lh/l;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_9f

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    move v3, p1

    :cond_9f
    :goto_9f
    add-int/lit8 v11, v11, 0x1

    invoke-static {p0, v11, p2, v0}, Lh/l;->a(Ljava/lang/String;IIZ)I

    move-result p1

    goto/16 :goto_12

    :cond_a7
    const/16 p0, 0x46

    if-lt v3, p0, :cond_b1

    const/16 p0, 0x63

    if-gt v3, p0, :cond_b1

    add-int/lit16 v3, v3, 0x76c

    :cond_b1
    if-ltz v3, :cond_b9

    const/16 p0, 0x45

    if-gt v3, p0, :cond_b9

    add-int/lit16 v3, v3, 0x7d0

    :cond_b9
    const/16 p0, 0x641

    if-lt v3, p0, :cond_121

    if-eq v6, v2, :cond_11b

    if-lt v5, v10, :cond_115

    const/16 p0, 0x1f

    if-gt v5, p0, :cond_115

    if-ltz v4, :cond_10f

    const/16 p0, 0x17

    if-gt v4, p0, :cond_10f

    if-ltz v7, :cond_109

    const/16 p0, 0x3b

    if-gt v7, p0, :cond_109

    if-ltz v8, :cond_103

    if-gt v8, p0, :cond_103

    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lh/h0/c;->n:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p0, v10, v3}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v6, v10

    invoke-virtual {p0, v9, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_109
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_10f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_115
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_11b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_121
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_128

    :goto_127
    throw p0

    :goto_128
    goto :goto_127
.end method

.method static a(JLh/t;Ljava/lang/String;)Lh/l;
    .registers 28

    move-object/from16 v0, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    const/16 v5, 0x3d

    invoke-static {v0, v3, v4, v5}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v4, :cond_17

    return-object v7

    :cond_17
    invoke-static {v0, v3, v6}, Lh/h0/c;->d(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_146

    invoke-static {v9}, Lh/h0/c;->c(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2a

    goto/16 :goto_146

    :cond_2a
    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-static {v0, v6, v4}, Lh/h0/c;->d(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lh/h0/c;->c(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v10, :cond_37

    return-object v7

    :cond_37
    add-int/2addr v4, v8

    const-wide/16 v10, -0x1

    const-wide v12, 0xe677d21fdbffL

    move-object v8, v7

    move-object/from16 v19, v8

    move-wide v14, v10

    move-wide/from16 v21, v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x0

    :goto_4d
    if-ge v4, v1, :cond_c1

    invoke-static {v0, v4, v1, v2}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v7

    invoke-static {v0, v4, v7, v5}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v2

    invoke-static {v0, v4, v2}, Lh/h0/c;->d(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    if-ge v2, v7, :cond_64

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v7}, Lh/h0/c;->d(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_66

    :cond_64
    const-string v2, ""

    :goto_66
    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    :try_start_6e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lh/l;->a(Ljava/lang/String;II)J

    move-result-wide v4
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_76} :catch_b9

    move-wide/from16 v21, v4

    goto :goto_86

    :cond_79
    const-string v5, "max-age"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    :try_start_81
    invoke-static {v2}, Lh/l;->b(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_85} :catch_b9

    move-wide v14, v4

    :goto_86
    const/16 v23, 0x1

    goto :goto_b9

    :cond_89
    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    :try_start_91
    invoke-static {v2}, Lh/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_95} :catch_b9

    move-object v8, v2

    const/16 v20, 0x0

    goto :goto_b9

    :cond_99
    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    move-object/from16 v19, v2

    goto :goto_b9

    :cond_a4
    const-string v2, "secure"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    const/16 v17, 0x1

    goto :goto_b9

    :cond_af
    const-string v2, "httponly"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    const/16 v18, 0x1

    :catch_b9
    :cond_b9
    :goto_b9
    add-int/lit8 v4, v7, 0x1

    const/16 v2, 0x3b

    const/16 v5, 0x3d

    const/4 v7, 0x0

    goto :goto_4d

    :cond_c1
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, v14, v0

    if-nez v2, :cond_c9

    :cond_c7
    move-wide v11, v0

    goto :goto_ee

    :cond_c9
    cmp-long v0, v14, v10

    if-eqz v0, :cond_ec

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v2, v14, v0

    if-gtz v2, :cond_db

    const-wide/16 v0, 0x3e8

    mul-long v14, v14, v0

    goto :goto_e0

    :cond_db
    const-wide v14, 0x7fffffffffffffffL

    :goto_e0
    add-long v0, p0, v14

    cmp-long v2, v0, p0

    if-ltz v2, :cond_ea

    cmp-long v2, v0, v12

    if-lez v2, :cond_c7

    :cond_ea
    move-wide v11, v12

    goto :goto_ee

    :cond_ec
    move-wide/from16 v11, v21

    :goto_ee
    invoke-virtual/range {p2 .. p2}, Lh/t;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_f7

    move-object v13, v0

    const/4 v1, 0x0

    goto :goto_101

    :cond_f7
    invoke-static {v0, v8}, Lh/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ff

    const/4 v1, 0x0

    return-object v1

    :cond_ff
    const/4 v1, 0x0

    move-object v13, v8

    :goto_101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_116

    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_116

    return-object v1

    :cond_116
    const-string v0, "/"

    move-object/from16 v7, v19

    if-eqz v7, :cond_125

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_123

    goto :goto_125

    :cond_123
    move-object v14, v7

    goto :goto_136

    :cond_125
    :goto_125
    invoke-virtual/range {p2 .. p2}, Lh/t;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eqz v2, :cond_135

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_135
    move-object v14, v0

    :goto_136
    new-instance v0, Lh/l;

    move-object v8, v0

    move-object v10, v6

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v23

    invoke-direct/range {v8 .. v18}, Lh/l;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    :cond_146
    :goto_146
    move-object v0, v7

    return-object v0
.end method

.method public static a(Lh/t;Ljava/lang/String;)Lh/l;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lh/l;->a(JLh/t;Ljava/lang/String;)Lh/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_13
    invoke-static {p0}, Lh/h0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Lh/t;Lh/s;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/t;",
            "Lh/s;",
            ")",
            "Ljava/util/List<",
            "Lh/l;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lh/s;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_28

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lh/l;->a(Lh/t;Ljava/lang/String;)Lh/l;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_25

    :cond_1b
    if-nez v1, :cond_22

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_22
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    if-eqz v1, :cond_2f

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_33

    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_33
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_27

    invoke-static {p0}, Lh/h0/c;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_d

    goto :goto_e

    :cond_d
    move-wide v0, v2

    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_26

    :cond_21
    const-wide v0, 0x7fffffffffffffffL

    :goto_26
    return-wide v0

    :cond_27
    throw v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Z)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lh/l;->h:Z

    if-eqz v1, :cond_36

    iget-wide v1, p0, Lh/l;->c:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_23

    const-string v1, "; max-age=0"

    goto :goto_33

    :cond_23
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lh/l;->c:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lh/h0/g/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    iget-boolean v1, p0, Lh/l;->i:Z

    if-nez v1, :cond_4b

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_46

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    iget-object p1, p0, Lh/l;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    const-string p1, "; path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lh/l;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lh/l;->f:Z

    if-eqz p1, :cond_5e

    const-string p1, "; secure"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    iget-boolean p1, p0, Lh/l;->g:Z

    if-eqz p1, :cond_67

    const-string p1, "; httponly"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lh/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lh/l;

    iget-object v0, p1, Lh/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lh/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lh/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lh/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lh/l;->d:Ljava/lang/String;

    iget-object v2, p0, Lh/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lh/l;->e:Ljava/lang/String;

    iget-object v2, p0, Lh/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-wide v2, p1, Lh/l;->c:J

    iget-wide v4, p0, Lh/l;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-boolean v0, p1, Lh/l;->f:Z

    iget-boolean v2, p0, Lh/l;->f:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p1, Lh/l;->g:Z

    iget-boolean v2, p0, Lh/l;->g:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p1, Lh/l;->h:Z

    iget-boolean v2, p0, Lh/l;->h:Z

    if-ne v0, v2, :cond_51

    iget-boolean p1, p1, Lh/l;->i:Z

    iget-boolean v0, p0, Lh/l;->i:Z

    if-ne p1, v0, :cond_51

    const/4 v1, 0x1

    :cond_51
    return v1
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lh/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lh/l;->c:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lh/l;->f:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lh/l;->g:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lh/l;->h:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lh/l;->i:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/l;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
