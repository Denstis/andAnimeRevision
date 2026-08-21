###### Class com.google.android.gms.internal.ads.zzmp (com.google.android.gms.internal.ads.zzmp)
.class public final Lcom/google/android/gms/internal/ads/zzmp;
.super Lcom/google/android/gms/internal/ads/zzmm;
.source ""


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzbbr:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzmp;-><init>(Lcom/google/android/gms/internal/ads/zzmh;IILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;IILjava/lang/Object;)V
    .registers 5

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p2, p3, p4

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzmm;-><init>(Lcom/google/android/gms/internal/ads/zzmh;[I)V

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbbr:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->data:Ljava/lang/Object;

    return-void
.end method
