###### Class com.google.android.gms.internal.ads.zzcwe (com.google.android.gms.internal.ads.zzcwe)
.class public final Lcom/google/android/gms/internal/ads/zzcwe;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzbll:Lcom/google/android/gms/internal/ads/zzua;

.field public final zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

.field public final zzdkl:Lcom/google/android/gms/internal/ads/zzagd;

.field public final zzgdf:I

.field public final zzgke:Lcom/google/android/gms/internal/ads/zzvz;

.field public final zzgkf:Lcom/google/android/gms/internal/ads/zzyj;

.field public final zzgkg:Lcom/google/android/gms/internal/ads/zztx;

.field public final zzgkh:Ljava/lang/String;

.field public final zzgki:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzgkj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzgkk:Lcom/google/android/gms/internal/ads/zzuf;

.field public final zzgkl:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final zzgkm:Lcom/google/android/gms/internal/ads/zzvt;

.field public final zzgkn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcwg;)V
    .registers 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zza(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzbll:Lcom/google/android/gms/internal/ads/zzua;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzb(Lcom/google/android/gms/internal/ads/zzcwg;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzc(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzvz;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgke:Lcom/google/android/gms/internal/ads/zzvz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztx;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zztx;->versionCode:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcbx:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zztx;->extras:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcby:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcbz:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcca:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zztx;->zzabj:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzbkg:Z

    if-nez v2, :cond_55

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzl(Lcom/google/android/gms/internal/ads/zzcwg;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_55

    :cond_52
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_57

    :cond_55
    :goto_55
    const/4 v2, 0x1

    const/4 v11, 0x1

    :goto_57
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zztx;->zzccb:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zztx;->zzccc:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zztx;->zzng:Landroid/location/Location;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zztx;->zzccd:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcce:Landroid/os/Bundle;

    move-object/from16 v16, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzccf:Landroid/os/Bundle;

    move-object/from16 v17, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzccg:Ljava/util/List;

    move-object/from16 v18, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcch:Ljava/lang/String;

    move-object/from16 v19, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcci:Ljava/lang/String;

    move-object/from16 v20, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzccj:Z

    move/from16 v21, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzcck:Lcom/google/android/gms/internal/ads/zztr;

    move-object/from16 v22, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzabk:I

    move/from16 v23, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzk(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztx;->zzabl:Ljava/lang/String;

    move-object/from16 v24, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/ads/zztx;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzyf;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zztr;ILjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkg:Lcom/google/android/gms/internal/ads/zztx;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzm(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c9

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzm(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v1

    goto :goto_d7

    :cond_c9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzn(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    if-eqz v1, :cond_d6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzn(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaay;->zzcwa:Lcom/google/android/gms/internal/ads/zzyj;

    goto :goto_d7

    :cond_d6
    move-object v1, v2

    :goto_d7
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkf:Lcom/google/android/gms/internal/ads/zzyj;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd(Lcom/google/android/gms/internal/ads/zzcwg;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgki:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zze(Lcom/google/android/gms/internal/ads/zzcwg;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkj:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd(Lcom/google/android/gms/internal/ads/zzcwg;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_ec

    goto :goto_105

    :cond_ec
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzn(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    if-nez v1, :cond_101

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaay;

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_105

    :cond_101
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzn(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v2

    :goto_105
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzf(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkk:Lcom/google/android/gms/internal/ads/zzuf;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzg(Lcom/google/android/gms/internal/ads/zzcwg;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgdf:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzh(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkl:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzi(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkm:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzj(Lcom/google/android/gms/internal/ads/zzcwg;)Lcom/google/android/gms/internal/ads/zzagd;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzdkl:Lcom/google/android/gms/internal/ads/zzagd;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcwg;->zzgkn:Ljava/util/Set;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkn:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcwg;Lcom/google/android/gms/internal/ads/zzcwd;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwe;-><init>(Lcom/google/android/gms/internal/ads/zzcwg;)V

    return-void
.end method


# virtual methods
.method public final zzana()Lcom/google/android/gms/internal/ads/zzada;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkl:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjh()Lcom/google/android/gms/internal/ads/zzada;

    move-result-object v0

    return-object v0
.end method
