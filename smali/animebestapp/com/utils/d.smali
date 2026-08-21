###### Class animebestapp.com.utils.d (animebestapp.com.utils.d)
.class public final Lanimebestapp/com/utils/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "LayoutInflater.from(cont\u2026late(layout, this, false)"

    invoke-static {p0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
