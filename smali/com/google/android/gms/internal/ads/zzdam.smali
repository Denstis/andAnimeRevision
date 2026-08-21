###### Class com.google.android.gms.internal.ads.zzdam (com.google.android.gms.internal.ads.zzdam)
.class public final Lcom/google/android/gms/internal/ads/zzdam;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final className:Ljava/lang/String;

.field private final zzgor:Lcom/google/android/gms/internal/ads/zzdap;

.field private zzgos:Lcom/google/android/gms/internal/ads/zzdap;

.field private zzgot:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdap;-><init>(Lcom/google/android/gms/internal/ads/zzdan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgor:Lcom/google/android/gms/internal/ads/zzdap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgor:Lcom/google/android/gms/internal/ads/zzdap;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgos:Lcom/google/android/gms/internal/ads/zzdap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgot:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdam;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdan;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdam;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdam;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgor:Lcom/google/android/gms/internal/ads/zzdap;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdap;->zzgou:Lcom/google/android/gms/internal/ads/zzdap;

    const-string v2, ""

    :goto_17
    if-eqz v1, :cond_45

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdap;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_40
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdap;->zzgou:Lcom/google/android/gms/internal/ads/zzdap;

    const-string v2, ", "

    goto :goto_17

    :cond_45
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdam;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdap;-><init>(Lcom/google/android/gms/internal/ads/zzdan;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgos:Lcom/google/android/gms/internal/ads/zzdap;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzdap;->zzgou:Lcom/google/android/gms/internal/ads/zzdap;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgos:Lcom/google/android/gms/internal/ads/zzdap;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdap;->value:Ljava/lang/Object;

    return-object p0
.end method
