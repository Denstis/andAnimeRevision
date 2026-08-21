###### Class com.google.android.gms.internal.ads.zzin (com.google.android.gms.internal.ads.zzin)
.class public final Lcom/google/android/gms/internal/ads/zzin;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzin$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzin$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzafv:I

.field private final zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

.field public final zzaml:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzim;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzin$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzin$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzaml:I

    return-void
.end method

.method private varargs constructor <init>(Z[Lcom/google/android/gms/internal/ads/zzin$zza;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, [Lcom/google/android/gms/internal/ads/zzin$zza;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzin$zza;

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p2, 0x1

    :goto_d
    array-length v0, p1

    if-ge p2, v0, :cond_52

    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object v0

    aget-object v1, p1, p2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Duplicate data for uuid: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzaml:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzin$zza;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzin;-><init>(Z[Lcom/google/android/gms/internal/ads/zzin$zza;)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzin$zza;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzin$zza;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzga;->zzaca:Ljava/util/UUID;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object p1, Lcom/google/android/gms/internal/ads/zzga;->zzaca:Ljava/util/UUID;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzin$zza;->zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

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

    const-class v0, Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzin;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzafv:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzafv:I

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzafv:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final zzz(I)Lcom/google/android/gms/internal/ads/zzin$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzamk:[Lcom/google/android/gms/internal/ads/zzin$zza;

    aget-object p1, v0, p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzin.zza (com.google.android.gms.internal.ads.zzin$zza)
.class public final Lcom/google/android/gms/internal/ads/zzin$zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzin$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:[B

.field private final mimeType:Ljava/lang/String;

.field private final uuid:Ljava/util/UUID;

.field private zzafv:I

.field public final zzamm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzio;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzin$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->data:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->zzamm:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzin$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->mimeType:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->data:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->zzamm:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzin$zza;)Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzin$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzin$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzin$zza;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzof;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->data:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzin$zza;->data:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v0

    :cond_2b
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->zzafv:I

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->zzafv:I

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->zzafv:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzin$zza;->zzamm:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
