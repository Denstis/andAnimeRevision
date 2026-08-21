###### Class animebestapp.com.menu.c (animebestapp.com.menu.c)
.class public final Lanimebestapp/com/menu/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/menu/d/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lanimebestapp/com/menu/c;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lanimebestapp/com/menu/c;

    invoke-direct {v0}, Lanimebestapp/com/menu/c;-><init>()V

    sput-object v0, Lanimebestapp/com/menu/c;->b:Lanimebestapp/com/menu/c;

    const/16 v0, 0x10

    new-array v0, v0, [Lanimebestapp/com/menu/d/d;

    new-instance v1, Lanimebestapp/com/menu/d/b;

    const-string v2, "\u0411\u0438\u0431\u043b\u0438\u043e\u0442\u0435\u043a\u0430"

    invoke-direct {v1, v2}, Lanimebestapp/com/menu/d/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/a;

    const/16 v3, 0xb

    new-array v4, v3, [Lanimebestapp/com/menu/d/c;

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v6, "\u0412\u043e\u0437\u0440\u0430\u0441\u0442"

    const-string v7, "age"

    invoke-direct {v5, v6, v7}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v6, "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u044b"

    const-string v7, "Characters"

    invoke-direct {v5, v6, v7}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v7, "\u0421\u043f\u043e\u0440\u0442"

    const-string v8, "sport"

    invoke-direct {v5, v7, v8}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v8, "\u041f\u043e\u0434\u0436\u0430\u043d\u0440"

    const-string v9, "Subgenre"

    invoke-direct {v5, v8, v9}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v9, "\u041f\u0440\u043e\u0444\u0435\u0441\u0441\u0438\u0438"

    const-string v10, "Professions"

    invoke-direct {v5, v9, v10}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x4

    aput-object v5, v4, v9

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v10, "\u041c\u0438\u0441\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0435 \u0441\u0443\u0449\u043d\u043e\u0441\u0442\u0438"

    const-string v11, "Entities"

    invoke-direct {v5, v10, v11}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x5

    aput-object v5, v4, v10

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v11, "\u0422\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u044b"

    const-string v12, "Elements"

    invoke-direct {v5, v11, v12}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x6

    aput-object v5, v4, v11

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v12, "\u041c\u0435\u0441\u0442\u0430 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u044f"

    const-string v13, "Places"

    invoke-direct {v5, v12, v13}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x7

    aput-object v5, v4, v12

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v13, "\u0422\u0438\u043f\u044b \u043c\u0438\u0440\u043e\u0432"

    const-string v14, "Worlds"

    invoke-direct {v5, v13, v14}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x8

    aput-object v5, v4, v13

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v14, "\u0413\u0435\u043e\u0433\u0440\u0430\u0444\u0438\u044f"

    const-string v15, "Geography"

    invoke-direct {v5, v14, v15}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v5, v4, v14

    new-instance v5, Lanimebestapp/com/menu/d/c;

    const-string v15, "\u042d\u043f\u043e\u0445\u0438"

    const-string v3, "Epochs"

    invoke-direct {v5, v15, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    aput-object v5, v4, v3

    invoke-static {v4}, Lg/m/j;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "subject"

    const-string v15, "\u0422\u0435\u043c\u044b"

    invoke-direct {v1, v15, v5, v4}, Lanimebestapp/com/menu/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v1, v0, v6

    new-instance v1, Lanimebestapp/com/menu/d/a;

    new-array v4, v9, [Lanimebestapp/com/menu/d/c;

    new-instance v15, Lanimebestapp/com/menu/d/c;

    const-string v3, "\u042f\u043f\u043e\u043d\u0441\u043a\u0438\u0435"

    const-string v14, "Japan"

    invoke-direct {v15, v3, v14}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v15, v4, v2

    new-instance v3, Lanimebestapp/com/menu/d/c;

    const-string v14, "\u041a\u0438\u0442\u0430\u0439\u0441\u043a\u0438\u0435"

    const-string v15, "Kitai"

    invoke-direct {v3, v14, v15}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v6

    new-instance v3, Lanimebestapp/com/menu/d/c;

    const-string v14, "\u043a\u043b\u0430\u0441\u0441\u0438\u0447\u0435\u0441\u043a\u0438\u0435"

    const-string v15, "genres"

    invoke-direct {v3, v14, v15}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v7

    new-instance v3, Lanimebestapp/com/menu/d/c;

    const-string v14, "\u0434\u0440\u0443\u0433\u0438\u0435"

    const-string v15, "drugie"

    invoke-direct {v3, v14, v15}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v8

    invoke-static {v4}, Lg/m/j;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "\u0416\u0430\u043d\u0440\u044b"

    invoke-direct {v1, v4, v5, v3}, Lanimebestapp/com/menu/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v1, v0, v7

    new-instance v1, Lanimebestapp/com/menu/d/a;

    new-array v3, v9, [Lanimebestapp/com/menu/d/c;

    new-instance v4, Lanimebestapp/com/menu/d/c;

    const-string v14, "2020-\u0435 \u0433\u043e\u0434\u0430"

    const-string v15, "dvadsat"

    invoke-direct {v4, v14, v15}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v4, Lanimebestapp/com/menu/d/c;

    const-string v14, "2010-\u0435 \u0433\u043e\u0434\u0430"

    const-string v15, "desat"

    invoke-direct {v4, v14, v15}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v6

    new-instance v4, Lanimebestapp/com/menu/d/c;

    const-string v6, "2000-\u0435 \u0433\u043e\u0434\u0430"

    const-string v14, "dva"

    invoke-direct {v4, v6, v14}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v7

    new-instance v4, Lanimebestapp/com/menu/d/c;

    const-string v6, "70-\u0435,80-\u0435,90-\u0435 \u0433\u043e\u0434\u0430"

    const-string v7, "Semdus"

    invoke-direct {v4, v6, v7}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-static {v3}, Lg/m/j;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "\u0413\u043e\u0434\u0430"

    invoke-direct {v1, v4, v5, v3}, Lanimebestapp/com/menu/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v1, v0, v8

    new-instance v1, Lanimebestapp/com/menu/d/b;

    const-string v3, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044f\u043c"

    invoke-direct {v1, v3}, Lanimebestapp/com/menu/d/b;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v3, "\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0412\u0438\u043f"

    const-string v4, "Vips"

    invoke-direct {v1, v3, v4}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Lanimebestapp/com/menu/d/e;

    const-string v3, "\u041d\u043e\u0447\u043d\u043e\u0439 \u0440\u0435\u0436\u0438\u043c"

    const-string v4, "night_mode"

    invoke-direct {v1, v3, v4, v2}, Lanimebestapp/com/menu/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v0, v11

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u0422\u043e\u043f 100 \u0430\u043d\u0438\u043c\u0435"

    const-string v3, "top"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v12

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    const-string v3, "check_update"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v13

    new-instance v1, Lanimebestapp/com/menu/d/b;

    const-string v2, "\u0421\u0432\u044f\u0437\u044c \u0441 \u043f\u0440\u043e\u0435\u043a\u0442\u043e\u043c"

    invoke-direct {v1, v2}, Lanimebestapp/com/menu/d/b;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u0413\u0440\u0443\u043f\u043f\u0430 \u0412\u041a"

    const-string v3, "vk"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u0422\u0435\u043b\u0435\u0433\u0440\u0430\u043c\u043c"

    const-string v3, "telegram"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u041d\u0430\u043f\u0438\u0441\u0430\u0442\u044c \u0430\u0434\u043c\u0438\u043d\u0443"

    const-string v3, "support"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/b;

    const-string v2, "\u041f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0430 \u043f\u0440\u043e\u0435\u043a\u0442\u0430 | \u0414\u043e\u043d\u0430\u0442\u044b"

    invoke-direct {v1, v2}, Lanimebestapp/com/menu/d/b;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u0427\u0435\u0440\u0435\u0437 \u0412\u041a"

    const-string v3, "vkdos"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/menu/d/c;

    const-string v2, "\u0414\u0440\u0443\u0433\u0438\u0435 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u044b"

    const-string v3, "ukraine"

    invoke-direct {v1, v2, v3}, Lanimebestapp/com/menu/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static {v0}, Lg/m/j;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lanimebestapp/com/menu/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/menu/d/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lanimebestapp/com/menu/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method
