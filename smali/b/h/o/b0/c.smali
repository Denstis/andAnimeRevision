###### Class b.h.o.b0.c (b.h.o.b0.c)
.class public Lb/h/o/b0/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/o/b0/c$c;,
        Lb/h/o/b0/c$b;,
        Lb/h/o/b0/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:I


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/h/o/b0/c;->b:I

    iput-object p1, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/o/b0/c;
    .registers 2

    new-instance v0, Lb/h/o/b0/c;

    invoke-direct {v0, p0}, Lb/h/o/b0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public static a(Lb/h/o/b0/c;)Lb/h/o/b0/c;
    .registers 1

    iget-object p0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Lb/h/o/b0/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/o/b0/c;

    move-result-object p0

    return-object p0
.end method

.method private a(IZ)V
    .registers 8

    invoke-virtual {p0}, Lb/h/o/b0/c;->e()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    or-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3c

    sparse-switch p0, :sswitch_data_42

    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    :sswitch_c
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    :sswitch_f
    const-string p0, "ACTION_CUT"

    return-object p0

    :sswitch_12
    const-string p0, "ACTION_PASTE"

    return-object p0

    :sswitch_15
    const-string p0, "ACTION_COPY"

    return-object p0

    :sswitch_18
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    :sswitch_1b
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    :sswitch_1e
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    :sswitch_21
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    :sswitch_24
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_27
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_2a
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_2d
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_30
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    :sswitch_33
    const-string p0, "ACTION_CLICK"

    return-object p0

    :sswitch_36
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    :sswitch_39
    const-string p0, "ACTION_SELECT"

    return-object p0

    :cond_3c
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    :cond_3f
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_42
    .sparse-switch
        0x4 -> :sswitch_39
        0x8 -> :sswitch_36
        0x10 -> :sswitch_33
        0x20 -> :sswitch_30
        0x40 -> :sswitch_2d
        0x80 -> :sswitch_2a
        0x100 -> :sswitch_27
        0x200 -> :sswitch_24
        0x400 -> :sswitch_21
        0x800 -> :sswitch_1e
        0x1000 -> :sswitch_1b
        0x2000 -> :sswitch_18
        0x4000 -> :sswitch_15
        0x8000 -> :sswitch_12
        0x10000 -> :sswitch_f
        0x20000 -> :sswitch_c
    .end sparse-switch
.end method

.method public static d(Landroid/view/View;)Lb/h/o/b0/c;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Lb/h/o/b0/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/o/b0/c;

    move-result-object p0

    return-object p0
.end method

