###### Class com.google.firebase.storage.StorageTask$$Lambda$16 (com.google.firebase.storage.StorageTask$$Lambda$16)
.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$16;->arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnSuccessListener;
    .registers 2

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$16;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$16;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$16;->arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
