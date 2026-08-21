###### Class com.google.android.gms.internal.ads.zzwz (com.google.android.gms.internal.ads.zzwz)
.class public final Lcom/google/android/gms/internal/ads/zzwz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzabj:I

.field private final zzabk:I

.field private final zzabl:Ljava/lang/String;

.field private final zzbkg:Z

.field private final zzcby:I

.field private final zzccb:Ljava/lang/String;

.field private final zzccd:Ljava/lang/String;

.field private final zzccf:Landroid/os/Bundle;

.field private final zzcch:Ljava/lang/String;

.field private final zzccj:Z

.field private final zzcec:Landroid/os/Bundle;

.field private final zzceg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceh:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzcei:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcej:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcek:Lcom/google/android/gms/internal/ads/zzcyw;

.field private final zznc:Ljava/util/Date;

.field private final zzne:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzng:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwy;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzwz;-><init>(Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zznc:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzb(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzc(Lcom/google/android/gms/internal/ads/zzwy;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcby:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzd(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzne:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zze(Lcom/google/android/gms/internal/ads/zzwy;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzng:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzf(Lcom/google/android/gms/internal/ads/zzwy;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzbkg:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzg(Lcom/google/android/gms/internal/ads/zzwy;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcec:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzh(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzceg:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzi(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzj(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcch:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzceh:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzk(Lcom/google/android/gms/internal/ads/zzwy;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzabj:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzl(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcei:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzm(Lcom/google/android/gms/internal/ads/zzwy;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccf:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzn(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcej:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzo(Lcom/google/android/gms/internal/ads/zzwy;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccj:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcek:Lcom/google/android/gms/internal/ads/zzcyw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzp(Lcom/google/android/gms/internal/ads/zzwy;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzabk:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzq(Lcom/google/android/gms/internal/ads/zzwy;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzabl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zznc:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccd:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcec:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccf:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcby:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzne:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzng:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzbkg:Z

    return v0
.end method

.method public final getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzabl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzceg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcec:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccb:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzccj:Z

    return v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcei:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawy;->zzbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzpa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcch:Ljava/lang/String;

    return-object v0
.end method

.method public final zzpb()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzceh:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzpc()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzceg:Ljava/util/Map;

    return-object v0
.end method

.method public final zzpd()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcec:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzpe()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzabj:I

    return v0
.end method

.method public final zzpf()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzcej:Ljava/util/Set;

    return-object v0
.end method

.method public final zzpg()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzabk:I

    return v0
.end method
