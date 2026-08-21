###### Class com.google.firebase.iid.zzag (com.google.firebase.iid.zzag)
.class public final Lcom/google/firebase/iid/zzag;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/firebase/iid/zzag;->zza:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/iid/zzag;->zza:I

    return v0
.end method
