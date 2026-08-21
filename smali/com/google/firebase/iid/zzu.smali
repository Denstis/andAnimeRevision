###### Class com.google.firebase.iid.zzu (com.google.firebase.iid.zzu)
.class final Lcom/google/firebase/iid/zzu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/iid/InstanceIdResult;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzu;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/iid/zzu;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zzb:Ljava/lang/String;

    return-object v0
.end method
