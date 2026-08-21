###### Class com.google.android.gms.internal.ads.zzfg (com.google.android.gms.internal.ads.zzfg)
.class public final Lcom/google/android/gms/internal/ads/zzfg;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# instance fields
.field private final zzzs:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;IILandroid/view/View;)V
    .registers 15

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfg;->zzzs:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfg;->zzzs:Landroid/view/View;

    if-eqz v0, :cond_75

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcno:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfg;->zzzs:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzf;->zzar()Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzeh;->zzzm:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;->zzdc(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzeh;->zzzn:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;->zzdd(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzeh;->zzzo:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;->zzde(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzeh;->zzzp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;->zzdf(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzf$zza;

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbo$zza$zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzbo$zza$zzf;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    :cond_75
    return-void
.end method
