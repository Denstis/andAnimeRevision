###### Class com.google.android.gms.internal.firebase_messaging.zzq (com.google.android.gms.internal.firebase_messaging.zzq)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzq;
.super Lcom/google/android/gms/internal/firebase_messaging/zzp;
.source ""


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_messaging/zzo;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzp;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzq;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-eq p2, p1, :cond_17

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzq;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The suppressed exception cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
