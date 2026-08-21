###### Class com.google.android.gms.internal.ads.zzap (com.google.android.gms.internal.ads.zzap)
.class public final Lcom/google/android/gms/internal/ads/zzap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzcf:I

.field private final zzcg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzch:I

.field private final zzci:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzap;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzcf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzap;->zzcg:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzap;->zzch:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzap;->zzci:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzap;->zzci:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentLength()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzap;->zzch:I

    return v0
.end method

.method public final getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzap;->zzcf:I

    return v0
.end method

.method public final zzo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzap;->zzcg:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
