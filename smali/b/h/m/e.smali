###### Class b.h.m.e (b.h.m.e)
.class public final Lb/h/m/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/m/e$f;,
        Lb/h/m/e$a;,
        Lb/h/m/e$b;,
        Lb/h/m/e$c;,
        Lb/h/m/e$e;,
        Lb/h/m/e$d;
    }
.end annotation


# static fields
.field public static final a:Lb/h/m/d;

.field public static final b:Lb/h/m/d;

.field public static final c:Lb/h/m/d;

.field public static final d:Lb/h/m/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lb/h/m/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/h/m/e$e;-><init>(Lb/h/m/e$c;Z)V

    sput-object v0, Lb/h/m/e;->a:Lb/h/m/d;

    new-instance v0, Lb/h/m/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/h/m/e$e;-><init>(Lb/h/m/e$c;Z)V

    sput-object v0, Lb/h/m/e;->b:Lb/h/m/d;

    new-instance v0, Lb/h/m/e$e;

    sget-object v1, Lb/h/m/e$b;->a:Lb/h/m/e$b;

    invoke-direct {v0, v1, v2}, Lb/h/m/e$e;-><init>(Lb/h/m/e$c;Z)V

    sput-object v0, Lb/h/m/e;->c:Lb/h/m/d;

    new-instance v0, Lb/h/m/e$e;

    sget-object v1, Lb/h/m/e$b;->a:Lb/h/m/e$b;

    invoke-direct {v0, v1, v3}, Lb/h/m/e$e;-><init>(Lb/h/m/e$c;Z)V

    sput-object v0, Lb/h/m/e;->d:Lb/h/m/d;

    new-instance v0, Lb/h/m/e$e;

    sget-object v1, Lb/h/m/e$a;->b:Lb/h/m/e$a;

    invoke-direct {v0, v1, v2}, Lb/h/m/e$e;-><init>(Lb/h/m/e$c;Z)V

    sget-object v0, Lb/h/m/e$f;->b:Lb/h/m/e$f;

    return-void
.end method

.method static a(I)I
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method static b(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    packed-switch p0, :pswitch_data_10

    return v1

    :cond_c
    :pswitch_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :pswitch_e
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0xe
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

###### Class b.h.m.e.a (b.h.m.e$a)
.class Lb/h/m/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/m/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final b:Lb/h/m/e$a;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/h/m/e$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/h/m/e$a;-><init>(Z)V

    sput-object v0, Lb/h/m/e$a;->b:Lb/h/m/e$a;

    new-instance v0, Lb/h/m/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/h/m/e$a;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/h/m/e$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .registers 8

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge p2, p3, :cond_25

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    invoke-static {v2}, Lb/h/m/e;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    if-eq v2, v3, :cond_17

    goto :goto_22

    :cond_17
    iget-boolean v1, p0, Lb/h/m/e$a;->a:Z

    if-nez v1, :cond_21

    return v3

    :cond_1c
    iget-boolean v1, p0, Lb/h/m/e$a;->a:Z

    if-eqz v1, :cond_21

    return v0

    :cond_21
    const/4 v1, 0x1

    :goto_22
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_25
    if-eqz v1, :cond_2a

    iget-boolean p1, p0, Lb/h/m/e$a;->a:Z

    return p1

    :cond_2a
    const/4 p1, 0x2

    return p1
.end method

###### Class b.h.m.e.b (b.h.m.e$b)
.class Lb/h/m/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/m/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lb/h/m/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/h/m/e$b;

    invoke-direct {v0}, Lb/h/m/e$b;-><init>()V

    sput-object v0, Lb/h/m/e$b;->a:Lb/h/m/e$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .registers 6

    add-int/2addr p3, p2

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_3
    if-ge p2, p3, :cond_16

    if-ne v1, v0, :cond_16

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    invoke-static {v1}, Lb/h/m/e;->b(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_16
    return v1
.end method

###### Class b.h.m.e.c (b.h.m.e$c)
.class interface abstract Lb/h/m/e$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;II)I
.end method

###### Class b.h.m.e.d (b.h.m.e$d)
.class abstract Lb/h/m/e$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/m/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field private final a:Lb/h/m/e$c;


# direct methods
.method constructor <init>(Lb/h/m/e$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/m/e$d;->a:Lb/h/m/e$c;

    return-void
.end method

.method private b(Ljava/lang/CharSequence;II)Z
    .registers 5

    iget-object v0, p0, Lb/h/m/e$d;->a:Lb/h/m/e$c;

    invoke-interface {v0, p1, p2, p3}, Lb/h/m/e$c;->a(Ljava/lang/CharSequence;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_12

    if-eq p1, p2, :cond_10

    invoke-virtual {p0}, Lb/h/m/e$d;->a()Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_12
    return p2
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method public a(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1b

    iget-object v0, p0, Lb/h/m/e$d;->a:Lb/h/m/e$c;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lb/h/m/e$d;->a()Z

    move-result p1

    return p1

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lb/h/m/e$d;->b(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

###### Class b.h.m.e.C0104e (b.h.m.e$e)
.class Lb/h/m/e$e;
.super Lb/h/m/e$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Lb/h/m/e$c;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lb/h/m/e$d;-><init>(Lb/h/m/e$c;)V

    iput-boolean p2, p0, Lb/h/m/e$e;->b:Z

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    iget-boolean v0, p0, Lb/h/m/e$e;->b:Z

    return v0
.end method

###### Class b.h.m.e.f (b.h.m.e$f)
.class Lb/h/m/e$f;
.super Lb/h/m/e$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field static final b:Lb/h/m/e$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/h/m/e$f;

    invoke-direct {v0}, Lb/h/m/e$f;-><init>()V

    sput-object v0, Lb/h/m/e$f;->b:Lb/h/m/e$f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/h/m/e$d;-><init>(Lb/h/m/e$c;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lb/h/m/f;->b(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method
