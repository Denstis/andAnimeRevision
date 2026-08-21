###### Class androidx.appcompat.widget.j (androidx.appcompat.widget.j)
.class public final Landroidx/appcompat/widget/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/j$a;,
        Landroidx/appcompat/widget/j$b;,
        Landroidx/appcompat/widget/j$e;,
        Landroidx/appcompat/widget/j$c;,
        Landroidx/appcompat/widget/j$d;
    }
.end annotation


# static fields
.field private static final g:Landroid/graphics/PorterDuff$Mode;

.field private static h:Landroidx/appcompat/widget/j;

.field private static final i:Landroidx/appcompat/widget/j$c;

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lb/e/h<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/j$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lb/e/d<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Landroid/util/TypedValue;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroidx/appcompat/widget/j$c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/j$c;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/j;->i:Landroidx/appcompat/widget/j$c;

    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Lb/a/e;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lb/a/e;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lb/a/e;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Landroidx/appcompat/widget/j;->j:[I

    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Lb/a/e;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lb/a/e;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Lb/a/e;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lb/a/e;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Lb/a/e;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Lb/a/e;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Lb/a/e;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Landroidx/appcompat/widget/j;->k:[I

    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Lb/a/e;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lb/a/e;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Lb/a/e;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lb/a/e;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Lb/a/e;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Lb/a/e;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Lb/a/e;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Lb/a/e;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Lb/a/e;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Lb/a/e;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Landroidx/appcompat/widget/j;->l:[I

    new-array v0, v0, [I

    sget v1, Lb/a/e;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Lb/a/e;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Lb/a/e;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Landroidx/appcompat/widget/j;->m:[I

    new-array v0, v6, [I

    sget v1, Lb/a/e;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Lb/a/e;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Landroidx/appcompat/widget/j;->n:[I

    new-array v0, v6, [I

    sget v1, Lb/a/e;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Lb/a/e;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Landroidx/appcompat/widget/j;->o:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .registers 5

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static a(I)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    sget v0, Lb/a/e;->abc_switch_thumb_material:I

    if-ne p0, v0, :cond_7

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    const-class v0, Landroidx/appcompat/widget/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/j;->i:Landroidx/appcompat/widget/j$c;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/j$c;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v2, Landroidx/appcompat/widget/j;->i:Landroidx/appcompat/widget/j$c;

    invoke-virtual {v2, p0, p1, v1}, Landroidx/appcompat/widget/j$c;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    if-eqz p0, :cond_f

    if-nez p1, :cond_5

    goto :goto_f

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 9

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {p4}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_10
    invoke-static {p4}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-static {p2}, Landroidx/appcompat/widget/j;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_8e

    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_8e

    :cond_21
    sget v0, Lb/a/e;->abc_seekbar_track_material:I

    const v1, 0x102000d

    const v2, 0x102000f

    const/high16 v3, 0x1020000

    if-ne p2, v0, :cond_5e

    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v3}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/a/a;->colorControlNormal:I

    :goto_45
    invoke-static {p1, v0}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v2, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v2}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lb/a/a;->colorControlActivated:I

    invoke-static {p1, p3}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_8e

    :cond_5e
    sget v0, Lb/a/e;->abc_ratingbar_material:I

    if-eq p2, v0, :cond_75

    sget v0, Lb/a/e;->abc_ratingbar_indicator_material:I

    if-eq p2, v0, :cond_75

    sget v0, Lb/a/e;->abc_ratingbar_small_material:I

    if-ne p2, v0, :cond_6b

    goto :goto_75

    :cond_6b
    invoke-static {p1, p2, p4}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_8e

    if-eqz p3, :cond_8e

    const/4 p4, 0x0

    goto :goto_8e

    :cond_75
    :goto_75
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/l0;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v3}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/a/a;->colorControlActivated:I

    goto :goto_45

    :cond_8e
    :goto_8e
    return-object p4
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3}, Lb/e/d;->b(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object p1

    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Lb/e/d;->a(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit p0

    return-object v1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized a()Landroidx/appcompat/widget/j;
    .registers 2

    const-class v0, Landroidx/appcompat/widget/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/j;->h:Landroidx/appcompat/widget/j;

    if-nez v1, :cond_13

    new-instance v1, Landroidx/appcompat/widget/j;

    invoke-direct {v1}, Landroidx/appcompat/widget/j;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/j;->h:Landroidx/appcompat/widget/j;

    sget-object v1, Landroidx/appcompat/widget/j;->h:Landroidx/appcompat/widget/j;

    invoke-static {v1}, Landroidx/appcompat/widget/j;->a(Landroidx/appcompat/widget/j;)V

    :cond_13
    sget-object v1, Landroidx/appcompat/widget/j;->h:Landroidx/appcompat/widget/j;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->a:Ljava/util/WeakHashMap;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e/h;

    if-nez v0, :cond_1f

    new-instance v0, Lb/e/h;

    invoke-direct {v0}, Lb/e/h;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-virtual {v0, p2, p3}, Lb/e/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    invoke-static {p0}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_a
    if-nez p2, :cond_e

    sget-object p2, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    :cond_e
    invoke-static {p1, p2}, Landroidx/appcompat/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;[I)V
    .registers 5

    invoke-static {p0}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_14

    const-string p0, "AppCompatDrawableManag"

    const-string p1, "Mutated drawable is not the same instance as the input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-boolean v0, p1, Landroidx/appcompat/widget/o0;->d:Z

    if-nez v0, :cond_21

    iget-boolean v0, p1, Landroidx/appcompat/widget/o0;->c:Z

    if-eqz v0, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_39

    :cond_21
    :goto_21
    iget-boolean v0, p1, Landroidx/appcompat/widget/o0;->d:Z

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroidx/appcompat/widget/o0;->a:Landroid/content/res/ColorStateList;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-boolean v1, p1, Landroidx/appcompat/widget/o0;->c:Z

    if-eqz v1, :cond_30

    iget-object p1, p1, Landroidx/appcompat/widget/o0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_32

    :cond_30
    sget-object p1, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    :goto_32
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_42

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_42
    return-void
.end method

.method private static a(Landroidx/appcompat/widget/j;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_24

    new-instance v0, Landroidx/appcompat/widget/j$e;

    invoke-direct {v0}, Landroidx/appcompat/widget/j$e;-><init>()V

    const-string v1, "vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/j;->a(Ljava/lang/String;Landroidx/appcompat/widget/j$d;)V

    new-instance v0, Landroidx/appcompat/widget/j$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/j$b;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/j;->a(Ljava/lang/String;Landroidx/appcompat/widget/j$d;)V

    new-instance v0, Landroidx/appcompat/widget/j$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/j$a;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/j;->a(Ljava/lang/String;Landroidx/appcompat/widget/j$d;)V

    :cond_24
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/j$d;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lb/e/a;

    if-nez v0, :cond_b

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->b:Lb/e/a;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 9

    sget-object v0, Landroidx/appcompat/widget/j;->g:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroidx/appcompat/widget/j;->j:[I

    invoke-static {v1, p1}, Landroidx/appcompat/widget/j;->a([II)Z

    move-result v1

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_15

    sget v2, Lb/a/a;->colorControlNormal:I

    :goto_12
    const/4 p1, 0x1

    const/4 v1, -0x1

    goto :goto_44

    :cond_15
    sget-object v1, Landroidx/appcompat/widget/j;->l:[I

    invoke-static {v1, p1}, Landroidx/appcompat/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_20

    sget v2, Lb/a/a;->colorControlActivated:I

    goto :goto_12

    :cond_20
    sget-object v1, Landroidx/appcompat/widget/j;->m:[I

    invoke-static {v1, p1}, Landroidx/appcompat/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_12

    :cond_2b
    sget v1, Lb/a/e;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v1, :cond_3c

    const v2, 0x1010030

    const p1, 0x42233333    # 40.8f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v1, p1

    const/4 p1, 0x1

    goto :goto_44

    :cond_3c
    sget v1, Lb/a/e;->abc_dialog_material_background:I

    if-ne p1, v1, :cond_41

    goto :goto_12

    :cond_41
    const/4 p1, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_44
    if-eqz p1, :cond_61

    invoke-static {p2}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_50
    invoke-static {p0, v2}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v1, v3, :cond_60

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_60
    return v5

    :cond_61
    return v4
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_26

    iget-object v0, p0, Landroidx/appcompat/widget/j;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e/d;

    if-nez v0, :cond_1b

    new-instance v0, Lb/e/d;

    invoke-direct {v0}, Lb/e/d;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/j;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lb/e/d;->c(JLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_28

    const/4 p1, 0x1

    :goto_24
    monitor-exit p0

    return p1

    :cond_26
    const/4 p1, 0x0

    goto :goto_24

    :catchall_28
    move-exception p1

    monitor-exit p0

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    instance-of v0, p0, Lb/r/a/a/i;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private static a([II)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/j;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->f:Z

    sget v0, Lb/a/e;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    :cond_17
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/j;->f:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lb/a/a;->colorControlHighlight:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lb/a/a;->colorButtonNormal:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/l0;->a(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Landroidx/appcompat/widget/l0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, Landroidx/appcompat/widget/l0;->d:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Lb/h/h/a;->b(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroidx/appcompat/widget/l0;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Lb/h/h/a;->b(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroidx/appcompat/widget/l0;->f:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private d(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    sget v0, Lb/a/a;->colorAccent:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/util/TypedValue;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Landroidx/appcompat/widget/j;->a(Landroid/util/TypedValue;)J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_20

    return-object v1

    :cond_20
    sget v5, Lb/a/e;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_3d

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    sget v6, Lb/a/e;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v6}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, p2, v5

    sget v5, Lb/a/e;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, p2, v2

    invoke-direct {v1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    if-eqz v1, :cond_47

    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v3, v4, v1}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_47
    return-object v1
.end method

.method private e(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    sget v0, Lb/a/a;->colorButtonNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/e/h;

    if-eqz p1, :cond_14

    invoke-virtual {p1, p2}, Lb/e/h;->b(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_14
    return-object v1
.end method

.method private f(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 9

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lb/a/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/l0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_39

    sget-object v6, Landroidx/appcompat/widget/l0;->b:[I

    aput-object v6, v1, v5

    aget-object v6, v1, v5

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    aput v6, v0, v5

    sget-object v5, Landroidx/appcompat/widget/l0;->e:[I

    aput-object v5, v1, v4

    sget v5, Lb/a/a;->colorControlActivated:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    sget-object p1, Landroidx/appcompat/widget/l0;->f:[I

    aput-object p1, v1, v3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v3

    goto :goto_5d

    :cond_39
    sget-object v2, Landroidx/appcompat/widget/l0;->b:[I

    aput-object v2, v1, v5

    sget v2, Lb/a/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/l0;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v5

    sget-object v2, Landroidx/appcompat/widget/l0;->e:[I

    aput-object v2, v1, v4

    sget v2, Lb/a/a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v4

    sget-object v2, Landroidx/appcompat/widget/l0;->f:[I

    aput-object v2, v1, v3

    sget v2, Lb/a/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/l0;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v3

    :goto_5d
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lb/e/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Lb/e/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Lb/e/h;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Lb/e/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroidx/appcompat/widget/j;->b:Lb/e/a;

    invoke-virtual {v3, v0}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    :cond_27
    return-object v1

    :cond_28
    new-instance v0, Lb/e/h;

    invoke-direct {v0}, Lb/e/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->c:Lb/e/h;

    :cond_2f
    iget-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_3a

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/util/TypedValue;

    :cond_3a
    iget-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Landroidx/appcompat/widget/j;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4f

    return-object v6

    :cond_4f
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_aa

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    :try_start_5f
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_67
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_71

    if-eq v8, v3, :cond_71

    goto :goto_67

    :cond_71
    if-ne v8, v9, :cond_9a

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Landroidx/appcompat/widget/j;->c:Lb/e/h;

    invoke-virtual {v8, p2, v3}, Lb/e/h;->a(ILjava/lang/Object;)V

    iget-object v8, p0, Landroidx/appcompat/widget/j;->b:Lb/e/a;

    invoke-virtual {v8, v3}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/j$d;

    if-eqz v3, :cond_8f

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/j$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_8f
    if-eqz v6, :cond_aa

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_aa

    :cond_9a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_a2} :catch_a2

    :catch_a2
    move-exception p1

    const-string v0, "AppCompatDrawableManag"

    const-string v1, "Exception while inflating drawable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_aa
    :goto_aa
    if-nez v6, :cond_b1

    iget-object p1, p0, Landroidx/appcompat/widget/j;->c:Lb/e/h;

    invoke-virtual {p1, p2, v2}, Lb/e/h;->a(ILjava/lang/Object;)V

    :cond_b1
    return-object v6

    :cond_b2
    return-object v1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/j;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/j;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_14

    invoke-static {p1, p2}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_1a

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1a
    if-eqz v0, :cond_1f

    invoke-static {v0}, Landroidx/appcompat/widget/a0;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;Landroidx/appcompat/widget/v0;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_b
    if-eqz v0, :cond_14

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    monitor-exit p0

    return-object p1

    :cond_14
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/e/d;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lb/e/d;->a()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/j;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_7b

    sget v1, Lb/a/e;->abc_edit_text_material:I

    if-ne p2, v1, :cond_13

    sget v0, Lb/a/c;->abc_tint_edittext:I

    :goto_d
    invoke-static {p1, v0}, Lb/a/k/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_76

    :cond_13
    sget v1, Lb/a/e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_1a

    sget v0, Lb/a/c;->abc_tint_switch_track:I

    goto :goto_d

    :cond_1a
    sget v1, Lb/a/e;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_23

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_76

    :cond_23
    sget v1, Lb/a/e;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_2c

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/j;->e(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_76

    :cond_2c
    sget v1, Lb/a/e;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_35

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_76

    :cond_35
    sget v1, Lb/a/e;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_3e

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/j;->d(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_76

    :cond_3e
    sget v1, Lb/a/e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_73

    sget v1, Lb/a/e;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_47

    goto :goto_73

    :cond_47
    sget-object v1, Landroidx/appcompat/widget/j;->k:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_56

    sget v0, Lb/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/l0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_76

    :cond_56
    sget-object v1, Landroidx/appcompat/widget/j;->n:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_61

    sget v0, Lb/a/c;->abc_tint_default:I

    goto :goto_d

    :cond_61
    sget-object v1, Landroidx/appcompat/widget/j;->o:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget v0, Lb/a/c;->abc_tint_btn_checkable:I

    goto :goto_d

    :cond_6c
    sget v1, Lb/a/e;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_76

    sget v0, Lb/a/c;->abc_tint_seek_thumb:I

    goto :goto_d

    :cond_73
    :goto_73
    sget v0, Lb/a/c;->abc_tint_spinner:I

    goto :goto_d

    :cond_76
    :goto_76
    if-eqz v0, :cond_7b

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_7b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_7d

    :cond_7b
    monitor-exit p0

    return-object v0

    :catchall_7d
    move-exception p1

    monitor-exit p0

    goto :goto_81

    :goto_80
    throw p1

    :goto_81
    goto :goto_80
.end method

###### Class androidx.appcompat.widget.j.a (androidx.appcompat.widget.j$a)
.class Landroidx/appcompat/widget/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Lb/a/l/a/a;->b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/a/l/a/a;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    const-string p2, "AsldcInflateDelegate"

    const-string p3, "Exception while inflating <animated-selector>"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

###### Class androidx.appcompat.widget.j.b (androidx.appcompat.widget.j$b)
.class Landroidx/appcompat/widget/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Lb/r/a/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/r/a/a/c;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    const-string p2, "AvdcInflateDelegate"

    const-string p3, "Exception while inflating <animated-vector>"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

###### Class androidx.appcompat.widget.j.c (androidx.appcompat.widget.j$c)
.class Landroidx/appcompat/widget/j$c;
.super Lb/e/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/e/e<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PorterDuffColorFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/e/e;-><init>(I)V

    return-void
.end method

.method private static b(ILandroid/graphics/PorterDuff$Mode;)I
    .registers 3

    const/16 v0, 0x1f

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 3

    invoke-static {p1, p2}, Landroidx/appcompat/widget/j$c;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/e/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    return-object p1
.end method

.method a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    invoke-static {p1, p2}, Landroidx/appcompat/widget/j$c;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lb/e/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    return-object p1
.end method

###### Class androidx.appcompat.widget.j.d (androidx.appcompat.widget.j$d)
.class interface abstract Landroidx/appcompat/widget/j$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
.end method

###### Class androidx.appcompat.widget.j.e (androidx.appcompat.widget.j$e)
.class Landroidx/appcompat/widget/j$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lb/r/a/a/i;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/r/a/a/i;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    const-string p2, "VdcInflateDelegate"

    const-string p3, "Exception while inflating <vector>"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
