###### Class com.google.firebase.iid.zzs (com.google.firebase.iid.zzs)
.class final Lcom/google/firebase/iid/zzs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/iid/zzs;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/firebase/iid/zzs;->zzb:J

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzs;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/iid/zzs;->zzb:J

    return-wide v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lcom/google/firebase/iid/zzs;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/firebase/iid/zzs;

    iget-wide v2, p0, Lcom/google/firebase/iid/zzs;->zzb:J

    iget-wide v4, p1, Lcom/google/firebase/iid/zzs;->zzb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/iid/zzs;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/iid/zzs;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/iid/zzs;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/firebase/iid/zzs;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzs;->zza:Ljava/lang/String;

    return-object v0
.end method

.method final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/iid/zzs;->zzb:J

    return-wide v0
.end method
