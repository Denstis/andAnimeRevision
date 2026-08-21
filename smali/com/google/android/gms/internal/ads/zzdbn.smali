###### Class com.google.android.gms.internal.ads.zzdbn (com.google.android.gms.internal.ads.zzdbn)
.class final Lcom/google/android/gms/internal/ads/zzdbn;
.super Lcom/google/android/gms/internal/ads/zzdbd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbd<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient size:I

.field private final transient zzgpq:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbn;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdbn;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpq:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdbn;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzr(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpq:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpq:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbn;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdbn;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method final zzaok()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpq:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzaol()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzaom()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->size:I

    return v0
.end method

.method final zzaoo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
