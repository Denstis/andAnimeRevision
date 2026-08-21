###### Class c.a.a.l (c.a.a.l)
.class public abstract Lc/a/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lc/a/a/l<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private b:Lc/a/a/r/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/k/c<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc/a/a/r/k/a;->a()Lc/a/a/r/k/c;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/l;->b:Lc/a/a/r/k/c;

    return-void
.end method


# virtual methods
.method final a()Lc/a/a/r/k/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/r/k/c<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/l;->b:Lc/a/a/r/k/c;

    return-object v0
.end method

.method public final clone()Lc/a/a/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/l;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/l;->clone()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method
