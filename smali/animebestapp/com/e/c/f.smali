###### Class animebestapp.com.e.c.f (animebestapp.com.e.c.f)
.class public final Lanimebestapp/com/e/c/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEVICE_IDS:[Ljava/lang/String;

.field public static final INSTANCE:Lanimebestapp/com/e/c/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lanimebestapp/com/e/c/f;

    invoke-direct {v0}, Lanimebestapp/com/e/c/f;-><init>()V

    sput-object v0, Lanimebestapp/com/e/c/f;->INSTANCE:Lanimebestapp/com/e/c/f;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "e21833235b6eef10"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "012345678912345"

    aput-object v2, v0, v1

    sput-object v0, Lanimebestapp/com/e/c/f;->DEVICE_IDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkSignature(Landroid/content/Context;)Z
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lg/g;->b:Lg/g$a;

    new-instance v1, Lanimebestapp/com/e/c/h;

    invoke-direct {v1}, Lanimebestapp/com/e/c/h;-><init>()V

    invoke-virtual {v1}, Lanimebestapp/com/e/c/h;->getOriginalSignature()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lanimebestapp/com/e/c/h;

    invoke-direct {v2}, Lanimebestapp/com/e/c/h;-><init>()V

    invoke-virtual {v2}, Lanimebestapp/com/e/c/h;->getSha()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_c7

    const/16 v4, 0x1c

    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    const-string v6, "Base64.encodeToString(md.digest(), Base64.DEFAULT)"

    const/4 v7, 0x1

    if-lt v3, v4, :cond_75

    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v4, 0x8000000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    const-string v3, "packageInfo.signingInfo"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    const-string v3, "packageInfo.signingInfo.apkContentsSigners"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_c1

    aget-object v8, p1, v4

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_6f

    invoke-static {v8}, Lg/s/e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_6c

    return v7

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_6f
    new-instance p1, Lg/j;

    invoke-direct {p1, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "packageInfo.signatures"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_8c
    if-ge v4, v3, :cond_c1

    aget-object v8, p1, v4

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_bb

    invoke-static {v8}, Lg/s/e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_b8

    return v7

    :cond_b8
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    :cond_bb
    new-instance p1, Lg/j;

    invoke-direct {p1, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c1
    sget-object p1, Lg/l;->a:Lg/l;

    invoke-static {p1}, Lg/g;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catchall {:try_start_20 .. :try_end_c6} :catchall_c7

    goto :goto_d1

    :catchall_c7
    move-exception p1

    sget-object v1, Lg/g;->b:Lg/g$a;

    invoke-static {p1}, Lg/h;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d1
    return v0
.end method


# virtual methods
.method public final check()Z
    .registers 3

    const-string v0, "CheckSignature"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lanimebestapp/com/App;->Companion:Lanimebestapp/com/App$a;

    invoke-virtual {v0}, Lanimebestapp/com/App$a;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v0}, Lanimebestapp/com/e/c/f;->checkSignature(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_14
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method
