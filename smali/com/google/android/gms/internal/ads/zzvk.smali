###### Class com.google.android.gms.internal.ads.zzvk (com.google.android.gms.internal.ads.zzvk)
.class public abstract Lcom/google/android/gms/internal/ads/zzvk;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvl;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzvl;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvl;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvn;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_1c0

    :pswitch_4
    const/4 p1, 0x0

    return p1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzra;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzqx;)V

    goto/16 :goto_1af

    :pswitch_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuf;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzuf;)V

    goto/16 :goto_1af

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zzbm(Ljava/lang/String;)V

    goto/16 :goto_1af

    :pswitch_29
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_13a

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_36

    goto :goto_49

    :cond_36
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzvo;

    if-eqz p4, :cond_44

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzvo;

    goto :goto_49

    :cond_44
    new-instance p4, Lcom/google/android/gms/internal/ads/zzvq;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(Landroid/os/IBinder;)V

    :goto_49
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzvo;)V

    goto/16 :goto_1af

    :pswitch_4e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->zzju()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_103

    :pswitch_54
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->setImmersiveMode(Z)V

    goto/16 :goto_1af

    :pswitch_5d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjw()Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object p1

    goto/16 :goto_1b7

    :pswitch_63
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjv()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p1

    goto/16 :goto_1b7

    :pswitch_69
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_103

    :pswitch_6f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwx;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzwx;)V

    goto/16 :goto_1af

    :pswitch_7c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzyj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzyj;)V

    goto/16 :goto_1af

    :pswitch_89
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto/16 :goto_1b7

    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->setUserId(Ljava/lang/String;)V

    goto/16 :goto_1af

    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqh;->zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzaqi;)V

    goto/16 :goto_1af

    :pswitch_a5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->isLoading()Z

    move-result p1

    goto/16 :goto_1a5

    :pswitch_ab
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->setManualImpressionsEnabled(Z)V

    goto/16 :goto_1af

    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_bb

    goto :goto_ce

    :cond_bb
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzvz;

    if-eqz p4, :cond_c9

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzvz;

    goto :goto_ce

    :cond_c9
    new-instance p4, Lcom/google/android/gms/internal/ads/zzvy;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Landroid/os/IBinder;)V

    :goto_ce
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzvz;)V

    goto/16 :goto_1af

    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_da

    goto :goto_ed

    :cond_da
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzux;

    if-eqz p4, :cond_e8

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzux;

    goto :goto_ed

    :cond_e8
    new-instance p4, Lcom/google/android/gms/internal/ads/zzuz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzuz;-><init>(Landroid/os/IBinder;)V

    :goto_ed
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzux;)V

    goto/16 :goto_1af

    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaag;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaah;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzaah;)V

    goto/16 :goto_1af

    :pswitch_ff
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    :goto_103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1bd

    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoc;->zzah(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzanz;Ljava/lang/String;)V

    goto/16 :goto_1af

    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzanw;->zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzant;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzant;)V

    goto/16 :goto_1af

    :pswitch_129
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzua;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzua;)V

    goto/16 :goto_1af

    :pswitch_136
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjt()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object p1

    :goto_13a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1bd

    :pswitch_142
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjs()V

    goto/16 :goto_1af

    :pswitch_147
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->stopLoading()V

    goto/16 :goto_1af

    :pswitch_14c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->showInterstitial()V

    goto :goto_1af

    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_157

    goto :goto_16a

    :cond_157
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz p4, :cond_165

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzvt;

    goto :goto_16a

    :cond_165
    new-instance p4, Lcom/google/android/gms/internal/ads/zzvv;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzvv;-><init>(Landroid/os/IBinder;)V

    :goto_16a
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V

    goto :goto_1af

    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_175

    goto :goto_188

    :cond_175
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzuy;

    if-eqz p4, :cond_183

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzuy;

    goto :goto_188

    :cond_183
    new-instance p4, Lcom/google/android/gms/internal/ads/zzva;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzva;-><init>(Landroid/os/IBinder;)V

    :goto_188
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzuy;)V

    goto :goto_1af

    :pswitch_18c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->resume()V

    goto :goto_1af

    :pswitch_190
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->pause()V

    goto :goto_1af

    :pswitch_194
    sget-object p1, Lcom/google/android/gms/internal/ads/zztx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zztx;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zztx;)Z

    move-result p1

    goto :goto_1a5

    :pswitch_1a1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->isReady()Z

    move-result p1

    :goto_1a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_1bd

    :pswitch_1ac
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->destroy()V

    :goto_1af
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1bd

    :pswitch_1b3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_1b7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1bd
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_1b3
        :pswitch_1ac
        :pswitch_1a1
        :pswitch_194
        :pswitch_190
        :pswitch_18c
        :pswitch_16e
        :pswitch_150
        :pswitch_14c
        :pswitch_147
        :pswitch_142
        :pswitch_136
        :pswitch_129
        :pswitch_11c
        :pswitch_10b
        :pswitch_4
        :pswitch_4
        :pswitch_ff
        :pswitch_f2
        :pswitch_d3
        :pswitch_b4
        :pswitch_ab
        :pswitch_a5
        :pswitch_98
        :pswitch_8f
        :pswitch_89
        :pswitch_4
        :pswitch_4
        :pswitch_7c
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_5d
        :pswitch_54
        :pswitch_4e
        :pswitch_2f
        :pswitch_29
        :pswitch_20
        :pswitch_13
        :pswitch_6
    .end packed-switch
.end method
