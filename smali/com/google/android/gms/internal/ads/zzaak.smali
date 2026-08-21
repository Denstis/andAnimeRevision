###### Class com.google.android.gms.internal.ads.zzaak (com.google.android.gms.internal.ads.zzaak)
.class public Lcom/google/android/gms/internal/ads/zzaak;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzce:Ljava/lang/String;

.field private final zzcfq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcuy:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzce:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzcfq:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzcuy:I

    return-void
.end method
