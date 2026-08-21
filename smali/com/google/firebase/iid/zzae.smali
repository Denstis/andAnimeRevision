###### Class com.google.firebase.iid.zzae (com.google.firebase.iid.zzae)
.class final Lcom/google/firebase/iid/zzae;
.super Lcom/google/firebase/iid/zzah;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/zzah<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzah;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final zza(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ack"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzah;->zza(Ljava/lang/Object;)V

    return-void

    :cond_e
    new-instance p1, Lcom/google/firebase/iid/zzag;

    const/4 v0, 0x4

    const-string v1, "Invalid response to one way request"

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/iid/zzag;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzah;->zza(Lcom/google/firebase/iid/zzag;)V

    return-void
.end method

.method final zza()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
