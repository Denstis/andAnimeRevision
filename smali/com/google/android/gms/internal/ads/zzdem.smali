###### Class com.google.android.gms.internal.ads.zzdem (com.google.android.gms.internal.ads.zzdem)
.class public abstract Lcom/google/android/gms/internal/ads/zzdem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzden;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "KeyProto::",
        "Lcom/google/android/gms/internal/ads/zzdsg;",
        "KeyFormatProto::",
        "Lcom/google/android/gms/internal/ads/zzdsg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzden<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final zzgsl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final zzgsm:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TKeyProto;>;"
        }
    .end annotation
.end field

.field private final zzgsn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TKeyFormatProto;>;"
        }
    .end annotation
.end field

.field private final zzgso:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Ljava/lang/Class<",
            "TKeyProto;>;",
            "Ljava/lang/Class<",
            "TKeyFormatProto;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsl:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsm:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsn:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgso:Ljava/lang/String;

    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Casted:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TCasted;>;)TCasted;"
        }
    .end annotation

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProto;)TP;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzc(Lcom/google/android/gms/internal/ads/zzdsg;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProto;)TKeyProto;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzc(Lcom/google/android/gms/internal/ads/zzdsg;)V

    return-object p1
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgso:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdsg;",
            ")TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsm:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected proto of type "

    if-eqz v1, :cond_17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsm:Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdem;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzf(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzapo()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsl:Ljava/lang/Class;

    return-object v0
.end method

.method protected abstract zzapp()Lcom/google/android/gms/internal/ads/zzdjn$zzb;
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected proto of type "

    if-eqz v1, :cond_17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsn:Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdem;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzh(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProto;)V"
        }
    .end annotation
.end method

.method protected abstract zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProto;)V"
        }
    .end annotation
.end method

.method protected abstract zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProto;)TP;"
        }
    .end annotation
.end method

.method protected abstract zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProto;)TKeyProto;"
        }
    .end annotation
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzdpm;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm;",
            ")TP;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzf(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsm:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_29
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzh(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgsn:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_29
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdjn;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_0 .. :try_end_4} :catch_29

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzh(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjn;->zzatx()Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzgso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdjn$zza;->zzgw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdsg;->zzaxg()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjn$zza;->zzbo(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdem;->zzapp()Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdjn$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdjn$zzb;)Lcom/google/android/gms/internal/ads/zzdjn$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdjn;

    return-object p1

    :catch_29
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm;",
            ")TKeyProto;"
        }
    .end annotation
.end method

.method protected abstract zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm;",
            ")TKeyFormatProto;"
        }
    .end annotation
.end method
