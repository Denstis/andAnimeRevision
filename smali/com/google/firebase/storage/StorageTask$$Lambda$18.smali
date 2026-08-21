###### Class com.google.firebase.storage.StorageTask$$Lambda$18 (com.google.firebase.storage.StorageTask$$Lambda$18)
.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$18;->arg$1:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCanceledListener;
    .registers 2

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$18;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$18;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    return-object v0
.end method


# virtual methods
.method public onCanceled()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$18;->arg$1:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    return-void
.end method
