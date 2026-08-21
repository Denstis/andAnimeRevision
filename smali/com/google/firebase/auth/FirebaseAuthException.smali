###### Class com.google.firebase.auth.FirebaseAuthException (com.google.firebase.auth.FirebaseAuthException)
.class public Lcom/google/firebase/auth/FirebaseAuthException;
.super Lcom/google/firebase/FirebaseException;
.source ""


# annotations
.annotation build Lcom/google/firebase/annotations/PublicApi;
.end annotation


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuthException;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuthException;->zzc:Ljava/lang/String;

    return-object v0
.end method