.method public static w()Lb/h/o/b0/c;
    .registers 1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lb/h/o/b0/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/o/b0/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method public a(Lb/h/o/b0/c$a;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Lb/h/o/b0/c$a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    check-cast p1, Lb/h/o/b0/c$b;

    iget-object p1, p1, Lb/h/o/b0/c$b;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_15
    return-void
.end method

.method public a(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_b
    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 5

    iput p2, p0, Lb/h/o/b0/c;->b:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_d
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    check-cast p1, Lb/h/o/b0/c$c;

    iget-object p1, p1, Lb/h/o/b0/c$c;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_15
    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method public b(Lb/h/o/b0/c$a;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Lb/h/o/b0/c$a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_c
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public d(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public e()Landroid/os/Bundle;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public e(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-class v2, Lb/h/o/b0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Lb/h/o/b0/c;

    iget-object v2, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_1c

    if-eqz p1, :cond_23

    return v1

    :cond_1c
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    return v1

    :cond_23
    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :cond_b
    return-void
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    return-void
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public i(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    return-void
.end method

.method public i()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public j(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public k(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public l(Z)V
    .registers 3

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public m(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lb/h/o/b0/c;->a(IZ)V

    :goto_10
    return-void
.end method

.method public m()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public n(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_b
    return-void
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lb/h/o/b0/c;->b(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->r()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/o/b0/c;->a()I

    move-result v1

    :cond_108
    :goto_108
    if-eqz v1, :cond_122

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v1, v3

    invoke-static {v2}, Lb/h/o/b0/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_108

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_122
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method

.method public v()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    iget-object v0, p0, Lb/h/o/b0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

###### Class b.h.o.b0.c.a (b.h.o.b0.c$a)
.class public Lb/h/o/b0/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final b:Lb/h/o/b0/c$a;

.field public static final c:Lb/h/o/b0/c$a;

.field public static final d:Lb/h/o/b0/c$a;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lb/h/o/b0/c$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lb/h/o/b0/c$a;->b:Lb/h/o/b0/c$a;

    new-instance v0, Lb/h/o/b0/c$a;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lb/h/o/b0/c$a;->c:Lb/h/o/b0/c$a;

    new-instance v0, Lb/h/o/b0/c$a;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lb/h/o/b0/c$a;->d:Lb/h/o/b0/c$a;

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x100

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x200

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x400

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x800

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x1000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x2000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/16 v2, 0x4000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const v2, 0x8000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/high16 v2, 0x10000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/high16 v2, 0x20000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/high16 v2, 0x40000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/high16 v2, 0x80000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/high16 v2, 0x100000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    const/high16 v2, 0x200000

    invoke-direct {v0, v2, v1}, Lb/h/o/b0/c$a;-><init>(ILjava/lang/CharSequence;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_aa

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_ab

    :cond_aa
    move-object v2, v1

    :goto_ab
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_b7

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_b8

    :cond_b7
    move-object v2, v1

    :goto_b8
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_c4

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_c5

    :cond_c4
    move-object v2, v1

    :goto_c5
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_d1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_d2

    :cond_d1
    move-object v2, v1

    :goto_d2
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_de

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_df

    :cond_de
    move-object v2, v1

    :goto_df
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_eb

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_ec

    :cond_eb
    move-object v2, v1

    :goto_ec
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_f8

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_f9

    :cond_f8
    move-object v2, v1

    :goto_f9
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_107

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_108

    :cond_107
    move-object v2, v1

    :goto_108
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_116

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_117

    :cond_116
    move-object v2, v1

    :goto_117
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_125

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_126

    :cond_125
    move-object v2, v1

    :goto_126
    invoke-direct {v0, v2}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lb/h/o/b0/c$a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_131

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :cond_131
    invoke-direct {v0, v1}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lb/h/o/b0/c$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/b0/c$a;->a:Ljava/lang/Object;

    return-void
.end method

###### Class b.h.o.b0.c.b (b.h.o.b0.c$b)
.class public Lb/h/o/b0/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/b0/c$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIZI)Lb/h/o/b0/c$b;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    new-instance v0, Lb/h/o/b0/c$b;

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/h/o/b0/c$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    const/16 p3, 0x13

    if-lt v0, p3, :cond_1e

    new-instance p3, Lb/h/o/b0/c$b;

    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {p3, p0}, Lb/h/o/b0/c$b;-><init>(Ljava/lang/Object;)V

    return-object p3

    :cond_1e
    new-instance p0, Lb/h/o/b0/c$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lb/h/o/b0/c$b;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

###### Class b.h.o.b0.c.C0108c (b.h.o.b0.c$c)
.class public Lb/h/o/b0/c$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/b0/c$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIIIZZ)Lb/h/o/b0/c$c;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    new-instance v0, Lb/h/o/b0/c$c;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/h/o/b0/c$c;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    const/16 p5, 0x13

    if-lt v0, p5, :cond_1e

    new-instance p5, Lb/h/o/b0/c$c;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {p5, p0}, Lb/h/o/b0/c$c;-><init>(Ljava/lang/Object;)V

    return-object p5

    :cond_1e
    new-instance p0, Lb/h/o/b0/c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lb/h/o/b0/c$c;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
