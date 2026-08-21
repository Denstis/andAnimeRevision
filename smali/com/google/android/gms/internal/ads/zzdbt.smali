###### Class com.google.android.gms.internal.ads.zzdbt (com.google.android.gms.internal.ads.zzdbt)
.class final Lcom/google/android/gms/internal/ads/zzdbt;
.super Lcom/google/android/gms/internal/ads/zzdbg;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbg<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zzgpu:Lcom/google/android/gms/internal/ads/zzdbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient mask:I

.field private final transient size:I

.field private final transient zzafv:I

.field private final transient zzgpv:[Ljava/lang/Object;

.field private final transient zzgpw:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdbt;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpu:Lcom/google/android/gms/internal/ads/zzdbt;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpv:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpw:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdbt;->mask:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzafv:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdbt;->size:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpw:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    if-nez v0, :cond_8

    goto :goto_27

    :cond_8
    if-nez p1, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v2

    :goto_14
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdbt;->mask:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1c

    return v1

    :cond_1c
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    :goto_27
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzafv:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbt;->zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpv:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbu<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzaon()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbu;

    return-object v0
.end method

.method final zzaok()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpv:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzaol()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzaom()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->size:I

    return v0
.end method

.method final zzaoo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzaoq()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzaor()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpv:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->size:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    return-object v0
.end method
