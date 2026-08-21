###### Class com.google.android.gms.measurement.internal.zzt (com.google.android.gms.measurement.internal.zzt)
.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Lcom/google/android/gms/measurement/internal/zzu;
.source ""


# instance fields
.field private zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbj$zze;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result v0

    return v0
.end method

.method final zza(Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzbr$zzk;Z)Z
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbl:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzbr:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zze()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzf()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_36

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzh()Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v6, 0x1

    goto :goto_37

    :cond_36
    const/4 v6, 0x0

    :goto_37
    if-nez v2, :cond_40

    if-nez v3, :cond_40

    if-eqz v6, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v2, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v2, 0x1

    :goto_41
    const/4 v7, 0x0

    if-eqz p3, :cond_6e

    if-nez v2, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zza()Z

    move-result p3

    if-eqz p3, :cond_68

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_68
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {p1, p3, p2, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    :cond_6e
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzd()Lcom/google/android/gms/internal/measurement/zzbj$zzc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzf()Z

    move-result v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzf()Z

    move-result v10

    if-eqz v10, :cond_b5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzc()Z

    move-result v10

    if-nez v10, :cond_a3

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "No number filter for long property. property"

    :goto_9e
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17f

    :cond_a3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzg()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbj$zzd;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(JLcom/google/android/gms/internal/measurement/zzbj$zzd;)Ljava/lang/Boolean;

    move-result-object v7

    :goto_af
    invoke-static {v7, v9}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_17f

    :cond_b5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzh()Z

    move-result v10

    if-eqz v10, :cond_e9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzc()Z

    move-result v10

    if-nez v10, :cond_dc

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "No number filter for double property. property"

    goto :goto_9e

    :cond_dc
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzi()D

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbj$zzd;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(DLcom/google/android/gms/internal/measurement/zzbj$zzd;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_af

    :cond_e9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzd()Z

    move-result v10

    if-eqz v10, :cond_163

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zza()Z

    move-result v10

    if-nez v10, :cond_14f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzc()Z

    move-result v10

    if-nez v10, :cond_116

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "No string or number filter defined. property"

    goto :goto_9e

    :cond_116
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbj$zzd;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzd;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_af

    :cond_12d
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zze()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v8, v11, v9, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17f

    :cond_14f
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbj$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbj$zzf;

    move-result-object v8

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbj$zzf;Lcom/google/android/gms/measurement/internal/zzew;)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_af

    :cond_163
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "User property has no value, property"

    goto/16 :goto_9e

    :goto_17f
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    if-nez v7, :cond_18e

    const-string v9, "null"

    goto :goto_18f

    :cond_18e
    move-object v9, v7

    :goto_18f
    const-string v10, "Property filter result"

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v7, :cond_197

    return v4

    :cond_197
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a8

    if-eqz v6, :cond_1a8

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a8

    return v5

    :cond_1a8
    if-eqz p3, :cond_1b2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zze()Z

    move-result p3

    if-eqz p3, :cond_1b4

    :cond_1b2
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    :cond_1b4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1da

    if-eqz v2, :cond_1da

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zza()Z

    move-result p3

    if-nez p3, :cond_1c3

    goto :goto_1da

    :cond_1c3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzb()J

    move-result-wide p2

    if-eqz v1, :cond_1cf

    if-eqz p1, :cond_1cf

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_1cf
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz v3, :cond_1d8

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    goto :goto_1da

    :cond_1d8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    :cond_1da
    :goto_1da
    return v5
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
