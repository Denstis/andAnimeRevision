###### Class com.google.android.gms.internal.ads.zzcgf (com.google.android.gms.internal.ads.zzcgf)
.class public final Lcom/google/android/gms/internal/ads/zzcgf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzbnz;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zzddv:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdapterT;"
        }
    .end annotation
.end field

.field public final zzffi:Ljava/lang/String;

.field public final zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbnz;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdapterT;T",
            "ListenerT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzffi:Ljava/lang/String;

    return-void
.end method
