###### Class com.google.android.gms.internal.ads.zznk (com.google.android.gms.internal.ads.zznk)
.class public Lcom/google/android/gms/internal/ads/zznk;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private final type:I

.field private final zzbew:Lcom/google/android/gms/internal/ads/zznf;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zznk;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zznf;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->type:I

    return-void
.end method
