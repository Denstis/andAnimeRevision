###### Class com.google.android.gms.internal.ads.zzpk (com.google.android.gms.internal.ads.zzpk)
.class public final Lcom/google/android/gms/internal/ads/zzpk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final timestamp:J

.field public final zzbnp:Z

.field private final zzbnx:Z

.field public final zzbny:Z

.field public final zzbnz:Landroid/graphics/Rect;

.field public final zzboa:Landroid/graphics/Rect;

.field public final zzbob:Landroid/graphics/Rect;

.field public final zzboc:Z

.field public final zzbod:Landroid/graphics/Rect;

.field public final zzboe:Z

.field public final zzbof:Landroid/graphics/Rect;

.field private final zzbog:F

.field public final zzboh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final zzzk:I


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZI",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "FZ",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->timestamp:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbnx:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbny:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzzk:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbnz:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzboa:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbob:Landroid/graphics/Rect;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzboc:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbod:Landroid/graphics/Rect;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzboe:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbof:Landroid/graphics/Rect;

    iput p13, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbog:F

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzboh:Ljava/util/List;

    return-void
.end method
