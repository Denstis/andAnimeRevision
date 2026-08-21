###### Class com.google.android.gms.internal.ads.zzbfk (com.google.android.gms.internal.ads.zzbfk)
.class final Lcom/google/android/gms/internal/ads/zzbfk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjm;


# instance fields
.field private zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

.field private zzelt:Lcom/google/android/gms/internal/ads/zzbth;

.field private final synthetic zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

.field private zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

.field private zzewq:Lcom/google/android/gms/internal/ads/zzcle;

.field private zzewr:Lcom/google/android/gms/internal/ads/zzbkh;

.field private zzews:Lcom/google/android/gms/internal/ads/zzbin;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbez;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbkh;)Lcom/google/android/gms/internal/ads/zzbjm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzewr:Lcom/google/android/gms/internal/ads/zzbkh;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcle;)Lcom/google/android/gms/internal/ads/zzbjm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcle;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    return-object p0
.end method

.method public final synthetic zzace()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzacz()Lcom/google/android/gms/internal/ads/zzbjn;

    move-result-object v0

    return-object v0
.end method

.method public final zzacz()Lcom/google/android/gms/internal/ads/zzbjn;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzewr:Lcom/google/android/gms/internal/ads/zzbkh;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbkh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzews:Lcom/google/android/gms/internal/ads/zzbin;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbin;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzews:Lcom/google/android/gms/internal/ads/zzbin;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbli;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbli;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcws;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcws;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbmf;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcbx;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzcxa;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzewr:Lcom/google/android/gms/internal/ads/zzbkh;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/zzbfj;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbin;Lcom/google/android/gms/internal/ads/zzbth;Lcom/google/android/gms/internal/ads/zzbli;Lcom/google/android/gms/internal/ads/zzcws;Lcom/google/android/gms/internal/ads/zzbmf;Lcom/google/android/gms/internal/ads/zzcbx;Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzbmk;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzbkh;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/android/gms/internal/ads/zzbez;)V

    return-object v1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbin;)Lcom/google/android/gms/internal/ads/zzbjm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbin;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzews:Lcom/google/android/gms/internal/ads/zzbin;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbth;)Lcom/google/android/gms/internal/ads/zzbjm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbth;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbjm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbjm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbpn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    return-object p0
.end method
