###### Class com.google.android.gms.internal.ads.zzkx (com.google.android.gms.internal.ads.zzkx)
.class public final Lcom/google/android/gms/internal/ads/zzkx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzkx$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzkx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzkx$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    const-class v2, Lcom/google/android/gms/internal/ads/zzkx$zza;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzkx$zza;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzkx$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzkx$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lcom/google/android/gms/internal/ads/zzkx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzkx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final length()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    array-length v0, v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_15

    aget-object v3, p2, v2

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method public final zzar(I)Lcom/google/android/gms/internal/ads/zzkx$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzazn:[Lcom/google/android/gms/internal/ads/zzkx$zza;

    aget-object p1, v0, p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzkx.zza (com.google.android.gms.internal.ads.zzkx$zza)
.class public interface abstract Lcom/google/android/gms/internal/ads/zzkx$zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation
