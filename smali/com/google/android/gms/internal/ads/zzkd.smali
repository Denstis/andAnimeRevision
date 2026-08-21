###### Class com.google.android.gms.internal.ads.zzkd (com.google.android.gms.internal.ads.zzkd)
.class public final Lcom/google/android/gms/internal/ads/zzkd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziw;
.implements Lcom/google/android/gms/internal/ads/zzjb;


# static fields
.field private static final zzank:Lcom/google/android/gms/internal/ads/zzix;

.field private static final zzavl:I


# instance fields
.field private zzagh:J

.field private final zzanr:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzans:Lcom/google/android/gms/internal/ads/zzoc;

.field private zzapg:I

.field private zzaph:I

.field private zzapk:Lcom/google/android/gms/internal/ads/zziy;

.field private final zzavm:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzavn:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzjr;",
            ">;"
        }
    .end annotation
.end field

.field private zzavo:I

.field private zzavp:I

.field private zzavq:J

.field private zzavr:I

.field private zzavs:Lcom/google/android/gms/internal/ads/zzoc;

.field private zzavt:[Lcom/google/android/gms/internal/ads/zzkf;

.field private zzavu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkd;->zzank:Lcom/google/android/gms/internal/ads/zzix;

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavl:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zznx;->zzbfz:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzanr:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzoc;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    return-void
.end method

.method private final zzdv(J)V
    .registers 22

    move-object/from16 v0, p0

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_128

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzjr;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzjr;->zzaqu:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_128

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzjr;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->type:I

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzary:I

    if-ne v3, v4, :cond_111

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzja;-><init>()V

    sget v10, Lcom/google/android/gms/internal/ads/zzjs;->zzatx:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v10

    if-eqz v10, :cond_4e

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavu:Z

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzjt;->zza(Lcom/google/android/gms/internal/ads/zzju;Z)Lcom/google/android/gms/internal/ads/zzkx;

    move-result-object v8

    if-eqz v8, :cond_4e

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzja;->zzb(Lcom/google/android/gms/internal/ads/zzkx;)Z

    :cond_4e
    move-wide v11, v6

    move-wide v6, v3

    const/4 v3, 0x0

    :goto_51
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzjr;->zzaqw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ed

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzjr;->zzaqw:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzjr;

    iget v13, v4, Lcom/google/android/gms/internal/ads/zzjs;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzjs;->zzasa:I

    if-ne v13, v14, :cond_e4

    sget v13, Lcom/google/android/gms/internal/ads/zzjs;->zzarz:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavu:Z

    move/from16 v18, v13

    move-object v13, v4

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzjt;->zza(Lcom/google/android/gms/internal/ads/zzjr;Lcom/google/android/gms/internal/ads/zzju;JLcom/google/android/gms/internal/ads/zzin;Z)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v13

    if-eqz v13, :cond_e4

    sget v14, Lcom/google/android/gms/internal/ads/zzjs;->zzasb:I

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v4

    sget v14, Lcom/google/android/gms/internal/ads/zzjs;->zzasc:I

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v4

    sget v14, Lcom/google/android/gms/internal/ads/zzjs;->zzasd:I

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v4

    invoke-static {v13, v4, v9}, Lcom/google/android/gms/internal/ads/zzjt;->zza(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzjr;Lcom/google/android/gms/internal/ads/zzja;)Lcom/google/android/gms/internal/ads/zzkj;

    move-result-object v4

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzkj;->zzavc:I

    if-eqz v14, :cond_e4

    new-instance v14, Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzkh;->type:I

    invoke-interface {v15, v3, v2}, Lcom/google/android/gms/internal/ads/zziy;->zzb(II)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object v2

    invoke-direct {v14, v13, v4, v2}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzjd;)V

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzkj;->zzavi:I

    add-int/lit8 v2, v2, 0x1e

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzkh;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzgo;->zzo(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v2

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzkh;->type:I

    const/4 v10, 0x1

    if-ne v15, v10, :cond_c9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzja;->zzgf()Z

    move-result v10

    if-eqz v10, :cond_c3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzja;->zzafp:I

    iget v15, v9, Lcom/google/android/gms/internal/ads/zzja;->zzafq:I

    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/internal/ads/zzgo;->zza(II)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v2

    :cond_c3
    if-eqz v8, :cond_c9

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Lcom/google/android/gms/internal/ads/zzkx;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v2

    :cond_c9
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzkf;->zzaxb:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzjd;->zze(Lcom/google/android/gms/internal/ads/zzgo;)V

    move-object v10, v8

    move-object v2, v9

    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzkh;->zzagh:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzkj;->zzamv:[J

    const/4 v8, 0x0

    aget-wide v13, v4, v8

    cmp-long v4, v13, v11

    if-gez v4, :cond_e7

    move-wide v11, v13

    goto :goto_e7

    :cond_e4
    move-object v10, v8

    move-object v2, v9

    const/4 v8, 0x0

    :cond_e7
    :goto_e7
    add-int/lit8 v3, v3, 0x1

    move-object v9, v2

    move-object v8, v10

    goto/16 :goto_51

    :cond_ed
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzagh:J

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzkf;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzkf;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavt:[Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zziy;->zzge()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zziy;->zza(Lcom/google/android/gms/internal/ads/zzjb;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavo:I

    goto/16 :goto_2

    :cond_111
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzjr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjr;->zzaqw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_128
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavo:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_130

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkd;->zzgn()V

    :cond_130
    return-void
.end method

.method private final zzgn()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzagh:J

    return-wide v0
.end method

.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjc;)I
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavo:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_18f

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_10d

    if-ne v3, v10, :cond_107

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1e
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavt:[Lcom/google/android/gms/internal/ads/zzkf;

    array-length v15, v14

    if-ge v3, v15, :cond_3a

    aget-object v14, v14, v3

    iget v15, v14, Lcom/google/android/gms/internal/ads/zzkf;->zzavg:I

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzkf;->zzaxa:Lcom/google/android/gms/internal/ads/zzkj;

    iget v11, v14, Lcom/google/android/gms/internal/ads/zzkj;->zzavc:I

    if-eq v15, v11, :cond_37

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzkj;->zzamv:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_37

    move v5, v3

    move-wide v12, v14

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3a
    if-ne v5, v4, :cond_3d

    return v4

    :cond_3d
    aget-object v3, v14, v5

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzaxb:Lcom/google/android/gms/internal/ads/zzjd;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzavg:I

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzaxa:Lcom/google/android/gms/internal/ads/zzkj;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzkj;->zzamv:[J

    aget-wide v13, v12, v5

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkj;->zzamu:[I

    aget v11, v11, v5

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzawz:Lcom/google/android/gms/internal/ads/zzkh;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzkh;->zzaxd:I

    if-ne v12, v6, :cond_59

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v11, v11, -0x8

    :cond_59
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zziv;->getPosition()J

    move-result-wide v16

    sub-long v16, v13, v16

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    move/from16 v18, v11

    int-to-long v10, v12

    add-long v10, v16, v10

    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-ltz v12, :cond_104

    cmp-long v12, v10, v8

    if-ltz v12, :cond_72

    goto/16 :goto_104

    :cond_72
    long-to-int v2, v10

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zziv;->zzab(I)V

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzawz:Lcom/google/android/gms/internal/ads/zzkh;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzkh;->zzaqq:I

    if-eqz v2, :cond_cc

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aput-byte v7, v8, v7

    aput-byte v7, v8, v6

    const/4 v9, 0x2

    aput-byte v7, v8, v9

    const/4 v8, 0x4

    rsub-int/lit8 v11, v2, 0x4

    move/from16 v8, v18

    :goto_8c
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    if-ge v9, v8, :cond_c9

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    if-nez v9, :cond_ba

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-interface {v1, v9, v11, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v9

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzanr:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzanr:Lcom/google/android/gms/internal/ads/zzoc;

    const/4 v10, 0x4

    invoke-interface {v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    add-int/2addr v8, v11

    goto :goto_8c

    :cond_ba
    invoke-interface {v4, v1, v9, v7}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zziv;IZ)I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    goto :goto_8c

    :cond_c9
    move/from16 v20, v8

    goto :goto_e7

    :cond_cc
    :goto_cc
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    move/from16 v11, v18

    if-ge v2, v11, :cond_e5

    sub-int v2, v11, v2

    invoke-interface {v4, v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zziv;IZ)I

    move-result v2

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    add-int/2addr v8, v2

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    sub-int/2addr v8, v2

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    move/from16 v18, v11

    goto :goto_cc

    :cond_e5
    move/from16 v20, v11

    :goto_e7
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzaxa:Lcom/google/android/gms/internal/ads/zzkj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkj;->zzaxi:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkj;->zzavk:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzjd;->zza(JIIILcom/google/android/gms/internal/ads/zzjg;)V

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzavg:I

    add-int/2addr v1, v6

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzkf;->zzavg:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    return v7

    :cond_104
    :goto_104
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:J

    return v6

    :cond_107
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_10d
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    int-to-long v10, v10

    sub-long/2addr v3, v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zziv;->getPosition()J

    move-result-wide v10

    add-long/2addr v10, v3

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavs:Lcom/google/android/gms/internal/ads/zzoc;

    if-eqz v12, :cond_16f

    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    long-to-int v4, v3

    invoke-interface {v1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavp:I

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaqx:I

    if-ne v3, v4, :cond_150

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavs:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzkd;->zzavl:I

    if-ne v4, v5, :cond_139

    :goto_137
    const/4 v3, 0x1

    goto :goto_14d

    :cond_139
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :cond_13d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzim()I

    move-result v4

    if-lez v4, :cond_14c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzkd;->zzavl:I

    if-ne v4, v5, :cond_13d

    goto :goto_137

    :cond_14c
    const/4 v3, 0x0

    :goto_14d
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavu:Z

    goto :goto_177

    :cond_150
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_177

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzjr;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzju;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavp:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavs:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzju;-><init>(ILcom/google/android/gms/internal/ads/zzoc;)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzjr;->zzaqv:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_177

    :cond_16f
    cmp-long v5, v3, v8

    if-gez v5, :cond_179

    long-to-int v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zziv;->zzab(I)V

    :cond_177
    :goto_177
    const/4 v3, 0x0

    goto :goto_181

    :cond_179
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zziv;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:J

    const/4 v3, 0x1

    :goto_181
    invoke-direct {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzkd;->zzdv(J)V

    if-eqz v3, :cond_18c

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavo:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18c

    const/4 v7, 0x1

    :cond_18c
    if-eqz v7, :cond_6

    return v6

    :cond_18f
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    if-nez v3, :cond_1b7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-interface {v1, v3, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zziv;->zza([BIIZ)Z

    move-result v3

    if-nez v3, :cond_1a0

    const/4 v6, 0x0

    goto/16 :goto_299

    :cond_1a0
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavp:I

    :cond_1b7
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_1d3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    :cond_1d3
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavp:I

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzary:I

    if-eq v3, v8, :cond_1f0

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasa:I

    if-eq v3, v8, :cond_1f0

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasb:I

    if-eq v3, v8, :cond_1f0

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasc:I

    if-eq v3, v8, :cond_1f0

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasd:I

    if-eq v3, v8, :cond_1f0

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasm:I

    if-ne v3, v8, :cond_1ee

    goto :goto_1f0

    :cond_1ee
    const/4 v3, 0x0

    goto :goto_1f1

    :cond_1f0
    :goto_1f0
    const/4 v3, 0x1

    :goto_1f1
    if-eqz v3, :cond_21d

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zziv;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    add-long/2addr v7, v9

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    int-to-long v9, v3

    sub-long/2addr v7, v9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjr;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavp:I

    invoke-direct {v5, v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzjr;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-nez v3, :cond_218

    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzkd;->zzdv(J)V

    goto/16 :goto_299

    :cond_218
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkd;->zzgn()V

    goto/16 :goto_299

    :cond_21d
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavp:I

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzaso:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzarz:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasp:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasq:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatj:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatk:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatl:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasn:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatm:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatn:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzato:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatp:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatq:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzasl:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzaqx:I

    if-eq v3, v8, :cond_262

    sget v8, Lcom/google/android/gms/internal/ads/zzjs;->zzatx:I

    if-ne v3, v8, :cond_260

    goto :goto_262

    :cond_260
    const/4 v3, 0x0

    goto :goto_263

    :cond_262
    :goto_262
    const/4 v3, 0x1

    :goto_263
    if-eqz v3, :cond_294

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    if-ne v3, v5, :cond_26b

    const/4 v3, 0x1

    goto :goto_26c

    :cond_26b
    const/4 v3, 0x0

    :goto_26c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-gtz v3, :cond_27a

    const/4 v3, 0x1

    goto :goto_27b

    :cond_27a
    const/4 v3, 0x0

    :goto_27b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzoc;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavq:J

    long-to-int v9, v8

    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavs:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavm:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavs:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-static {v3, v7, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_297

    :cond_294
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavs:Lcom/google/android/gms/internal/ads/zzoc;

    :goto_297
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzkd;->zzavo:I

    :goto_299
    if-nez v6, :cond_6

    return v4
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziv;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzki;->zzd(Lcom/google/android/gms/internal/ads/zziv;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavn:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzaph:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzapg:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkd;->zzgn()V

    return-void

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavt:[Lcom/google/android/gms/internal/ads/zzkf;

    if-eqz p1, :cond_31

    array-length p2, p1

    :goto_1b
    if-ge v0, p2, :cond_31

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkf;->zzaxa:Lcom/google/android/gms/internal/ads/zzkj;

    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzkj;->zzdw(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzkj;->zzdx(J)I

    move-result v3

    :cond_2c
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzkf;->zzavg:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method public final zzdt(J)J
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzavt:[Lcom/google/android/gms/internal/ads/zzkf;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_26

    aget-object v5, v0, v4

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkf;->zzaxa:Lcom/google/android/gms/internal/ads/zzkj;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzkj;->zzdw(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1a

    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzkj;->zzdx(J)I

    move-result v6

    :cond_1a
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkj;->zzamv:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_23

    move-wide v2, v6

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_26
    return-wide v2
.end method

.method public final zzgc()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
