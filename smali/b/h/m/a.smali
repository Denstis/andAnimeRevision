###### Class b.h.m.a (b.h.m.a)
.class public final Lb/h/m/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/m/a$b;,
        Lb/h/m/a$a;
    }
.end annotation


# static fields
.field static final d:Lb/h/m/d;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field static final g:Lb/h/m/a;

.field static final h:Lb/h/m/a;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Lb/h/m/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Lb/h/m/e;->c:Lb/h/m/d;

    sput-object v0, Lb/h/m/a;->d:Lb/h/m/d;

    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/h/m/a;->e:Ljava/lang/String;

    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/h/m/a;->f:Ljava/lang/String;

    new-instance v0, Lb/h/m/a;

    sget-object v1, Lb/h/m/a;->d:Lb/h/m/d;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lb/h/m/a;-><init>(ZILb/h/m/d;)V

    sput-object v0, Lb/h/m/a;->g:Lb/h/m/a;

    new-instance v0, Lb/h/m/a;

    sget-object v1, Lb/h/m/a;->d:Lb/h/m/d;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lb/h/m/a;-><init>(ZILb/h/m/d;)V

    sput-object v0, Lb/h/m/a;->h:Lb/h/m/a;

    return-void
.end method

.method constructor <init>(ZILb/h/m/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/h/m/a;->a:Z

    iput p2, p0, Lb/h/m/a;->b:I

    iput-object p3, p0, Lb/h/m/a;->c:Lb/h/m/d;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Lb/h/m/d;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lb/h/m/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    iget-boolean v0, p0, Lb/h/m/a;->a:Z

    if-nez v0, :cond_19

    if-nez p2, :cond_16

    invoke-static {p1}, Lb/h/m/a;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    :cond_16
    sget-object p1, Lb/h/m/a;->e:Ljava/lang/String;

    return-object p1

    :cond_19
    iget-boolean v0, p0, Lb/h/m/a;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_26

    invoke-static {p1}, Lb/h/m/a;->c(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_29

    :cond_26
    sget-object p1, Lb/h/m/a;->f:Ljava/lang/String;

    return-object p1

    :cond_29
    const-string p1, ""

    return-object p1
.end method

.method static a(Ljava/util/Locale;)Z
    .registers 2

    invoke-static {p0}, Lb/h/m/f;->b(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .registers 3

    new-instance v0, Lb/h/m/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/h/m/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lb/h/m/a$b;->c()I

    move-result p0

    return p0
.end method

.method public static b()Lb/h/m/a;
    .registers 1

    new-instance v0, Lb/h/m/a$a;

    invoke-direct {v0}, Lb/h/m/a$a;-><init>()V

    invoke-virtual {v0}, Lb/h/m/a$a;->a()Lb/h/m/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;Lb/h/m/d;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lb/h/m/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    iget-boolean v0, p0, Lb/h/m/a;->a:Z

    if-nez v0, :cond_19

    if-nez p2, :cond_16

    invoke-static {p1}, Lb/h/m/a;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    :cond_16
    sget-object p1, Lb/h/m/a;->e:Ljava/lang/String;

    return-object p1

    :cond_19
    iget-boolean v0, p0, Lb/h/m/a;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_26

    invoke-static {p1}, Lb/h/m/a;->b(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_29

    :cond_26
    sget-object p1, Lb/h/m/a;->f:Ljava/lang/String;

    return-object p1

    :cond_29
    const-string p1, ""

    return-object p1
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .registers 3

    new-instance v0, Lb/h/m/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/h/m/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lb/h/m/a$b;->d()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lb/h/m/a;->c:Lb/h/m/d;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lb/h/m/a;->a(Ljava/lang/CharSequence;Lb/h/m/d;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;Lb/h/m/d;Z)Ljava/lang/CharSequence;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Lb/h/m/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/h/m/a;->a()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p3, :cond_28

    if-eqz p2, :cond_1f

    sget-object v1, Lb/h/m/e;->b:Lb/h/m/d;

    goto :goto_21

    :cond_1f
    sget-object v1, Lb/h/m/e;->a:Lb/h/m/d;

    :goto_21
    invoke-direct {p0, p1, v1}, Lb/h/m/a;->b(Ljava/lang/CharSequence;Lb/h/m/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_28
    iget-boolean v1, p0, Lb/h/m/a;->a:Z

    if-eq p2, v1, :cond_3f

    if-eqz p2, :cond_31

    const/16 v1, 0x202b

    goto :goto_33

    :cond_31
    const/16 v1, 0x202a

    :goto_33
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_42

    :cond_3f
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_42
    if-eqz p3, :cond_52

    if-eqz p2, :cond_49

    sget-object p2, Lb/h/m/e;->b:Lb/h/m/d;

    goto :goto_4b

    :cond_49
    sget-object p2, Lb/h/m/e;->a:Lb/h/m/d;

    :goto_4b
    invoke-direct {p0, p1, p2}, Lb/h/m/a;->a(Ljava/lang/CharSequence;Lb/h/m/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_52
    return-object v0
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lb/h/m/a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class b.h.m.a.C0102a (b.h.m.a$a)
.class public final Lb/h/m/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lb/h/m/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lb/h/m/a;->a(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lb/h/m/a$a;->b(Z)V

    return-void
.end method

.method private static a(Z)Lb/h/m/a;
    .registers 1

    if-eqz p0, :cond_5

    sget-object p0, Lb/h/m/a;->h:Lb/h/m/a;

    goto :goto_7

    :cond_5
    sget-object p0, Lb/h/m/a;->g:Lb/h/m/a;

    :goto_7
    return-object p0
.end method

.method private b(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/h/m/a$a;->a:Z

    sget-object p1, Lb/h/m/a;->d:Lb/h/m/d;

    iput-object p1, p0, Lb/h/m/a$a;->c:Lb/h/m/d;

    const/4 p1, 0x2

    iput p1, p0, Lb/h/m/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lb/h/m/a;
    .registers 5

    iget v0, p0, Lb/h/m/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lb/h/m/a$a;->c:Lb/h/m/d;

    sget-object v1, Lb/h/m/a;->d:Lb/h/m/d;

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lb/h/m/a$a;->a:Z

    invoke-static {v0}, Lb/h/m/a$a;->a(Z)Lb/h/m/a;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Lb/h/m/a;

    iget-boolean v1, p0, Lb/h/m/a$a;->a:Z

    iget v2, p0, Lb/h/m/a$a;->b:I

    iget-object v3, p0, Lb/h/m/a$a;->c:Lb/h/m/d;

    invoke-direct {v0, v1, v2, v3}, Lb/h/m/a;-><init>(ZILb/h/m/d;)V

    return-object v0
.end method

###### Class b.h.m.a.b (b.h.m.a$b)
.class Lb/h/m/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final f:[B


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Z

.field private final c:I

.field private d:I

.field private e:C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Lb/h/m/a$b;->f:[B

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    sget-object v2, Lb/h/m/a$b;->f:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lb/h/m/a$b;->b:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lb/h/m/a$b;->c:I

    return-void
.end method

.method private static a(C)B
    .registers 2

    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Lb/h/m/a$b;->f:[B

    aget-byte p0, v0, p0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    :goto_d
    return p0
.end method

.method private e()B
    .registers 5

    iget v0, p0, Lb/h/m/a$b;->d:I

    :cond_2
    iget v1, p0, Lb/h/m/a$b;->d:I

    const/16 v2, 0x3b

    if-lez v1, :cond_1f

    iget-object v3, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lb/h/m/a$b;->e:C

    iget-char v1, p0, Lb/h/m/a$b;->e:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_1d

    const/16 v0, 0xc

    return v0

    :cond_1d
    if-ne v1, v2, :cond_2

    :cond_1f
    iput v0, p0, Lb/h/m/a$b;->d:I

    iput-char v2, p0, Lb/h/m/a$b;->e:C

    const/16 v0, 0xd

    return v0
.end method

.method private f()B
    .registers 4

    :goto_0
    iget v0, p0, Lb/h/m/a$b;->d:I

    iget v1, p0, Lb/h/m/a$b;->c:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lb/h/m/a$b;->e:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_17

    goto :goto_0

    :cond_17
    const/16 v0, 0xc

    return v0
.end method

.method private g()B
    .registers 5

    iget v0, p0, Lb/h/m/a$b;->d:I

    :cond_2
    iget v1, p0, Lb/h/m/a$b;->d:I

    const/16 v2, 0x3e

    if-lez v1, :cond_3d

    iget-object v3, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lb/h/m/a$b;->e:C

    iget-char v1, p0, Lb/h/m/a$b;->e:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1d

    const/16 v0, 0xc

    return v0

    :cond_1d
    if-ne v1, v2, :cond_20

    goto :goto_3d

    :cond_20
    const/16 v2, 0x22

    if-eq v1, v2, :cond_28

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    :cond_28
    iget-char v1, p0, Lb/h/m/a$b;->e:C

    :goto_2a
    iget v2, p0, Lb/h/m/a$b;->d:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lb/h/m/a$b;->e:C

    if-eq v2, v1, :cond_2

    goto :goto_2a

    :cond_3d
    :goto_3d
    iput v0, p0, Lb/h/m/a$b;->d:I

    iput-char v2, p0, Lb/h/m/a$b;->e:C

    const/16 v0, 0xd

    return v0
.end method

.method private h()B
    .registers 6

    iget v0, p0, Lb/h/m/a$b;->d:I

    :cond_2
    iget v1, p0, Lb/h/m/a$b;->d:I

    iget v2, p0, Lb/h/m/a$b;->c:I

    if-ge v1, v2, :cond_3c

    iget-object v2, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lb/h/m/a$b;->e:C

    iget-char v1, p0, Lb/h/m/a$b;->e:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1d

    const/16 v0, 0xc

    return v0

    :cond_1d
    const/16 v2, 0x22

    if-eq v1, v2, :cond_25

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    :cond_25
    iget-char v1, p0, Lb/h/m/a$b;->e:C

    :goto_27
    iget v2, p0, Lb/h/m/a$b;->d:I

    iget v3, p0, Lb/h/m/a$b;->c:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lb/h/m/a$b;->e:C

    if-eq v2, v1, :cond_2

    goto :goto_27

    :cond_3c
    iput v0, p0, Lb/h/m/a$b;->d:I

    const/16 v0, 0x3c

    iput-char v0, p0, Lb/h/m/a$b;->e:C

    const/16 v0, 0xd

    return v0
.end method


# virtual methods
.method a()B
    .registers 4

    iget-object v0, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lb/h/m/a$b;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lb/h/m/a$b;->e:C

    iget-char v0, p0, Lb/h/m/a$b;->e:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lb/h/m/a$b;->d:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Lb/h/m/a$b;->d:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lb/h/m/a$b;->d:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    :cond_2a
    iget v0, p0, Lb/h/m/a$b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/h/m/a$b;->d:I

    iget-char v0, p0, Lb/h/m/a$b;->e:C

    invoke-static {v0}, Lb/h/m/a$b;->a(C)B

    move-result v0

    iget-boolean v1, p0, Lb/h/m/a$b;->b:Z

    if-eqz v1, :cond_4d

    iget-char v1, p0, Lb/h/m/a$b;->e:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_45

    invoke-direct {p0}, Lb/h/m/a$b;->g()B

    move-result v0

    goto :goto_4d

    :cond_45
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4d

    invoke-direct {p0}, Lb/h/m/a$b;->e()B

    move-result v0

    :cond_4d
    :goto_4d
    return v0
.end method

.method b()B
    .registers 4

    iget-object v0, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lb/h/m/a$b;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lb/h/m/a$b;->e:C

    iget-char v0, p0, Lb/h/m/a$b;->e:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lb/h/m/a$b;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lb/h/m/a$b;->d:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Lb/h/m/a$b;->d:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lb/h/m/a$b;->d:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    :cond_28
    iget v0, p0, Lb/h/m/a$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/h/m/a$b;->d:I

    iget-char v0, p0, Lb/h/m/a$b;->e:C

    invoke-static {v0}, Lb/h/m/a$b;->a(C)B

    move-result v0

    iget-boolean v1, p0, Lb/h/m/a$b;->b:Z

    if-eqz v1, :cond_4b

    iget-char v1, p0, Lb/h/m/a$b;->e:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Lb/h/m/a$b;->h()B

    move-result v0

    goto :goto_4b

    :cond_43
    const/16 v2, 0x26

    if-ne v1, v2, :cond_4b

    invoke-direct {p0}, Lb/h/m/a$b;->f()B

    move-result v0

    :cond_4b
    :goto_4b
    return v0
.end method

.method c()I
    .registers 9

    const/4 v0, 0x0

    iput v0, p0, Lb/h/m/a$b;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_8
    :goto_8
    iget v6, p0, Lb/h/m/a$b;->d:I

    iget v7, p0, Lb/h/m/a$b;->c:I

    if-ge v6, v7, :cond_37

    if-nez v3, :cond_37

    invoke-virtual {p0}, Lb/h/m/a$b;->b()B

    move-result v6

    if-eqz v6, :cond_32

    if-eq v6, v2, :cond_2f

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x9

    if-eq v6, v7, :cond_8

    packed-switch v6, :pswitch_data_56

    goto :goto_35

    :pswitch_23
    add-int/lit8 v5, v5, -0x1

    const/4 v4, 0x0

    goto :goto_8

    :pswitch_27
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto :goto_8

    :pswitch_2b
    add-int/lit8 v5, v5, 0x1

    const/4 v4, -0x1

    goto :goto_8

    :cond_2f
    if-nez v5, :cond_35

    return v2

    :cond_32
    if-nez v5, :cond_35

    return v1

    :cond_35
    :goto_35
    move v3, v5

    goto :goto_8

    :cond_37
    if-nez v3, :cond_3a

    return v0

    :cond_3a
    if-eqz v4, :cond_3d

    return v4

    :cond_3d
    :goto_3d
    iget v4, p0, Lb/h/m/a$b;->d:I

    if-lez v4, :cond_55

    invoke-virtual {p0}, Lb/h/m/a$b;->a()B

    move-result v4

    packed-switch v4, :pswitch_data_64

    goto :goto_3d

    :pswitch_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :pswitch_4c
    if-ne v3, v5, :cond_52

    return v2

    :pswitch_4f
    if-ne v3, v5, :cond_52

    return v1

    :cond_52
    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    :cond_55
    return v0

    :pswitch_data_56
    .packed-switch 0xe
        :pswitch_2b
        :pswitch_2b
        :pswitch_27
        :pswitch_27
        :pswitch_23
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0xe
        :pswitch_4f
        :pswitch_4f
        :pswitch_4c
        :pswitch_4c
        :pswitch_49
    .end packed-switch
.end method

.method d()I
    .registers 8

    iget v0, p0, Lb/h/m/a$b;->c:I

    iput v0, p0, Lb/h/m/a$b;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_7
    :goto_7
    iget v3, p0, Lb/h/m/a$b;->d:I

    if-lez v3, :cond_3b

    invoke-virtual {p0}, Lb/h/m/a$b;->a()B

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_34

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2e

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2e

    const/16 v6, 0x9

    if-eq v3, v6, :cond_7

    packed-switch v3, :pswitch_data_3c

    if-nez v1, :cond_7

    goto :goto_39

    :pswitch_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :pswitch_25
    if-ne v1, v2, :cond_2b

    return v5

    :pswitch_28
    if-ne v1, v2, :cond_2b

    return v4

    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_2e
    if-nez v2, :cond_31

    return v5

    :cond_31
    if-nez v1, :cond_7

    goto :goto_39

    :cond_34
    if-nez v2, :cond_37

    return v4

    :cond_37
    if-nez v1, :cond_7

    :goto_39
    move v1, v2

    goto :goto_7

    :cond_3b
    return v0

    :pswitch_data_3c
    .packed-switch 0xe
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method
