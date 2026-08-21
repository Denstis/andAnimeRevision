###### Class b.a.n.g (b.a.n.g)
.class public Lb/a/n/g;
.super Landroid/view/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/n/g$b;,
        Lb/a/n/g$a;
    }
.end annotation


# static fields
.field static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[Ljava/lang/Object;

.field c:Landroid/content/Context;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lb/a/n/g;->e:[Ljava/lang/Class;

    sget-object v0, Lb/a/n/g;->e:[Ljava/lang/Class;

    sput-object v0, Lb/a/n/g;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/a/n/g;->c:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lb/a/n/g;->a:[Ljava/lang/Object;

    iget-object p1, p0, Lb/a/n/g;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lb/a/n/g;->b:[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/n/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 16

    new-instance v0, Lb/a/n/g$b;

    invoke-direct {v0, p0, p3}, Lb/a/n/g$b;-><init>(Lb/a/n/g;Landroid/view/Menu;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_9
    const/4 v1, 0x2

    const-string v2, "menu"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_35

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_3b

    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expecting menu, got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v3, :cond_9

    :goto_3b
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p3

    move-object v8, v4

    const/4 p3, 0x0

    const/4 v7, 0x0

    :goto_41
    if-nez p3, :cond_c7

    if-eq v6, v3, :cond_bf

    const-string v9, "item"

    const-string v10, "group"

    if-eq v6, v1, :cond_8f

    const/4 v11, 0x3

    if-eq v6, v11, :cond_50

    goto/16 :goto_ba

    :cond_50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_5f

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    move-object v8, v4

    const/4 v7, 0x0

    goto :goto_ba

    :cond_5f
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    invoke-virtual {v0}, Lb/a/n/g$b;->d()V

    goto :goto_ba

    :cond_69
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-virtual {v0}, Lb/a/n/g$b;->c()Z

    move-result v6

    if-nez v6, :cond_ba

    iget-object v6, v0, Lb/a/n/g$b;->A:Lb/h/o/b;

    if-eqz v6, :cond_83

    invoke-virtual {v6}, Lb/h/o/b;->a()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-virtual {v0}, Lb/a/n/g$b;->b()Landroid/view/SubMenu;

    goto :goto_ba

    :cond_83
    invoke-virtual {v0}, Lb/a/n/g$b;->a()V

    goto :goto_ba

    :cond_87
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    const/4 p3, 0x1

    goto :goto_ba

    :cond_8f
    if-eqz v7, :cond_92

    goto :goto_ba

    :cond_92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0

    invoke-virtual {v0, p2}, Lb/a/n/g$b;->a(Landroid/util/AttributeSet;)V

    goto :goto_ba

    :cond_a0
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-virtual {v0, p2}, Lb/a/n/g$b;->b(Landroid/util/AttributeSet;)V

    goto :goto_ba

    :cond_aa
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    invoke-virtual {v0}, Lb/a/n/g$b;->b()Landroid/view/SubMenu;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Lb/a/n/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_ba

    :cond_b8
    move-object v8, v6

    const/4 v7, 0x1

    :cond_ba
    :goto_ba
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_41

    :cond_bf
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected end of document"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c7
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/a/n/g;->d:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lb/a/n/g;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/n/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g;->d:Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lb/a/n/g;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lb/h/i/a/a;

    if-nez v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lb/a/n/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lb/a/n/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_22

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    goto :goto_32

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2b
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_22

    :goto_32
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_37
    throw p1
.end method

###### Class b.a.n.g.a (b.a.n.g$a)
.class Lb/a/n/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/MenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lb/a/n/g$a;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/n/g$a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :try_start_9
    sget-object v0, Lb/a/n/g$a;->c:[Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$a;->b:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t resolve menu item onClick handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in class "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lb/a/n/g$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lb/a/n/g$a;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lb/a/n/g$a;->a:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1f
    iget-object v0, p0, Lb/a/n/g$a;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lb/a/n/g$a;->a:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return v3

    :catch_2b
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class b.a.n.g.b (b.a.n.g$b)
.class Lb/a/n/g$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field A:Lb/h/o/b;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/graphics/PorterDuff$Mode;

.field final synthetic F:Lb/a/n/g;

.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:I

.field private p:C

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/a/n/g;Landroid/view/Menu;)V
    .registers 3

    iput-object p1, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/n/g$b;->D:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lb/a/n/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lb/a/n/g$b;->a:Landroid/view/Menu;

    invoke-virtual {p0}, Lb/a/n/g$b;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)C
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    iget-object v0, v0, Lb/a/n/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 7

    iget-boolean v0, p0, Lb/a/n/g$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lb/a/n/g$b;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lb/a/n/g$b;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lb/a/n/g$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lb/a/n/g$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lb/a/n/g$b;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lb/a/n/g$b;->v:I

    if-ltz v0, :cond_31

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_31
    iget-object v0, p0, Lb/a/n/g$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    iget-object v0, v0, Lb/a/n/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Lb/a/n/g$a;

    iget-object v1, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    invoke-virtual {v1}, Lb/a/n/g;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lb/a/n/g$b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lb/a/n/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_58

    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    :goto_58
    instance-of v0, p1, Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_5f

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/k;

    :cond_5f
    iget v1, p0, Lb/a/n/g$b;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_77

    if-eqz v0, :cond_6d

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/k;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/k;->c(Z)V

    goto :goto_77

    :cond_6d
    instance-of v0, p1, Landroidx/appcompat/view/menu/l;

    if-eqz v0, :cond_77

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/l;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/l;->a(Z)V

    :cond_77
    :goto_77
    iget-object v0, p0, Lb/a/n/g$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_8b

    sget-object v1, Lb/a/n/g;->e:[Ljava/lang/Class;

    iget-object v2, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    iget-object v2, v2, Lb/a/n/g;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lb/a/n/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    :cond_8b
    iget v0, p0, Lb/a/n/g$b;->w:I

    if-lez v0, :cond_9c

    if-nez v2, :cond_95

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_9c

    :cond_95
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lb/a/n/g$b;->A:Lb/h/o/b;

    if-eqz v0, :cond_a3

    invoke-static {p1, v0}, Lb/h/o/g;->a(Landroid/view/MenuItem;Lb/h/o/b;)Landroid/view/MenuItem;

    :cond_a3
    iget-object v0, p0, Lb/a/n/g$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lb/h/o/g;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/a/n/g$b;->C:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lb/h/o/g;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Lb/a/n/g$b;->n:C

    iget v1, p0, Lb/a/n/g$b;->o:I

    invoke-static {p1, v0, v1}, Lb/h/o/g;->a(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Lb/a/n/g$b;->p:C

    iget v1, p0, Lb/a/n/g$b;->q:I

    invoke-static {p1, v0, v1}, Lb/h/o/g;->b(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Lb/a/n/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_c2

    invoke-static {p1, v0}, Lb/h/o/g;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_c2
    iget-object v0, p0, Lb/a/n/g$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c9

    invoke-static {p1, v0}, Lb/h/o/g;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c9
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/n/g$b;->h:Z

    iget-object v0, p0, Lb/a/n/g$b;->a:Landroid/view/Menu;

    iget v1, p0, Lb/a/n/g$b;->b:I

    iget v2, p0, Lb/a/n/g$b;->i:I

    iget v3, p0, Lb/a/n/g$b;->j:I

    iget-object v4, p0, Lb/a/n/g$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/n/g$b;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .registers 4

    iget-object v0, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    iget-object v0, v0, Lb/a/n/g;->c:Landroid/content/Context;

    sget-object v1, Lb/a/j;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lb/a/j;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->b:I

    sget v0, Lb/a/j;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->c:I

    sget v0, Lb/a/j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->d:I

    sget v0, Lb/a/j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->e:I

    sget v0, Lb/a/j;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/n/g$b;->f:Z

    sget v0, Lb/a/j;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/n/g$b;->g:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/n/g$b;->h:Z

    iget-object v0, p0, Lb/a/n/g$b;->a:Landroid/view/Menu;

    iget v1, p0, Lb/a/n/g$b;->b:I

    iget v2, p0, Lb/a/n/g$b;->i:I

    iget v3, p0, Lb/a/n/g$b;->j:I

    iget-object v4, p0, Lb/a/n/g$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/a/n/g$b;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public b(Landroid/util/AttributeSet;)V
    .registers 8

    iget-object v0, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    iget-object v0, v0, Lb/a/n/g;->c:Landroid/content/Context;

    sget-object v1, Lb/a/j;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lb/a/j;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->i:I

    sget v0, Lb/a/j;->MenuItem_android_menuCategory:I

    iget v2, p0, Lb/a/n/g$b;->c:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Lb/a/j;->MenuItem_android_orderInCategory:I

    iget v3, p0, Lb/a/n/g$b;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, p0, Lb/a/n/g$b;->j:I

    sget v0, Lb/a/j;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->k:Ljava/lang/CharSequence;

    sget v0, Lb/a/j;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->l:Ljava/lang/CharSequence;

    sget v0, Lb/a/j;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->m:I

    sget v0, Lb/a/j;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/n/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lb/a/n/g$b;->n:C

    sget v0, Lb/a/j;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->o:I

    sget v0, Lb/a/j;->MenuItem_android_numericShortcut:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/n/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lb/a/n/g$b;->p:C

    sget v0, Lb/a/j;->MenuItem_numericModifiers:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->q:I

    sget v0, Lb/a/j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    sget v0, Lb/a/j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    goto :goto_80

    :cond_7e
    iget v0, p0, Lb/a/n/g$b;->e:I

    :goto_80
    iput v0, p0, Lb/a/n/g$b;->r:I

    sget v0, Lb/a/j;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/n/g$b;->s:Z

    sget v0, Lb/a/j;->MenuItem_android_visible:I

    iget-boolean v2, p0, Lb/a/n/g$b;->f:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/n/g$b;->t:Z

    sget v0, Lb/a/j;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Lb/a/n/g$b;->g:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/n/g$b;->u:Z

    sget v0, Lb/a/j;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->v:I

    sget v0, Lb/a/j;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->z:Ljava/lang/String;

    sget v0, Lb/a/j;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/a/n/g$b;->w:I

    sget v0, Lb/a/j;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->x:Ljava/lang/String;

    sget v0, Lb/a/j;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->y:Ljava/lang/String;

    iget-object v0, p0, Lb/a/n/g$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_cd

    const/4 v0, 0x1

    goto :goto_ce

    :cond_cd
    const/4 v0, 0x0

    :goto_ce
    const/4 v3, 0x0

    if-eqz v0, :cond_ea

    iget v4, p0, Lb/a/n/g$b;->w:I

    if-nez v4, :cond_ea

    iget-object v4, p0, Lb/a/n/g$b;->x:Ljava/lang/String;

    if-nez v4, :cond_ea

    iget-object v0, p0, Lb/a/n/g$b;->y:Ljava/lang/String;

    sget-object v4, Lb/a/n/g;->f:[Ljava/lang/Class;

    iget-object v5, p0, Lb/a/n/g$b;->F:Lb/a/n/g;

    iget-object v5, v5, Lb/a/n/g;->b:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Lb/a/n/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h/o/b;

    iput-object v0, p0, Lb/a/n/g$b;->A:Lb/h/o/b;

    goto :goto_f5

    :cond_ea
    if-eqz v0, :cond_f3

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    iput-object v3, p0, Lb/a/n/g$b;->A:Lb/h/o/b;

    :goto_f5
    sget v0, Lb/a/j;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->B:Ljava/lang/CharSequence;

    sget v0, Lb/a/j;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->C:Ljava/lang/CharSequence;

    sget v0, Lb/a/j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11c

    sget v0, Lb/a/j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lb/a/n/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/a0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    goto :goto_11e

    :cond_11c
    iput-object v3, p0, Lb/a/n/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    :goto_11e
    sget v0, Lb/a/j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12f

    sget v0, Lb/a/j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/g$b;->D:Landroid/content/res/ColorStateList;

    goto :goto_131

    :cond_12f
    iput-object v3, p0, Lb/a/n/g$b;->D:Landroid/content/res/ColorStateList;

    :goto_131
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Lb/a/n/g$b;->h:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lb/a/n/g$b;->h:Z

    return v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/a/n/g$b;->b:I

    iput v0, p0, Lb/a/n/g$b;->c:I

    iput v0, p0, Lb/a/n/g$b;->d:I

    iput v0, p0, Lb/a/n/g$b;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/n/g$b;->f:Z

    iput-boolean v0, p0, Lb/a/n/g$b;->g:Z

    return-void
.end method
