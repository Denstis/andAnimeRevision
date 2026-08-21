###### Class com.google.android.gms.internal.ads.zzban (com.google.android.gms.internal.ads.zzban)
.class final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzne;


# instance fields
.field private uri:Landroid/net/Uri;

.field private final zzecx:Lcom/google/android/gms/internal/ads/zzne;

.field private final zzecy:J

.field private final zzecz:Lcom/google/android/gms/internal/ads/zzne;

.field private zzeda:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzne;ILcom/google/android/gms/internal/ads/zzne;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecx:Lcom/google/android/gms/internal/ads/zzne;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecz:Lcom/google/android/gms/internal/ads/zzne;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecx:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzne;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecz:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzne;->close()V

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .registers 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    int-to-long v4, p3

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecx:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzne;->read([BII)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_34

    sub-int/2addr p3, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecz:Lcom/google/android/gms/internal/ads/zzne;

    add-int/2addr p2, v0

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzne;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    :cond_34
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznf;)J
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzban;->uri:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    cmp-long v4, v5, v2

    if-ltz v4, :cond_15

    move-object v2, v10

    goto :goto_2a

    :cond_15
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    cmp-long v4, v7, v11

    sub-long/2addr v2, v5

    if-eqz v4, :cond_20

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_20
    move-wide v7, v2

    new-instance v2, Lcom/google/android/gms/internal/ads/zznf;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_2a
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_3b

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    add-long/2addr v5, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_3b

    move-object v3, v10

    goto :goto_62

    :cond_3b
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_56

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    add-long/2addr v5, v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzban;->zzecy:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_58

    :cond_56
    move-wide/from16 v17, v11

    :goto_58
    new-instance v3, Lcom/google/android/gms/internal/ads/zznf;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_62
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_6d

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzban;->zzecx:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zznf;)J

    move-result-wide v6

    goto :goto_6e

    :cond_6d
    move-wide v6, v4

    :goto_6e
    if-eqz v3, :cond_76

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzban;->zzecz:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zznf;)J

    move-result-wide v4

    :cond_76
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzban;->zzeda:J

    cmp-long v1, v6, v11

    if-eqz v1, :cond_85

    cmp-long v1, v4, v11

    if-nez v1, :cond_83

    goto :goto_85

    :cond_83
    add-long/2addr v6, v4

    return-wide v6

    :cond_85
    :goto_85
    return-wide v11
.end method
