###### Class com.google.android.gms.internal.measurement.zzl (com.google.android.gms.internal.measurement.zzl)
.class public abstract Lcom/google/android/gms/internal/measurement/zzl;
.super Lcom/google/android/gms/internal/measurement/zzc;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzm;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzc;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzm;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_3f4

    const/4 v0, 0x0

    return v0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_22

    :cond_11
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_1d

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_22

    :cond_1d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_22
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_27
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzm;->setDataCollectionEnabled(Z)V

    goto/16 :goto_3ee

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_37

    goto :goto_48

    :cond_37
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_43

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_48

    :cond_43
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-interface {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzm;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzn;I)V

    goto/16 :goto_3ee

    :pswitch_51
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zzb(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzm;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_3ee

    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_61

    goto :goto_72

    :cond_61
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_6d

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_72

    :cond_6d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    :goto_72
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_3ee

    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7e

    goto :goto_8f

    :cond_7e
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_8a

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_8f

    :cond_8a
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    :goto_8f
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_3ee

    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9b

    goto :goto_ac

    :cond_9b
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_a7

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_ac

    :cond_a7
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    :goto_ac
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_3ee

    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzm;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_3ee

    :pswitch_d7
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_e6

    goto :goto_f7

    :cond_e6
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_f2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_f7

    :cond_f2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-interface {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzm;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzn;J)V

    goto/16 :goto_3ee

    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_10f

    goto :goto_120

    :cond_10f
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_11b

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_120

    :cond_11b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-interface {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzm;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzn;J)V

    goto/16 :goto_3ee

    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3ee

    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3ee

    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3ee

    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzm;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_3ee

    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3ee

    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_3ee

    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_3ee

    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_3ee

    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1b8

    goto :goto_1c9

    :cond_1b8
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_1c4

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_1c9

    :cond_1c4
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_1c9
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->generateEventId(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1d5

    goto :goto_1e6

    :cond_1d5
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_1e1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_1e6

    :cond_1e1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_1e6
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1f2

    goto :goto_203

    :cond_1f2
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_1fe

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_203

    :cond_1fe
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_203
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_20f

    goto :goto_220

    :cond_20f
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_21b

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_220

    :cond_21b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_220
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22c

    goto :goto_23f

    :cond_22c
    const-string v1, "com.google.android.gms.measurement.api.internal.IStringProvider"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_23a

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_23f

    :cond_23a
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzw;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzw;-><init>(Landroid/os/IBinder;)V

    :goto_23f
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_3ee

    :pswitch_244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_24b

    goto :goto_25c

    :cond_24b
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_257

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_25c

    :cond_257
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_25c
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_268

    goto :goto_279

    :cond_268
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v2, :cond_274

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_279

    :cond_274
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_279
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_27e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzm;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3ee

    :pswitch_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzm;->setSessionTimeoutDuration(J)V

    goto/16 :goto_3ee

    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzm;->setMinimumSessionDuration(J)V

    goto/16 :goto_3ee

    :pswitch_2aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzm;->resetAnalyticsData(J)V

    goto/16 :goto_3ee

    :pswitch_2b3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_3ee

    :pswitch_2c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2cf

    goto :goto_2e0

    :cond_2cf
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_2db

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_2e0

    :cond_2db
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_2e0
    invoke-interface {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_2e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzm;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3ee

    :pswitch_2fa
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_3ee

    :pswitch_30b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzm;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_3ee

    :pswitch_318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_323

    goto :goto_334

    :cond_323
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_32f

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_334

    :cond_32f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_334
    invoke-interface {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_34c

    goto :goto_35d

    :cond_34c
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_358

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_35d

    :cond_358
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_35d
    invoke-interface {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzm;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzn;)V

    goto/16 :goto_3ee

    :pswitch_362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzm;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_3ee

    :pswitch_380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_398

    move-object v6, v3

    goto :goto_3a9

    :cond_398
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz v3, :cond_3a3

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzn;

    goto :goto_3a8

    :cond_3a3
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_3a8
    move-object v6, v2

    :goto_3a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzm;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzn;J)V

    goto :goto_3ee

    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;)Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzm;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_3ee

    :pswitch_3d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzv;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzm;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzv;J)V

    :goto_3ee
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_3f4
    .packed-switch 0x1
        :pswitch_3d7
        :pswitch_3b6
        :pswitch_380
        :pswitch_362
        :pswitch_339
        :pswitch_318
        :pswitch_30b
        :pswitch_2fa
        :pswitch_2e5
        :pswitch_2c0
        :pswitch_2b3
        :pswitch_2aa
        :pswitch_2a1
        :pswitch_298
        :pswitch_27e
        :pswitch_261
        :pswitch_244
        :pswitch_225
        :pswitch_208
        :pswitch_1eb
        :pswitch_1ce
        :pswitch_1b1
        :pswitch_1a4
        :pswitch_197
        :pswitch_186
        :pswitch_175
        :pswitch_15c
        :pswitch_14b
        :pswitch_13a
        :pswitch_129
        :pswitch_100
        :pswitch_d7
        :pswitch_b1
        :pswitch_94
        :pswitch_77
        :pswitch_5a
        :pswitch_51
        :pswitch_30
        :pswitch_27
        :pswitch_a
    .end packed-switch
.end method
