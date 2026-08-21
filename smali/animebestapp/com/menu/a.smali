###### Class animebestapp.com.menu.a (animebestapp.com.menu.a)
.class public final Lanimebestapp/com/menu/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanimebestapp/com/ui/nav/h/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lanimebestapp/com/menu/a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lanimebestapp/com/menu/a;

    invoke-direct {v0}, Lanimebestapp/com/menu/a;-><init>()V

    sput-object v0, Lanimebestapp/com/menu/a;->b:Lanimebestapp/com/menu/a;

    const/16 v0, 0x17

    new-array v0, v0, [Lg/f;

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->a()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "age"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->u()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "sport"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->f()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "dvadsat"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->c()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "desat"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->e()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "dva"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->t()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Semdus"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->j()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "genres"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->v()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Subgenre"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->d()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "drugie"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->s()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Professions"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->h()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Entities"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->g()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Elements"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->r()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Places"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->w()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Worlds"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->k()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Geography"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->i()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Epochs"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->b()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Characters"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->l()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Japan"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->m()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Kitai"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->n()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Nactor"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->q()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Nprog"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->p()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Njapan"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lg/f;

    sget-object v2, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v2}, Lanimebestapp/com/menu/b;->o()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v2

    const-string v3, "Nanime"

    invoke-direct {v1, v3, v2}, Lg/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    invoke-static {v0}, Lg/m/z;->a([Lg/f;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lanimebestapp/com/menu/a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanimebestapp/com/ui/nav/h/a/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lanimebestapp/com/menu/a;->a:Ljava/util/Map;

    return-object v0
.end method
