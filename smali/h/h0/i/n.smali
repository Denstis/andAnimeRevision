###### Class h.h0.i.n (h.h0.i.n)
.class public final Lh/h0/i/n;
.super Ljava/io/IOException;
.source ""


# instance fields
.field public final b:Lh/h0/i/b;


# direct methods
.method public constructor <init>(Lh/h0/i/b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lh/h0/i/n;->b:Lh/h0/i/b;

    return-void
.end method
