###### Class com.google.android.gms.internal.ads.zzavd (com.google.android.gms.internal.ads.zzavd)
.class public final Lcom/google/android/gms/internal/ads/zzavd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private handler:Landroid/os/Handler;

.field private state:I

.field private zzblz:Ljava/lang/String;

.field private zzbqy:Ljava/lang/String;

.field private zzdie:Ljava/lang/String;

.field private zzdlk:Ljava/lang/String;

.field private zzdtf:I

.field private zzdtg:Landroid/graphics/PointF;

.field private zzdth:Landroid/graphics/PointF;

.field private zzdti:Ljava/lang/Runnable;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzavg;-><init>(Lcom/google/android/gms/internal/ads/zzavd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdti:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtf:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawk;->zzwd()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawk;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzavd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdie:Ljava/lang/String;

    return-void
.end method

.method private static zza(Ljava/util/List;Ljava/lang/String;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private final zza(FFFF)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtg:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtf:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtg:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtf:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdth:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtf:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdth:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtf:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    const/4 p1, 0x1

    return p1

    :cond_42
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzbqy:Ljava/lang/String;

    return-void
.end method

.method public final showDialog()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkt()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavm;->zzvz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "Creative Preview (Enabled)"

    goto :goto_1f

    :cond_1d
    const-string v0, "Creative Preview"

    :goto_1f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkt()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavm;->zzwa()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "Troubleshooting (Enabled)"

    goto :goto_2e

    :cond_2c
    const-string v1, "Troubleshooting"

    :goto_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Ad Information"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzavd;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v3

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzavd;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzavd;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaur;->zzvt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v5, "Select a Debug Mode"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzavf;

    invoke-direct {v6, p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzavf;-><init>(Lcom/google/android/gms/internal/ads/zzavd;III)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaug;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DebugSignal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdlk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",AFMA Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzblz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Ad Unit ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzbqy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(IIILandroid/content/DialogInterface;I)V
    .registers 6

    if-ne p5, p1, :cond_9b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_e

    const-string p1, "Can not create dialog without Activity Context"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdie:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_71

    const-string p2, "\\+"

    const-string p3, "%20"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaul;->zzi(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_62

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n\n"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_71

    goto :goto_73

    :cond_71
    const-string p1, "No debug information"

    :goto_73
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p3, "Ad Information"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzavi;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzavi;-><init>(Lcom/google/android/gms/internal/ads/zzavd;Ljava/lang/String;)V

    const-string p1, "Share"

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzavh;->zzdtn:Landroid/content/DialogInterface$OnClickListener;

    const-string p3, "Close"

    invoke-virtual {p2, p3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_9b
    if-ne p5, p2, :cond_ad

    const-string p1, "Debug mode [Creative Preview] selected."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzavk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(Lcom/google/android/gms/internal/ads/zzavd;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_ad
    if-ne p5, p3, :cond_be

    const-string p1, "Debug mode [Troubleshooting] selected."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Lcom/google/android/gms/internal/ads/zzavd;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_be
    return-void
.end method

.method final synthetic zza(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "Share via"

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_21

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdtg:Landroid/graphics/PointF;

    return-void

    :cond_21
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    return-void

    :cond_27
    const/4 v6, 0x5

    const/4 v7, 0x1

    if-nez v4, :cond_56

    if-ne v0, v6, :cond_56

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdth:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdti:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcqa:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_56
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    if-ne v4, v6, :cond_a3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5e

    goto :goto_98

    :cond_5e
    if-ne v0, v4, :cond_97

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_62
    if-ge v0, v1, :cond_7e

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    invoke-direct {p0, v4, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzavd;->zza(FFFF)Z

    move-result v4

    if-nez v4, :cond_7b

    const/4 v2, 0x1

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_7e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzavd;->zza(FFFF)Z

    move-result p1

    if-nez p1, :cond_95

    goto :goto_98

    :cond_95
    move v7, v2

    goto :goto_98

    :cond_97
    const/4 v7, 0x0

    :goto_98
    if-eqz v7, :cond_a3

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdti:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a3
    return-void
.end method

.method public final zzej(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdie:Ljava/lang/String;

    return-void
.end method

.method public final zzek(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdlk:Ljava/lang/String;

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzblz:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzvv()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkt()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzbqy:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzblz:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzdlk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzavm;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzvw()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkt()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzlk:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzbqy:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzblz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzavm;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzvx()V
    .registers 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->state:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavd;->showDialog()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzavf (com.google.android.gms.internal.ads.zzavf)
.class final synthetic Lcom/google/android/gms/internal/ads/zzavf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

.field private final zzdtk:I

.field private final zzdtl:I

.field private final zzdtm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavd;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtk:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtl:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtm:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtk:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtl:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzavf;->zzdtm:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzavd;->zza(IIILandroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzavg (com.google.android.gms.internal.ads.zzavg)
.class final synthetic Lcom/google/android/gms/internal/ads/zzavg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdtj:Lcom/google/android/gms/internal/ads/zzavd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzvx()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzavi (com.google.android.gms.internal.ads.zzavi)
.class final synthetic Lcom/google/android/gms/internal/ads/zzavi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzdtj:Lcom/google/android/gms/internal/ads/zzavd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavd;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzcyz:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzavd;->zza(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzavj (com.google.android.gms.internal.ads.zzavj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzavj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdtj:Lcom/google/android/gms/internal/ads/zzavd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzvv()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzavk (com.google.android.gms.internal.ads.zzavk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzavk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdtj:Lcom/google/android/gms/internal/ads/zzavd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdtj:Lcom/google/android/gms/internal/ads/zzavd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzvw()V

    return-void
.end method
