###### Class b.h.o.n (b.h.o.n)
.class public Lb/h/o/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lb/h/o/n;->a:I

    return v0
.end method

.method public a(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x0

    iput p1, p0, Lb/h/o/n;->a:I

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/h/o/n;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    iput p3, p0, Lb/h/o/n;->a:I

    return-void
.end method
