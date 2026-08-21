###### Class com.google.android.gms.internal.ads.zzlq (com.google.android.gms.internal.ads.zzlq)
.class public final Lcom/google/android/gms/internal/ads/zzlq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlt;
.implements Lcom/google/android/gms/internal/ads/zzlu;


# instance fields
.field private final uri:Landroid/net/Uri;

.field private final zzacs:Landroid/os/Handler;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzha;

.field private zzadd:Lcom/google/android/gms/internal/ads/zzgy;

.field private final zzazt:I

.field private final zzazu:Lcom/google/android/gms/internal/ads/zzlp;

.field private zzazv:Lcom/google/android/gms/internal/ads/zzlt;

.field private final zzazx:Ljava/lang/String;

.field private final zzbbb:Lcom/google/android/gms/internal/ads/zznd;

.field private final zzbbc:Lcom/google/android/gms/internal/ads/zzix;

.field private final zzbbd:I

.field private zzbbe:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zznd;Lcom/google/android/gms/internal/ads/zzix;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzlp;Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbb:Lcom/google/android/gms/internal/ads/zznd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbc:Lcom/google/android/gms/internal/ads/zzix;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazt:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzacs:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazu:Lcom/google/android/gms/internal/ads/zzlp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazx:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbd:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzha;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zznc;)Lcom/google/android/gms/internal/ads/zzls;
    .registers 14

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzli;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbb:Lcom/google/android/gms/internal/ads/zznd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznd;->zzib()Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbc:Lcom/google/android/gms/internal/ads/zzix;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzix;->zzgd()[Lcom/google/android/gms/internal/ads/zziw;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazt:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzacs:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazu:Lcom/google/android/gms/internal/ads/zzlp;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbd:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzne;[Lcom/google/android/gms/internal/ads/zziw;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zznc;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgc;ZLcom/google/android/gms/internal/ads/zzlt;)V
    .registers 6

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazv:Lcom/google/android/gms/internal/ads/zzlt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzmi;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzlt;->zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V
    .registers 8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object p2

    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbe:Z

    if-eqz p2, :cond_1a

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbbe:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazv:Lcom/google/android/gms/internal/ads/zzlt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzlt;->zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzli;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzli;->release()V

    return-void
.end method

.method public final zzhl()V
    .registers 1

    return-void
.end method

.method public final zzhm()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzazv:Lcom/google/android/gms/internal/ads/zzlt;

    return-void
.end method
