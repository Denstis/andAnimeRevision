###### Class com.google.android.gms.internal.ads.zzchu (com.google.android.gms.internal.ads.zzchu)
.class final Lcom/google/android/gms/internal/ads/zzchu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsu;


# instance fields
.field private final zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfyq:Lcom/google/android/gms/internal/ads/zzddi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbru;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfyr:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzaxl;",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbru;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzfyq:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzfyr:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzchv;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzchu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzbbw;)V

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzfyq:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzc(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbru;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzfyr:Lcom/google/android/gms/internal/ads/zzbbw;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzas(Z)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzlk:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaul;->zzbb(Landroid/content/Context;)Z

    move-result v6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjl:Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzg;-><init>(ZZZFIZZZ)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzki()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbru;->zzadj()Lcom/google/android/gms/internal/ads/zzbsm;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzfyr:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzflx:Lcom/google/android/gms/internal/ads/zzcvr;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjm:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzdkv:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgje:Lcom/google/android/gms/internal/ads/zzcvv;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcvv;->zzdhz:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcvv;->zzdib:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    move-object v12, v2

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzbbw;ILcom/google/android/gms/internal/ads/zzaxl;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-static {v1, v15, v3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
