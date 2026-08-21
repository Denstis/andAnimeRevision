###### Class animebestapp.com.ui.comments.a (animebestapp.com.ui.comments.a)
.class public final Lanimebestapp/com/ui/comments/a;
.super Landroidx/recyclerview/widget/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/comments/a$b;,
        Lanimebestapp/com/ui/comments/a$d;,
        Lanimebestapp/com/ui/comments/a$e;,
        Lanimebestapp/com/ui/comments/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/o<",
        "Lanimebestapp/com/ui/comments/a$c;",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lanimebestapp/com/ui/comments/a$e;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/comments/a$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/comments/a$a;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/h$d;)V

    sget-object v0, Lanimebestapp/com/ui/comments/a$e;->c:Lanimebestapp/com/ui/comments/a$e;

    iput-object v0, p0, Lanimebestapp/com/ui/comments/a;->b:Lanimebestapp/com/ui/comments/a$e;

    return-void
.end method


# virtual methods
.method public final a()Lanimebestapp/com/ui/comments/a$e;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a;->b:Lanimebestapp/com/ui/comments/a$e;

    return-object v0
.end method

.method public final a(Lanimebestapp/com/ui/comments/a$e;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a;->b:Lanimebestapp/com/ui/comments/a$e;

    return-void
.end method

.method public getItemViewType(I)I
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/ui/comments/a$c;

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lanimebestapp/com/ui/comments/a$b;

    if-eqz v0, :cond_19

    check-cast p1, Lanimebestapp/com/ui/comments/a$b;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/o;->a(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lanimebestapp/com/ui/comments/a$c;

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/comments/a$b;->a(Lanimebestapp/com/ui/comments/a$c;)V

    :cond_19
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_23

    new-instance p2, Lanimebestapp/com/ui/comments/a$d;

    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026_progress, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/comments/a$d;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_23
    new-instance p2, Lanimebestapp/com/ui/comments/a$b;

    const v2, 0x7f0b0054

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026i_comment, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/comments/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

###### Class animebestapp.com.ui.comments.a.C0042a (animebestapp.com.ui.comments.a$a)
.class public final Lanimebestapp/com/ui/comments/a$a;
.super Landroidx/recyclerview/widget/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h$d<",
        "Lanimebestapp/com/ui/comments/a$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/h$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/ui/comments/a$c;Lanimebestapp/com/ui/comments/a$c;)Z
    .registers 4

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lanimebestapp/com/ui/comments/a$c;

    check-cast p2, Lanimebestapp/com/ui/comments/a$c;

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/comments/a$a;->a(Lanimebestapp/com/ui/comments/a$c;Lanimebestapp/com/ui/comments/a$c;)Z

    move-result p1

    return p1
.end method

.method public b(Lanimebestapp/com/ui/comments/a$c;Lanimebestapp/com/ui/comments/a$c;)Z
    .registers 4

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lanimebestapp/com/ui/comments/a$c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lanimebestapp/com/ui/comments/a$c;

    check-cast p2, Lanimebestapp/com/ui/comments/a$c;

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/comments/a$a;->b(Lanimebestapp/com/ui/comments/a$c;Lanimebestapp/com/ui/comments/a$c;)Z

    move-result p1

    return p1
.end method

###### Class animebestapp.com.ui.comments.a.b (animebestapp.com.ui.comments.a$b)
.class public final Lanimebestapp/com/ui/comments/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/comments/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvName:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->a:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvComment:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->b:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvDate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->c:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->ivPhoto:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->ivPlaceholder:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvType:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->e:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvParentComment:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->f:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->llParentComment:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->g:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->tvParentCommentName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b;->h:Landroid/widget/TextView;

    return-void
.end method

.method private final a(Ljava/lang/String;)I
    .registers 5

    const v0, 0x7f0500d5

    if-nez p1, :cond_7

    goto/16 :goto_12b

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_11f

    const/16 v2, 0x38

    if-eq v1, v2, :cond_113

    const/16 v2, 0x65d

    if-eq v1, v2, :cond_10a

    packed-switch v1, :pswitch_data_130

    packed-switch v1, :pswitch_data_13a

    packed-switch v1, :pswitch_data_14a

    goto/16 :goto_12b

    :pswitch_22
    const-string v1, "29"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    goto/16 :goto_12e

    :pswitch_2c
    const-string v1, "28"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    goto/16 :goto_12e

    :pswitch_36
    const-string v0, "27"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050043

    goto/16 :goto_12e

    :pswitch_43
    const-string v0, "26"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050042

    goto/16 :goto_12e

    :pswitch_50
    const-string v0, "25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f05004b

    goto/16 :goto_12e

    :pswitch_5d
    const-string v0, "24"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f05004a

    goto/16 :goto_12e

    :pswitch_6a
    const-string v0, "23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050049

    goto/16 :goto_12e

    :pswitch_77
    const-string v0, "22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050048

    goto/16 :goto_12e

    :pswitch_84
    const-string v0, "21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050047

    goto/16 :goto_12e

    :pswitch_91
    const-string v0, "20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050046

    goto/16 :goto_12e

    :pswitch_9e
    const-string v0, "19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050045

    goto/16 :goto_12e

    :pswitch_ab
    const-string v0, "18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050044

    goto/16 :goto_12e

    :pswitch_b8
    const-string v0, "17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050041

    goto/16 :goto_12e

    :pswitch_c5
    const-string v0, "16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050025

    goto :goto_12e

    :pswitch_d1
    const-string v0, "15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050076

    goto :goto_12e

    :pswitch_dd
    const-string v1, "14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    goto :goto_12e

    :pswitch_e6
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f050035

    goto :goto_12e

    :pswitch_f2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f05002d

    goto :goto_12e

    :pswitch_fe
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f0500b4

    goto :goto_12e

    :cond_10a
    const-string v1, "30"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    goto :goto_12e

    :cond_113
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f0500a9

    goto :goto_12e

    :cond_11f
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const v0, 0x7f0500b2

    goto :goto_12e

    :cond_12b
    :goto_12b
    const v0, 0x7f0500cd

    :goto_12e
    return v0

    nop

    :pswitch_data_130
    .packed-switch 0x31
        :pswitch_fe
        :pswitch_f2
        :pswitch_e6
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x623
        :pswitch_dd
        :pswitch_d1
        :pswitch_c5
        :pswitch_b8
        :pswitch_ab
        :pswitch_9e
    .end packed-switch

    :pswitch_data_14a
    .packed-switch 0x63e
        :pswitch_91
        :pswitch_84
        :pswitch_77
        :pswitch_6a
        :pswitch_5d
        :pswitch_50
        :pswitch_43
        :pswitch_36
        :pswitch_2c
        :pswitch_22
    .end packed-switch
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/comments/a$b;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/comments/a$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "\u041f\u0440\u043e\u0445\u043e\u0436\u0438\u0439"

    if-nez p1, :cond_6

    goto/16 :goto_132

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_128

    const/16 v2, 0x38

    if-eq v1, v2, :cond_11d

    const/16 v2, 0x65d

    if-eq v1, v2, :cond_112

    packed-switch v1, :pswitch_data_134

    packed-switch v1, :pswitch_data_142

    packed-switch v1, :pswitch_data_152

    goto/16 :goto_132

    :pswitch_21
    const-string v1, "29"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "VIP++"

    goto/16 :goto_132

    :pswitch_2d
    const-string v1, "28"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "VIP+"

    goto/16 :goto_132

    :pswitch_39
    const-string v1, "27"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "S+ \u0412\u043b\u0430\u0441\u0442\u0435\u043b\u0438\u043d"

    goto/16 :goto_132

    :pswitch_45
    const-string v1, "26"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "S \u0413\u0443\u0440\u0443"

    goto/16 :goto_132

    :pswitch_51
    const-string v1, "25"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0410+++ \u0417\u043d\u0430\u0442\u043e\u043a"

    goto/16 :goto_132

    :pswitch_5d
    const-string v1, "24"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "A ++ \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_69
    const-string v1, "23"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "A + \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_75
    const-string v1, "22"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "A \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_81
    const-string v1, "21"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "B \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_8d
    const-string v1, "20"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "C \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_99
    const-string v1, "19"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "D \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_a5
    const-string v1, "18"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "E \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_b1
    const-string v1, "17"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "F \u041a\u043b\u0430\u0441\u0441"

    goto/16 :goto_132

    :pswitch_bd
    const-string v1, "16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0423\u0447\u0435\u0431\u043d\u044b\u0439 \u0448\u0442\u0430\u0431"

    goto/16 :goto_132

    :pswitch_c9
    const-string v1, "15"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0421\u043f\u043e\u043d\u0441\u043e\u0440"

    goto :goto_132

    :pswitch_d4
    const-string v1, "14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "VIP"

    goto :goto_132

    :pswitch_df
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_132

    :pswitch_e6
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0410\u043d\u0438\u043c\u0435\u0448\u043d\u0438\u043a"

    goto :goto_132

    :pswitch_f1
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0416\u0443\u0440\u043d\u0430\u043b\u0438\u0441\u0442"

    goto :goto_132

    :pswitch_fc
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440/\u0414\u0430\u0431\u0431\u0435\u0440"

    goto :goto_132

    :pswitch_107
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0410\u0434\u043c\u0438\u043d"

    goto :goto_132

    :cond_112
    const-string v1, "30"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "VIP+++"

    goto :goto_132

    :cond_11d
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0422\u0435\u0445\u043d\u0430\u0440\u044c"

    goto :goto_132

    :cond_128
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    const-string v0, "\u0414\u0430\u0431\u0431\u0435\u0440"

    :cond_132
    :goto_132
    return-object v0

    nop

    :pswitch_data_134
    .packed-switch 0x31
        :pswitch_107
        :pswitch_fc
        :pswitch_f1
        :pswitch_e6
        :pswitch_df
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x623
        :pswitch_d4
        :pswitch_c9
        :pswitch_bd
        :pswitch_b1
        :pswitch_a5
        :pswitch_99
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x63e
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/a$c;)V
    .registers 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lanimebestapp/com/ui/comments/a$b;->a:Landroid/widget/TextView;

    const-string v2, "tvName"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lanimebestapp/com/models/Comment;->getUserGroup()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v4

    :goto_1f
    invoke-direct {p0, v3}, Lanimebestapp/com/ui/comments/a$b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->e:Landroid/widget/TextView;

    const-string v1, "tvType"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lanimebestapp/com/models/Comment;->getUserGroup()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_3c
    move-object v1, v4

    :goto_3d
    invoke-direct {p0, v1}, Lanimebestapp/com/ui/comments/a$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-eqz v1, :cond_150

    invoke-virtual {v1}, Lanimebestapp/com/models/Comment;->getAutor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "tvModel"

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v0, v2, :cond_77

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lanimebestapp/com/models/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_8a

    :cond_73
    invoke-static {}, Lg/p/b/f;->a()V

    throw v4

    :cond_77
    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-eqz v1, :cond_14c

    invoke-virtual {v1}, Lanimebestapp/com/models/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_8a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->g:Landroid/widget/LinearLayout;

    const-string v1, "llParentComment"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->c()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-nez v1, :cond_9d

    const/16 v1, 0x8

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const-string v5, "tvParentComment"

    if-lt v0, v2, :cond_c0

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->f:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->c()Lanimebestapp/com/models/Comment;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual {v2}, Lanimebestapp/com/models/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    move-object v1, v2

    :cond_bb
    invoke-static {v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_d6

    :cond_c0
    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->f:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->c()Lanimebestapp/com/models/Comment;

    move-result-object v2

    if-eqz v2, :cond_d2

    invoke-virtual {v2}, Lanimebestapp/com/models/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d2

    move-object v1, v2

    :cond_d2
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_d6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->h:Landroid/widget/TextView;

    const-string v1, "tvParentCommentName"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->c()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Lanimebestapp/com/models/Comment;->getAutor()Ljava/lang/String;

    move-result-object v1

    goto :goto_ec

    :cond_eb
    move-object v1, v4

    :goto_ec
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->c:Landroid/widget/TextView;

    const-string v1, "tvDate"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object v1

    if-eqz v1, :cond_148

    invoke-virtual {v1}, Lanimebestapp/com/models/Comment;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/a$c;->a()Lanimebestapp/com/models/Comment;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/models/Comment;->getFoto()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_147

    const/4 v0, 0x2

    const-string v1, "http"

    invoke-static {p1, v1, v3, v0, v4}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    goto :goto_128

    :cond_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_128
    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->d:Landroid/widget/ImageView;

    invoke-static {v0}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p1

    invoke-static {}, Lc/a/a/r/f;->K()Lc/a/a/r/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/comments/a$b$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/a$b$a;-><init>(Lanimebestapp/com/ui/comments/a$b;)V

    invoke-virtual {p1, v0}, Lc/a/a/j;->b(Lc/a/a/r/e;)Lc/a/a/j;

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    :cond_147
    return-void

    :cond_148
    invoke-static {}, Lg/p/b/f;->a()V

    throw v4

    :cond_14c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v4

    :cond_150
    invoke-static {}, Lg/p/b/f;->a()V

    throw v4
.end method

###### Class animebestapp.com.ui.comments.a.b.C0043a (animebestapp.com.ui.comments.a$b$a)
.class public final Lanimebestapp/com/ui/comments/a$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/r/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/a$b;->a(Lanimebestapp/com/ui/comments/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/r/e<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/comments/a$b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/a$b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$b$a;->a:Lanimebestapp/com/ui/comments/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lc/a/a/r/j/h;Lcom/bumptech/glide/load/a;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lc/a/a/r/j/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    iget-object p1, p0, Lanimebestapp/com/ui/comments/a$b$a;->a:Lanimebestapp/com/ui/comments/a$b;

    invoke-static {p1}, Lanimebestapp/com/ui/comments/a$b;->a(Lanimebestapp/com/ui/comments/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    const-string p2, "ivPhoto"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

.method public a(Lcom/bumptech/glide/load/n/q;Ljava/lang/Object;Lc/a/a/r/j/h;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/q;",
            "Ljava/lang/Object;",
            "Lc/a/a/r/j/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object p1, p0, Lanimebestapp/com/ui/comments/a$b$a;->a:Lanimebestapp/com/ui/comments/a$b;

    invoke-static {p1}, Lanimebestapp/com/ui/comments/a$b;->a(Lanimebestapp/com/ui/comments/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    const-string p2, "ivPhoto"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lc/a/a/r/j/h;Lcom/bumptech/glide/load/a;Z)Z
    .registers 6

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lanimebestapp/com/ui/comments/a$b$a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lc/a/a/r/j/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result p1

    return p1
.end method

###### Class animebestapp.com.ui.comments.a.c (animebestapp.com.ui.comments.a$c)
.class public final Lanimebestapp/com/ui/comments/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/comments/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/models/Comment;

.field private final b:Lanimebestapp/com/models/Comment;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lanimebestapp/com/ui/comments/a$c;-><init>(Lanimebestapp/com/models/Comment;Lanimebestapp/com/models/Comment;Ljava/lang/String;ILg/p/b/d;)V

    return-void
.end method

.method public constructor <init>(Lanimebestapp/com/models/Comment;Lanimebestapp/com/models/Comment;Ljava/lang/String;)V
    .registers 5

    const-string v0, "id"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/comments/a$c;->a:Lanimebestapp/com/models/Comment;

    iput-object p2, p0, Lanimebestapp/com/ui/comments/a$c;->b:Lanimebestapp/com/models/Comment;

    iput-object p3, p0, Lanimebestapp/com/ui/comments/a$c;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lanimebestapp/com/models/Comment;Lanimebestapp/com/models/Comment;Ljava/lang/String;ILg/p/b/d;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1a

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lanimebestapp/com/models/Comment;->getId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_18

    goto :goto_1a

    :cond_18
    const-string p3, "progress"

    :cond_1a
    :goto_1a
    invoke-direct {p0, p1, p2, p3}, Lanimebestapp/com/ui/comments/a$c;-><init>(Lanimebestapp/com/models/Comment;Lanimebestapp/com/models/Comment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lanimebestapp/com/models/Comment;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->a:Lanimebestapp/com/models/Comment;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lanimebestapp/com/models/Comment;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->b:Lanimebestapp/com/models/Comment;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_29

    instance-of v0, p1, Lanimebestapp/com/ui/comments/a$c;

    if-eqz v0, :cond_27

    check-cast p1, Lanimebestapp/com/ui/comments/a$c;

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->a:Lanimebestapp/com/models/Comment;

    iget-object v1, p1, Lanimebestapp/com/ui/comments/a$c;->a:Lanimebestapp/com/models/Comment;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->b:Lanimebestapp/com/models/Comment;

    iget-object v1, p1, Lanimebestapp/com/ui/comments/a$c;->b:Lanimebestapp/com/models/Comment;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->c:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/ui/comments/a$c;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/comments/a$c;->a:Lanimebestapp/com/models/Comment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lanimebestapp/com/models/Comment;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/ui/comments/a$c;->b:Lanimebestapp/com/models/Comment;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lanimebestapp/com/models/Comment;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/ui/comments/a$c;->c:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model(comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/comments/a$c;->a:Lanimebestapp/com/models/Comment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentComment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/comments/a$c;->b:Lanimebestapp/com/models/Comment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/comments/a$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class animebestapp.com.ui.comments.a.d (animebestapp.com.ui.comments.a$d)
.class public final Lanimebestapp/com/ui/comments/a$d;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/comments/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.a.e (animebestapp.com.ui.comments.a$e)
.class public final enum Lanimebestapp/com/ui/comments/a$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/comments/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanimebestapp/com/ui/comments/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lanimebestapp/com/ui/comments/a$e;

.field public static final enum c:Lanimebestapp/com/ui/comments/a$e;

.field private static final synthetic d:[Lanimebestapp/com/ui/comments/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Lanimebestapp/com/ui/comments/a$e;

    new-instance v1, Lanimebestapp/com/ui/comments/a$e;

    const/4 v2, 0x0

    const-string v3, "LOADING"

    invoke-direct {v1, v3, v2}, Lanimebestapp/com/ui/comments/a$e;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/ui/comments/a$e;

    const/4 v2, 0x1

    const-string v3, "FINISH"

    invoke-direct {v1, v3, v2}, Lanimebestapp/com/ui/comments/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lanimebestapp/com/ui/comments/a$e;->b:Lanimebestapp/com/ui/comments/a$e;

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/ui/comments/a$e;

    const/4 v2, 0x2

    const-string v3, "PROGRESS"

    invoke-direct {v1, v3, v2}, Lanimebestapp/com/ui/comments/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lanimebestapp/com/ui/comments/a$e;->c:Lanimebestapp/com/ui/comments/a$e;

    aput-object v1, v0, v2

    sput-object v0, Lanimebestapp/com/ui/comments/a$e;->d:[Lanimebestapp/com/ui/comments/a$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanimebestapp/com/ui/comments/a$e;
    .registers 2

    const-class v0, Lanimebestapp/com/ui/comments/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanimebestapp/com/ui/comments/a$e;

    return-object p0
.end method

.method public static values()[Lanimebestapp/com/ui/comments/a$e;
    .registers 1

    sget-object v0, Lanimebestapp/com/ui/comments/a$e;->d:[Lanimebestapp/com/ui/comments/a$e;

    invoke-virtual {v0}, [Lanimebestapp/com/ui/comments/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanimebestapp/com/ui/comments/a$e;

    return-object v0
.end method
