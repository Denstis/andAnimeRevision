###### Class com.google.android.gms.measurement.internal.zzid (com.google.android.gms.measurement.internal.zzid)
.class final Lcom/google/android/gms/measurement/internal/zzid;
.super Lcom/google/android/gms/measurement/internal/zzkb;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzan;Ljava/lang/String;)[B
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const-string v2, "_r"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzae()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzbe:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v15, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B

    return-object v0

    :cond_33
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const-string v5, "_iap"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_58

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const-string v5, "_iapx"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    invoke-virtual {v2, v3, v15, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v14

    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v11

    if-nez v11, :cond_84

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_57c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-object v0

    :cond_84
    :try_start_84
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v3

    if-nez v3, :cond_a1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_99
    .catchall {:try_start_84 .. :try_end_99} :catchall_57c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-object v0

    :cond_a1
    :try_start_a1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c1

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_c1
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_d2
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_e3
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v3, v5, v7

    if-eqz v3, :cond_f6

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_f6
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12d

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v3

    :goto_129
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_16f

    :cond_12d
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13f

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_16f

    :cond_13f
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16f

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v3

    :goto_14d
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_16f

    :cond_151
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_160

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v3

    goto :goto_129

    :cond_160
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16f

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v3

    goto :goto_14d

    :cond_16f
    :goto_16f
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v3

    if-eqz v3, :cond_1a4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zza:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a4

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_1a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v5

    if-eqz v5, :cond_1ff

    if-eqz v3, :cond_1ff

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1c0
    .catchall {:try_start_a1 .. :try_end_1c0} :catchall_57c

    if-nez v5, :cond_1ff

    :try_start_1c2
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzid;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;
    :try_end_1d3
    .catch Ljava/lang/SecurityException; {:try_start_1c2 .. :try_end_1d3} :catch_1e3
    .catchall {:try_start_1c2 .. :try_end_1d3} :catchall_57c

    :try_start_1d3
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_1ff

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_1ff

    :catch_1e3
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_1f7
    .catchall {:try_start_1d3 .. :try_end_1f7} :catchall_57c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-object v0

    :cond_1ff
    :goto_1ff
    :try_start_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzaa()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzaa()V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzah;->zzf()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzah;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;
    :try_end_231
    .catchall {:try_start_1ff .. :try_end_231} :catchall_57c

    :try_start_231
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzid;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;
    :try_end_242
    .catch Ljava/lang/SecurityException; {:try_start_231 .. :try_end_242} :catch_560
    .catchall {:try_start_231 .. :try_end_242} :catchall_57c

    :try_start_242
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_253

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_253
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_263
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v8, "_lte"

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_263

    goto :goto_27b

    :cond_27a
    move-object v7, v14

    :goto_27b
    const-wide/16 v23, 0x0

    if-eqz v7, :cond_283

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    if-nez v6, :cond_2a6

    :cond_283
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v18, "auto"

    const-string v19, "_lte"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    :cond_2a6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    const-wide/16 v6, 0x1

    if-eqz v3, :cond_32c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    const-string v9, "Checking account type status for ad personalization signals"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzah;->zzj()Z

    move-result v8

    if-eqz v8, :cond_32c

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v9

    if-eqz v9, :cond_32c

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzj()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32c

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Turning off ad personalization due to account type"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2f4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_310

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v14, "_npa"

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30e

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_310

    :cond_30e
    const/4 v14, 0x0

    goto :goto_2f4

    :cond_310
    :goto_310
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v18, "auto"

    const-string v19, "_npa"

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    :goto_332
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_370

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v9

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    aput-object v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_332

    :cond_370
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v14

    const-string v3, "_c"

    invoke-virtual {v14, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Marking in-app purchase as real-time"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {v14, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_o"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3bf

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v3

    const-string v4, "_dbg"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v14, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v14, v2, v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3bf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    if-nez v2, :cond_3ff

    new-instance v17, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    const-wide/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v11, v18

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v12, v17

    move-wide/from16 v9, v23

    goto :goto_414

    :cond_3ff
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    const/16 v19, 0x0

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzaj;->zzf:J

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(J)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v17

    move-wide v9, v3

    move-object/from16 v12, v17

    :goto_414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzaj;)V

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzak;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Lcom/google/android/gms/measurement/internal/zzga;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v2

    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v2

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v2

    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzak;->zzd:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v2

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_449
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    goto :goto_449

    :cond_46e
    move-object/from16 v3, v26

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzh;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zzh$zzb;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zzd$zza;

    move-result-object v6

    iget-wide v7, v12, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzd$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzd$zza;

    move-result-object v6

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzd$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzd$zza;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzh$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzd$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzh$zzb;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzh$zzb;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->e_()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzn;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zze()Z

    move-result v0

    if-eqz v0, :cond_4c3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_4c3
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v4

    cmp-long v0, v4, v23

    if-eqz v0, :cond_4ce

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_4ce
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v6

    cmp-long v0, v6, v23

    if-eqz v0, :cond_4da

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_4e1

    :cond_4da
    cmp-long v0, v4, v23

    if-eqz v0, :cond_4e1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_4e1
    :goto_4e1
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzx;->zze()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf()J

    move-result-wide v4

    move-object/from16 v2, v25

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_531
    .catchall {:try_start_242 .. :try_end_531} :catchall_57c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    :try_start_538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbi()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc([B)[B

    move-result-object v0
    :try_end_54c
    .catch Ljava/io/IOException; {:try_start_538 .. :try_end_54c} :catch_54d

    return-object v0

    :catch_54d
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v19

    :catch_560
    move-exception v0

    :try_start_561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_574
    .catchall {:try_start_561 .. :try_end_574} :catchall_57c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-object v0

    :catchall_57c
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    goto :goto_586

    :goto_585
    throw v0

    :goto_586
    goto :goto_585
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
