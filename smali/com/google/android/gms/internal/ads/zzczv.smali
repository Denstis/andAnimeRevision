###### Class com.google.android.gms.internal.ads.zzczv (com.google.android.gms.internal.ads.zzczv)
.class public final Lcom/google/android/gms/internal/ads/zzczv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GassResponseParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzczv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAfmaSignalsAsBytes"
        id = 0x2
        type = "byte[]"
    .end annotation
.end field

.field private zzgoh:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzczu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzczu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzczv;->versionCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczv;->zzaod()V

    return-void
.end method

.method private final zzaod()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    if-nez v0, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaoc()Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_20

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzazb()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzb([BLcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgoh:[B
    :try_end_18
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczv;->zzaod()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczv;->zzgog:Lcom/google/android/gms/internal/ads/zzbo$zza;

    return-object v0
.end method
