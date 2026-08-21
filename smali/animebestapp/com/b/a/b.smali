###### Class animebestapp.com.b.a.b (animebestapp.com.b.a.b)
.class public final Lanimebestapp/com/b/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Lanimebestapp/com/b/a/a;

.field private c:Z

.field private d:Z

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/b/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/b/a/b$a;-><init>(Lg/p/b/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lanimebestapp/com/b/a/b;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lanimebestapp/com/b/a/b;->f:I

    const-string v0, "storage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lanimebestapp/com/b/a/b;->j()V

    return-void
.end method

.method private final j()V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "001"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lanimebestapp/com/b/a/b;->g:I

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "003"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lanimebestapp/com/b/a/b;->c:Z

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "004"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lanimebestapp/com/b/a/b;->d:Z

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "005"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lanimebestapp/com/b/a/b;->f:I

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "007"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lanimebestapp/com/b/a/b;->e:J

    :try_start_38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v2, "002"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lanimebestapp/com/b/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(sp.getSt\u2026 \"{}\"), Cash::class.java)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lanimebestapp/com/b/a/a;
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_55

    goto :goto_5a

    :catchall_55
    new-instance v0, Lanimebestapp/com/b/a/a;

    invoke-direct {v0}, Lanimebestapp/com/b/a/a;-><init>()V

    :goto_5a
    iput-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    return-void
.end method


# virtual methods
.method public final a(JI)J
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Lanimebestapp/com/b/a/a;->a(JI)J

    move-result-wide p1

    return-wide p1

    :cond_9
    const-string p1, "cash"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(J)Ljava/lang/Integer;
    .registers 8

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    const-string v1, "cash"

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lanimebestapp/com/b/a/a;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lanimebestapp/com/b/a/a;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Lg/p/b/f;->a(II)I

    move-result v0

    if-ltz v0, :cond_53

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lanimebestapp/com/b/a/a;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_57

    :cond_47
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_4b
    invoke-static {}, Lg/p/b/f;->a()V

    throw v2

    :cond_4f
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_57
    return-object p1

    :cond_58
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final a()V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    const-string v1, "cash"

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    invoke-virtual {v0, v2}, Lanimebestapp/com/b/a/a;->a(Lanimebestapp/com/models/g;)V

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_3a

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v3}, Lanimebestapp/com/b/a/a;->a(Ljava/util/LinkedHashMap;)V

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_36

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v3}, Lanimebestapp/com/b/a/a;->b(Ljava/util/LinkedHashMap;)V

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_32

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v1}, Lanimebestapp/com/b/a/a;->c(Ljava/util/LinkedHashMap;)V

    invoke-virtual {p0}, Lanimebestapp/com/b/a/b;->i()V

    return-void

    :cond_32
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_36
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_3a
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_3e
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/b/a/b;->g:I

    return-void
.end method

.method public final a(JIJ)V
    .registers 12

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_e

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lanimebestapp/com/b/a/a;->a(JIJ)V

    invoke-virtual {p0}, Lanimebestapp/com/b/a/b;->i()V

    return-void

    :cond_e
    const-string p1, "cash"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lanimebestapp/com/models/g;)V
    .registers 3

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/a/a;->a(Lanimebestapp/com/models/g;)V

    invoke-virtual {p0}, Lanimebestapp/com/b/a/b;->i()V

    return-void

    :cond_10
    const-string p1, "cash"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/b/a/b;->c:Z

    return-void
.end method

.method public final a(Lanimebestapp/com/models/Anime;)Z
    .registers 5

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lanimebestapp/com/b/a/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1

    :cond_1f
    const-string p1, "cash"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/b/a/b;->f:I

    invoke-virtual {p0}, Lanimebestapp/com/b/a/b;->i()V

    return-void
.end method

.method public final b(J)V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "008"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(JI)V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lanimebestapp/com/b/a/a;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lanimebestapp/com/b/a/b;->i()V

    return-void

    :cond_17
    const-string p1, "cash"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/b/a/b;->d:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/b/a/b;->c:Z

    return v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/b/a/b;->e:J

    return-wide v0
.end method

.method public final c(J)V
    .registers 3

    iput-wide p1, p0, Lanimebestapp/com/b/a/b;->e:J

    invoke-virtual {p0}, Lanimebestapp/com/b/a/b;->i()V

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/b/a/b;->g:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/b/a/b;->f:I

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/b/a/b;->d:Z

    return v0
.end method

.method public final g()J
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "008"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Lanimebestapp/com/models/g;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lanimebestapp/com/b/a/a;->c()Lanimebestapp/com/models/g;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "cash"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lanimebestapp/com/b/a/b;->g:I

    const-string v2, "001"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lanimebestapp/com/b/a/b;->c:Z

    const-string v2, "003"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lanimebestapp/com/b/a/b;->d:Z

    const-string v2, "004"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lanimebestapp/com/b/a/b;->f:I

    const-string v2, "005"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-wide v1, p0, Lanimebestapp/com/b/a/b;->e:J

    const-string v3, "007"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lanimebestapp/com/b/a/b;->b:Lanimebestapp/com/b/a/a;

    if-eqz v2, :cond_3f

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "002"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_3f
    const-string v0, "cash"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.b.a.b.a (animebestapp.com.b.a.b$a)
.class public final Lanimebestapp/com/b/a/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/b/a/b$a;-><init>()V

    return-void
.end method
