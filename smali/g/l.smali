###### Class g.l (g.l)
.class public final Lg/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lg/l;

    invoke-direct {v0}, Lg/l;-><init>()V

    sput-object v0, Lg/l;->a:Lg/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
