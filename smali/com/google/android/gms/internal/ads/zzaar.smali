###### Class com.google.android.gms.internal.ads.zzaar (com.google.android.gms.internal.ads.zzaar)
.class public final Lcom/google/android/gms/internal/ads/zzaar;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzcvj:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaao;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcvk:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaar;->zzcvj:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaar;->zzcvk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaao;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaar;->zzcvj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
