###### Class com.google.android.gms.measurement.internal.zzjh (com.google.android.gms.measurement.internal.zzjh)
.class public final Lcom/google/android/gms/measurement/internal/zzjh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/measurement/internal/zzjl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    return-void
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzjm;-><init>(Lcom/google/android/gms/measurement/internal/zzjh;Lcom/google/android/gms/measurement/internal/zzke;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzc()Lcom/google/android/gms/measurement/internal/zzew;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Intent;II)I
    .registers 9

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const/4 v1, 0x2

    if-nez p1, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v1

    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-virtual {p2, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-direct {p2, p0, p3, v0, p1}, Lcom/google/android/gms/measurement/internal/zzjk;-><init>(Lcom/google/android/gms/measurement/internal/zzjh;ILcom/google/android/gms/measurement/internal/zzew;Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzjh;->zza(Ljava/lang/Runnable;)V

    :cond_3c
    return v1
.end method

.method public final zza(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v1, "onBind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-object v0

    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    return-object p1

    :cond_29
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "onBind received unknown action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zza(ILcom/google/android/gms/measurement/internal/zzew;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjl;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Local AppMeasurementService processed last upload request. StartId"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "Completed wakeful intent."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-interface {p1, p3}, Lcom/google/android/gms/measurement/internal/zzjl;->zza(Landroid/content/Intent;)V

    :cond_2b
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/measurement/internal/zzew;Landroid/app/job/JobParameters;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "AppMeasurementJobService processed last upload request."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzjl;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjl;->zza(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final zza(Landroid/app/job/JobParameters;)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Local AppMeasurementJobService called. action"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjj;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzjj;-><init>(Lcom/google/android/gms/measurement/internal/zzjh;Lcom/google/android/gms/measurement/internal/zzew;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjh;->zza(Ljava/lang/Runnable;)V

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v0

    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzc(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->zzc()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjj (com.google.android.gms.measurement.internal.zzjj)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzjj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjh;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzew;

.field private final zzc:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjh;Lcom/google/android/gms/measurement/internal/zzew;Landroid/app/job/JobParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zzb:Lcom/google/android/gms/measurement/internal/zzew;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zzb:Lcom/google/android/gms/measurement/internal/zzew;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zzc:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjh;->zza(Lcom/google/android/gms/measurement/internal/zzew;Landroid/app/job/JobParameters;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjk (com.google.android.gms.measurement.internal.zzjk)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzjk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjh;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzew;

.field private final zzd:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjh;ILcom/google/android/gms/measurement/internal/zzew;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjh;->zza(ILcom/google/android/gms/measurement/internal/zzew;Landroid/content/Intent;)V

    return-void
.end method
