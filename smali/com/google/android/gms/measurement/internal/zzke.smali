###### Class com.google.android.gms.measurement.internal.zzke (com.google.android.gms.measurement.internal.zzke)
.class public Lcom/google/android/gms/measurement/internal/zzke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzke$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzke;


# instance fields
.field private zzb:Lcom/google/android/gms/measurement/internal/zzfu;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzac;

.field private zze:Lcom/google/android/gms/measurement/internal/zzfd;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzka;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzn;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzki;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzid;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzga;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Ljava/nio/channels/FileLock;

.field private zzv:Ljava/nio/channels/FileChannel;

.field private zzw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkj;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzkj;Lcom/google/android/gms/measurement/internal/zzga;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkj;Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzk:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzy:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzki;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzh:Lcom/google/android/gms/measurement/internal/zzki;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfu;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzkj;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4d

    :cond_d
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_14
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_34

    const/4 v1, -0x1

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    return v0

    :cond_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_3c

    goto :goto_4c

    :catch_3c
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4c
    return v0

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzg;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 12

    const/4 v0, 0x1

    if-nez p2, :cond_1e

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzga;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    :goto_1c
    const/4 p3, 0x1

    goto :goto_3a

    :cond_1e
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkm;->zzk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    goto :goto_1c

    :cond_39
    const/4 p3, 0x0

    :goto_3a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_4c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_88
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_a2
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b8

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_b8

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    const/4 p3, 0x1

    :cond_b8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_d2
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_e2

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    const/4 p3, 0x1

    :cond_e2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_f6

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_f6
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_106

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    const/4 p3, 0x1

    :cond_106
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v2

    if-eq v1, v2, :cond_114

    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    const/4 p3, 0x1

    :cond_114
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12e

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_12e
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_13e

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    const/4 p3, 0x1

    :cond_13e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v2

    if-eq v1, v2, :cond_14c

    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    const/4 p3, 0x1

    :cond_14c
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v2

    if-eq v1, v2, :cond_15a

    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    const/4 p3, 0x1

    :cond_15a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_178

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_178

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    const/4 p3, 0x1

    :cond_178
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18c

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18c

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    const/4 p3, 0x1

    :cond_18c
    if-eqz p3, :cond_195

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_195
    return-object p2
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzke;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    if-nez v0, :cond_26

    const-class v0, Lcom/google/android/gms/measurement/internal/zzke;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    if-nez v1, :cond_21

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzke;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzkj;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    return-object p0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const-string v1, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "PackageManager is null, can not log app install information"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-object v4

    :cond_1d
    :try_start_1d
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_36

    :catch_22
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error retrieving installer package name. appId"

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v1

    :goto_36
    if-nez v3, :cond_3b

    const-string v3, "manual_install"

    goto :goto_45

    :cond_3b
    const-string v5, "com.android.vending"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    const-string v3, ""

    :cond_45
    :goto_45
    move-object v7, v3

    :try_start_46
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_68

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_63

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_63
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_67} :catch_cd

    goto :goto_6d

    :cond_68
    const/high16 v3, -0x80000000

    move-object v5, v1

    const/high16 v1, -0x80000000

    :goto_6d
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzm;

    int-to-long v8, v1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzx;->zze()J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v1

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_ac

    move-object/from16 v29, p10

    goto :goto_ae

    :cond_ac
    move-object/from16 v29, v4

    :goto_ae
    const-string v15, ""

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v5

    move-wide v5, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v14

    move/from16 v13, p4

    move/from16 v14, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, p7

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v24, p9

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    return-object v30

    :catch_cd
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Error retrieving newly installed package info. appId, appName"

    invoke-virtual {v3, v5, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_c6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_c6

    :cond_1b
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3b

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_3b
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v14

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v22

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v23

    const/16 v24, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v27

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v29

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v31

    if-eqz v31, :cond_9b

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v2, v15}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_9d

    :cond_9b
    const/16 v31, 0x0

    :goto_9d
    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v13

    move v13, v14

    const/4 v14, 0x0

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-object/from16 v28, v29

    move-object/from16 v29, v31

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    return-object v30

    :cond_c6
    :goto_c6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;ILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;)V
    .registers 8

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_42

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_2c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_42
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;JZ)V
    .registers 14
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-eqz p4, :cond_5

    const-string v0, "_se"

    goto :goto_7

    :cond_5
    const-string v0, "_lte"

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1a

    goto :goto_3f

    :cond_1a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_5a

    :cond_3f
    :goto_3f
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_5a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    const/4 v2, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8d

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzk;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    const/4 v2, 0x1

    :cond_8d
    if-nez v2, :cond_92

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzk;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_92
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_b7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    if-eqz p4, :cond_a4

    const-string p1, "session-scoped"

    goto :goto_a6

    :cond_a4
    const-string p1, "lifetime"

    :goto_a6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    iget-object p3, v8, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b7
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/String;

    move-result-object v0

    :try_start_73
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_b8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_b9

    :cond_b8
    move-object v6, v2

    :goto_b9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzr:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zzb(Ljava/lang/Runnable;)V
    :try_end_e3
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_e3} :catch_e4

    return-void

    :catch_e4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzkj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkj;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzkj;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzd:Lcom/google/android/gms/measurement/internal/zzac;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzg:Lcom/google/android/gms/measurement/internal/zzn;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzid;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzi:Lcom/google/android/gms/measurement/internal/zzid;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzka;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkb;->zzal()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzf:Lcom/google/android/gms/measurement/internal/zzka;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zze:Lcom/google/android/gms/measurement/internal/zzfd;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzp:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzq:I

    if-eq p1, v0, :cond_64

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzk:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    const/4 v0, 0x0

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_6e

    :cond_d
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_1a
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object p1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzcp:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result p1

    if-eqz p1, :cond_34

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p1, v4, :cond_34

    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_34
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_5c} :catch_5d

    :cond_5c
    return p1

    :catch_5d
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    move-object v0, v1

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzc()Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_3b

    :cond_37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzc()Ljava/lang/String;

    move-result-object v1

    :goto_3b
    if-eqz v1, :cond_48

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)V

    const/4 p1, 0x1

    return p1

    :cond_48
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .registers 63

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_9
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzke$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzke$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzkd;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzy:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_f30

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_2b} :catch_254
    .catchall {:try_start_23 .. :try_end_2b} :catchall_24f

    if-eqz v13, :cond_9c

    cmp-long v13, v5, v8

    if-eqz v13, :cond_4b

    :try_start_31
    new-array v13, v10, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_3f} :catch_45
    .catchall {:try_start_31 .. :try_end_3f} :catchall_40

    goto :goto_53

    :catchall_40
    move-exception v0

    move-object v2, v0

    move-object v8, v3

    goto/16 :goto_f2a

    :catch_45
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_48
    move-object v3, v0

    goto/16 :goto_258

    :cond_4b
    :try_start_4b
    new-array v13, v12, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_53} :catch_254
    .catchall {:try_start_4b .. :try_end_53} :catchall_24f

    :goto_53
    cmp-long v14, v5, v8

    if-eqz v14, :cond_5a

    :try_start_57
    const-string v14, "rowid <= ? and "
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_59} :catch_45
    .catchall {:try_start_57 .. :try_end_59} :catchall_40

    goto :goto_5c

    :cond_5a
    :try_start_5a
    const-string v14, ""

    :goto_5c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_7c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_7c} :catch_254
    .catchall {:try_start_5a .. :try_end_7c} :catchall_24f

    :try_start_7c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_80} :catch_24a
    .catchall {:try_start_7c .. :try_end_80} :catchall_40

    if-nez v7, :cond_89

    if-eqz v3, :cond_26d

    :goto_84
    :try_start_84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_f30

    goto/16 :goto_26d

    :cond_89
    :try_start_89
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_8d} :catch_24a
    .catchall {:try_start_89 .. :try_end_8d} :catchall_40

    :try_start_8d
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8d .. :try_end_94} :catch_99
    .catchall {:try_start_8d .. :try_end_94} :catchall_40

    move-object/from16 v22, v3

    move-object v3, v7

    move-object v7, v13

    goto :goto_ee

    :catch_99
    move-exception v0

    move-object v8, v3

    goto :goto_48

    :cond_9c
    cmp-long v3, v5, v8

    if-eqz v3, :cond_ac

    :try_start_a0
    new-array v3, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v12

    goto :goto_b1

    :cond_ac
    new-array v3, v12, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    :goto_b1
    cmp-long v7, v5, v8

    if-eqz v7, :cond_b8

    const-string v7, " and rowid <= ?"

    goto :goto_ba

    :cond_b8
    const-string v7, ""

    :goto_ba
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_da} :catch_254
    .catchall {:try_start_a0 .. :try_end_da} :catchall_24f

    :try_start_da
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_e3

    if-eqz v3, :cond_26d

    goto :goto_84

    :cond_e3
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_da .. :try_end_ea} :catch_24a
    .catchall {:try_start_da .. :try_end_ea} :catchall_40

    move-object/from16 v22, v3

    move-object v7, v13

    const/4 v3, 0x0

    :goto_ee
    :try_start_ee
    const-string v14, "raw_events_metadata"

    new-array v13, v12, [Ljava/lang/String;

    const-string v16, "metadata"

    aput-object v16, v13, v11

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v3, v8, v11

    aput-object v7, v8, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "2"

    move-object v9, v13

    move-object v13, v15

    move-object/from16 v23, v15

    move-object v15, v9

    move-object/from16 v17, v8

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_111
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_111} :catch_244
    .catchall {:try_start_ee .. :try_end_111} :catchall_23e

    :try_start_111
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_12f

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_128
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_111 .. :try_end_128} :catch_23a
    .catchall {:try_start_111 .. :try_end_128} :catchall_f28

    if-eqz v8, :cond_26d

    :goto_12a
    :try_start_12a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_f30

    goto/16 :goto_26d

    :cond_12f
    :try_start_12f
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_133
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12f .. :try_end_133} :catch_23a
    .catchall {:try_start_12f .. :try_end_133} :catchall_f28

    :try_start_133
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzgn;[B)Lcom/google/android/gms/internal/measurement/zzgn;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzg;
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_145} :catch_223
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_133 .. :try_end_145} :catch_23a
    .catchall {:try_start_133 .. :try_end_145} :catchall_f28

    :try_start_145
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_15c

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v13

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg;)V

    const-wide/16 v13, -0x1

    cmp-long v9, v5, v13

    if-eqz v9, :cond_17c

    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    aput-object v3, v14, v11

    aput-object v7, v14, v12

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    goto :goto_188

    :cond_17c
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    new-array v6, v10, [Ljava/lang/String;

    aput-object v3, v6, v11

    aput-object v7, v6, v12

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_188
    const-string v14, "raw_events"

    const/4 v5, 0x4

    new-array v15, v5, [Ljava/lang/String;

    const-string v5, "rowid"

    aput-object v5, v15, v11

    const-string v5, "name"

    aput-object v5, v15, v12

    const-string v5, "timestamp"

    aput-object v5, v15, v10

    const-string v5, "data"

    const/4 v6, 0x3

    aput-object v5, v15, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const/16 v21, 0x0

    move-object/from16 v13, v23

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_145 .. :try_end_1ac} :catch_23a
    .catchall {:try_start_145 .. :try_end_1ac} :catchall_f28

    :try_start_1ac
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1ca

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1c3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ac .. :try_end_1c3} :catch_21e
    .catchall {:try_start_1ac .. :try_end_1c3} :catchall_219

    if-eqz v5, :cond_26d

    :goto_1c5
    :try_start_1c5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1c8
    .catchall {:try_start_1c5 .. :try_end_1c8} :catchall_f30

    goto/16 :goto_26d

    :cond_1ca
    :try_start_1ca
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ca .. :try_end_1d3} :catch_21e
    .catchall {:try_start_1ca .. :try_end_1d3} :catchall_219

    :try_start_1d3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzgn;[B)Lcom/google/android/gms/internal/measurement/zzgn;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1dd} :catch_1fd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d3 .. :try_end_1dd} :catch_21e
    .catchall {:try_start_1d3 .. :try_end_1dd} :catchall_219

    :try_start_1dd
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v9

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-interface {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zza(JLcom/google/android/gms/internal/measurement/zzbr$zzc;)Z

    move-result v6

    if-nez v6, :cond_210

    if-eqz v5, :cond_26d

    goto :goto_1c5

    :catch_1fd
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_210
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_214
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1dd .. :try_end_214} :catch_21e
    .catchall {:try_start_1dd .. :try_end_214} :catchall_219

    if-nez v6, :cond_1ca

    if-eqz v5, :cond_26d

    goto :goto_1c5

    :catchall_219
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    goto/16 :goto_f2a

    :catch_21e
    move-exception v0

    move-object v7, v3

    move-object v8, v5

    goto/16 :goto_48

    :catch_223
    move-exception v0

    move-object v5, v0

    :try_start_225
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_236
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_225 .. :try_end_236} :catch_23a
    .catchall {:try_start_225 .. :try_end_236} :catchall_f28

    if-eqz v8, :cond_26d

    goto/16 :goto_12a

    :catch_23a
    move-exception v0

    move-object v7, v3

    goto/16 :goto_48

    :catchall_23e
    move-exception v0

    move-object v2, v0

    move-object/from16 v8, v22

    goto/16 :goto_f2a

    :catch_244
    move-exception v0

    move-object v7, v3

    move-object/from16 v8, v22

    goto/16 :goto_48

    :catch_24a
    move-exception v0

    move-object v8, v3

    const/4 v7, 0x0

    goto/16 :goto_48

    :catchall_24f
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    goto/16 :goto_f2a

    :catch_254
    move-exception v0

    move-object v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_258
    :try_start_258
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_269
    .catchall {:try_start_258 .. :try_end_269} :catchall_f28

    if-eqz v8, :cond_26d

    goto/16 :goto_12a

    :cond_26d
    :goto_26d
    :try_start_26d
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    if-eqz v3, :cond_27c

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27a

    goto :goto_27c

    :cond_27a
    const/4 v3, 0x0

    goto :goto_27d

    :cond_27c
    :goto_27c
    const/4 v3, 0x1

    :goto_27d
    if-nez v3, :cond_f18

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzap;->zzaz:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_2a7
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_2ad
    .catchall {:try_start_26d .. :try_end_2ad} :catchall_f30

    const-string v10, "_e"

    const-string v12, "_et"

    move-wide/from16 v23, v13

    if-ge v8, v7, :cond_80c

    :try_start_2b5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    move/from16 v21, v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_2d7
    .catchall {:try_start_2b5 .. :try_end_2d7} :catchall_f30

    const-string v13, "_err"

    if-eqz v9, :cond_35c

    :try_start_2db
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Dropping blacklisted raw event. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v14

    move/from16 v22, v15

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v10, v12, v14}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_327

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_325

    goto :goto_327

    :cond_325
    const/4 v9, 0x0

    goto :goto_328

    :cond_327
    :goto_327
    const/4 v9, 0x1

    :goto_328
    if-nez v9, :cond_34d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34d

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v25

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0xb

    const-string v28, "_ev"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_34d
    move/from16 v28, v4

    move v10, v8

    move/from16 v9, v21

    move/from16 v15, v22

    move-wide/from16 v13, v23

    const/4 v4, -0x1

    move-object v8, v3

    move v3, v11

    const/4 v11, 0x3

    goto/16 :goto_801

    :cond_35c
    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v9

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_370
    .catchall {:try_start_2db .. :try_end_370} :catchall_f30

    const-string v14, "_c"

    if-nez v9, :cond_3cc

    :try_start_374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v27, v8

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v8

    move/from16 v28, v4

    const v4, 0x171c4

    if-eq v8, v4, :cond_3aa

    const v4, 0x17331

    if-eq v8, v4, :cond_3a0

    const v4, 0x17333

    if-eq v8, v4, :cond_396

    goto :goto_3b4

    :cond_396
    const-string v4, "_ui"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b4

    const/4 v4, 0x1

    goto :goto_3b5

    :cond_3a0
    const-string v4, "_ug"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b4

    const/4 v4, 0x2

    goto :goto_3b5

    :cond_3aa
    const-string v4, "_in"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b4

    const/4 v4, 0x0

    goto :goto_3b5

    :cond_3b4
    :goto_3b4
    const/4 v4, -0x1

    :goto_3b5
    if-eqz v4, :cond_3bf

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3bf

    const/4 v8, 0x2

    if-eq v4, v8, :cond_3bf

    const/4 v4, 0x0

    goto :goto_3c0

    :cond_3bf
    const/4 v4, 0x1

    :goto_3c0
    if-eqz v4, :cond_3c3

    goto :goto_3d0

    :cond_3c3
    move-object v8, v3

    move-object/from16 v30, v6

    move/from16 v29, v11

    move-object/from16 v31, v12

    goto/16 :goto_5a6

    :cond_3cc
    move/from16 v28, v4

    move/from16 v27, v8

    :goto_3d0
    move/from16 v29, v11

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_3d5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb()I

    move-result v11
    :try_end_3d9
    .catchall {:try_start_374 .. :try_end_3d9} :catchall_f30

    move-object/from16 v30, v6

    const-string v6, "_r"

    if-ge v4, v11, :cond_43f

    :try_start_3df
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40c

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-object/from16 v31, v12

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zze;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    const/4 v8, 0x1

    goto :goto_438

    :cond_40c
    move-object/from16 v31, v12

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_438

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zze;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    const/4 v15, 0x1

    :cond_438
    :goto_438
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v30

    move-object/from16 v12, v31

    goto :goto_3d5

    :cond_43f
    move-object/from16 v31, v12

    if-nez v8, :cond_473

    if-eqz v9, :cond_473

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v8, "Marking event as conversion"

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v4

    const-wide/16 v11, 0x1

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    :cond_473
    if-nez v15, :cond_4a3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v8, "Marking event as real-time"

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v4

    const-wide/16 v11, 0x1

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    :cond_4a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzx()J

    move-result-wide v33

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    invoke-virtual/range {v32 .. v40}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzab;->zze:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v4

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Ljava/lang/String;)I

    move-result v4

    move-object v8, v3

    int-to-long v3, v4

    cmp-long v15, v11, v3

    if-lez v15, :cond_4db

    invoke-static {v7, v6}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;)V

    goto :goto_4dd

    :cond_4db
    const/16 v21, 0x1

    :goto_4dd
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a6

    if-eqz v9, :cond_5a6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzx()J

    move-result-wide v33

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v32 .. v40}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzab;->zzc:J

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zzn:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)I

    move-result v6

    int-to-long v11, v6

    cmp-long v6, v3, v11

    if-lez v6, :cond_5a6

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Too many conversions. Not logging as conversion. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, -0x1

    :goto_53b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb()I

    move-result v12

    if-ge v3, v12, :cond_565

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_557

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move v11, v3

    goto :goto_562

    :cond_557
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_562

    const/4 v4, 0x1

    :cond_562
    :goto_562
    add-int/lit8 v3, v3, 0x1

    goto :goto_53b

    :cond_565
    if-eqz v4, :cond_56d

    if-eqz v6, :cond_56d

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    goto :goto_5a6

    :cond_56d
    if-eqz v6, :cond_58d

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v3

    const-wide/16 v12, 0xa

    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zze$zza;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v7, v11, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zze;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    goto :goto_5a6

    :cond_58d
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Did not find conversion parameter. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5a6
    :goto_5a6
    if-eqz v9, :cond_66d

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_5b4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5e4

    const-string v11, "value"

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5ce

    move v6, v4

    goto :goto_5e1

    :cond_5ce
    const-string v11, "currency"

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5e1

    move v9, v4

    :cond_5e1
    :goto_5e1
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b4

    :cond_5e4
    const/4 v4, -0x1

    if-eq v6, v4, :cond_66e

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzd()Z

    move-result v4

    if-nez v4, :cond_61c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzf()Z

    move-result v4

    if-nez v4, :cond_61c

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzk()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Value must be specified with a numeric type."

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-static {v7, v14}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;)V

    const/16 v3, 0x12

    const-string v4, "value"

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;ILjava/lang/String;)V

    goto :goto_66d

    :cond_61c
    const/4 v4, -0x1

    if-ne v9, v4, :cond_622

    const/4 v3, 0x1

    const/4 v11, 0x3

    goto :goto_64e

    :cond_622
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x3

    if-eq v9, v11, :cond_635

    :goto_633
    const/4 v3, 0x1

    goto :goto_64e

    :cond_635
    const/4 v9, 0x0

    :goto_636
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_64d

    invoke-virtual {v3, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-nez v13, :cond_647

    goto :goto_633

    :cond_647
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v9, v12

    goto :goto_636

    :cond_64d
    const/4 v3, 0x0

    :goto_64e
    if-eqz v3, :cond_66f

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzk()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-static {v7, v14}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;)V

    const/16 v3, 0x13

    const-string v6, "currency"

    invoke-static {v7, v3, v6}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;ILjava/lang/String;)V

    goto :goto_66f

    :cond_66d
    :goto_66d
    const/4 v4, -0x1

    :cond_66e
    const/4 v11, 0x3

    :cond_66f
    :goto_66f
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_784

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v6, "_fr"

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v3

    if-nez v3, :cond_784

    if-eqz v17, :cond_6d0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    cmp-long v3, v12, v14

    if-gtz v3, :cond_6d0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-direct {v1, v7, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Z

    move-result v6

    if-eqz v6, :cond_6d0

    invoke-virtual {v8, v5, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move/from16 v9, v29

    move-object/from16 v6, v31

    :goto_6ca
    const/16 v17, 0x0

    :goto_6cc
    const/16 v30, 0x0

    goto/16 :goto_788

    :cond_6d0
    move-object/from16 v30, v7

    move/from16 v9, v22

    :goto_6d4
    move-object/from16 v6, v31

    goto/16 :goto_788

    :cond_6d8
    const-string v3, "_vs"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move-object/from16 v6, v31

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v3

    if-nez v3, :cond_727

    if-eqz v30, :cond_720

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    cmp-long v3, v12, v14

    if-gtz v3, :cond_720

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-direct {v1, v3, v7}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Z

    move-result v9

    if-eqz v9, :cond_720

    move/from16 v9, v29

    invoke-virtual {v8, v9, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_6ca

    :cond_720
    move/from16 v9, v29

    move-object/from16 v17, v7

    move/from16 v5, v22

    goto :goto_788

    :cond_727
    move/from16 v9, v29

    goto :goto_788

    :cond_72a
    move/from16 v9, v29

    move-object/from16 v6, v31

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzap;->zzcg:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_788

    const-string v3, "_ab"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_788

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v3

    if-nez v3, :cond_788

    if-eqz v30, :cond_788

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0xfa0

    cmp-long v3, v12, v14

    if-gtz v3, :cond_788

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-direct {v1, v3, v7}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)V

    invoke-virtual {v8, v9, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto/16 :goto_6cc

    :cond_784
    move/from16 v9, v29

    goto/16 :goto_6d4

    :cond_788
    :goto_788
    if-nez v28, :cond_7e5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzb()I

    move-result v3

    if-nez v3, :cond_7b4

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    :goto_7b0
    invoke-virtual {v3, v6, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7e5

    :cond_7b4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_7de

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_7b0

    :cond_7de
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v12, v23, v12

    goto :goto_7e7

    :cond_7e5
    :goto_7e5
    move-wide/from16 v12, v23

    :goto_7e7
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move/from16 v10, v27

    invoke-interface {v3, v10, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v22, 0x1

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move v3, v9

    move-wide v13, v12

    move/from16 v9, v21

    move-object/from16 v6, v30

    :goto_801
    add-int/lit8 v7, v10, 0x1

    move v11, v3

    move-object v3, v8

    move/from16 v4, v28

    const/4 v10, 0x2

    const/4 v12, 0x1

    move v8, v7

    goto/16 :goto_2a7

    :cond_80c
    move-object v8, v3

    move/from16 v28, v4

    move/from16 v21, v9

    move-object v6, v12

    move/from16 v22, v15

    if-eqz v28, :cond_86b

    move/from16 v4, v22

    move-wide/from16 v13, v23

    const/4 v3, 0x0

    :goto_81b
    if-ge v3, v4, :cond_86d

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v7, "_fr"

    invoke-static {v5, v7}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v7

    if-eqz v7, :cond_83e

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_868

    :cond_83e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v5

    if-eqz v5, :cond_868

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzd()Z

    move-result v7

    if-eqz v7, :cond_856

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_857

    :cond_856
    const/4 v5, 0x0

    :goto_857
    if-eqz v5, :cond_868

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v17, 0x0

    cmp-long v7, v11, v17

    if-lez v7, :cond_868

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v13, v11

    :cond_868
    :goto_868
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_81b

    :cond_86b
    move-wide/from16 v13, v23

    :cond_86d
    const/4 v3, 0x0

    invoke-direct {v1, v8, v13, v14, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;JZ)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzbn:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3
    :try_end_881
    .catchall {:try_start_3df .. :try_end_881} :catchall_f30

    const-string v4, "_se"

    if-eqz v3, :cond_902

    :try_start_885
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_88d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v6, "_s"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88d

    const/4 v3, 0x1

    goto :goto_8a8

    :cond_8a7
    const/4 v3, 0x0

    :goto_8a8
    if-eqz v3, :cond_8b5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v3

    if-eqz v3, :cond_8fd

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzap;->zzbo:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_8fd

    const-string v3, "_sid"

    invoke-static {v8, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8d7

    const/4 v3, 0x1

    goto :goto_8d8

    :cond_8d7
    const/4 v3, 0x0

    :goto_8d8
    if-nez v3, :cond_8fd

    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_91f

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_91f

    :cond_8fd
    const/4 v3, 0x1

    invoke-direct {v1, v8, v13, v14, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;JZ)V

    goto :goto_91f

    :cond_902
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzap;->zzbq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_91f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91f
    :goto_91f
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_9c4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Checking account type status for ad personalization signals"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzj()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-eqz v4, :cond_9c4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v4

    if-eqz v4, :cond_9c4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzah;->zzj()Z

    move-result v4

    if-eqz v4, :cond_9c4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Turning off ad personalization due to account type"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v4

    const-string v5, "_npa"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzah;->zzh()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    const/4 v4, 0x0

    :goto_9a0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze()I

    move-result v5

    if-ge v4, v5, :cond_9be

    const-string v5, "_npa"

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9bb

    invoke-virtual {v8, v4, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzk;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    const/4 v4, 0x1

    goto :goto_9bf

    :cond_9bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a0

    :cond_9be
    const/4 v4, 0x0

    :goto_9bf
    if-nez v4, :cond_9c4

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzk;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_9c4
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzcb:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_9d9

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;)V

    :cond_9d9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf()J

    move-result-wide v9

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzf()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v4, v6, v5, v9}, Lcom/google/android/gms/measurement/internal/zzn;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;)Z

    move-result v3
    :try_end_a0f
    .catchall {:try_start_885 .. :try_end_a0f} :catchall_f30

    if-eqz v3, :cond_d71

    :try_start_a11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkm;->zzh()Ljava/security/SecureRandom;

    move-result-object v5

    const/4 v6, 0x0

    :goto_a26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb()I

    move-result v7

    if-ge v6, v7, :cond_d37

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_a40
    .catchall {:try_start_a11 .. :try_end_a40} :catchall_d6c

    if-eqz v9, :cond_ab7

    :try_start_a42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v10, "_en"

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzaj;

    if-nez v10, :cond_a6e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6e
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_aad

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v9, v11, v13

    if-lez v9, :cond_a88

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v9, "_sr"

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:Ljava/lang/Long;

    invoke-static {v7, v9, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a88
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzaj;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_aa2

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzaj;->zzk:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_aa2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v9, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_aa2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_aad
    :goto_aad
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;
    :try_end_ab0
    .catchall {:try_start_a42 .. :try_end_ab0} :catchall_f30

    move-object/from16 v22, v2

    move-object/from16 p1, v5

    move v1, v6

    goto/16 :goto_d2d

    :cond_ab7
    :try_start_ab7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzf(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(JJ)J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v14, "_dbg"

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_ae6
    .catchall {:try_start_ab7 .. :try_end_ae6} :catchall_d6c

    if-nez v17, :cond_b42

    if-nez v15, :cond_aeb

    goto :goto_b42

    :cond_aeb
    :try_start_aeb
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zza()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_af3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-object/from16 p1, v13

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b3f

    instance-of v13, v15, Ljava/lang/Long;

    if-eqz v13, :cond_b1d

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b3d

    :cond_b1d
    instance-of v13, v15, Ljava/lang/String;

    if-eqz v13, :cond_b2b

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b3d

    :cond_b2b
    instance-of v13, v15, Ljava/lang/Double;

    if-eqz v13, :cond_b42

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzg()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b42

    :cond_b3d
    const/4 v13, 0x1

    goto :goto_b43

    :cond_b3f
    move-object/from16 v13, p1

    goto :goto_af3

    :cond_b42
    :goto_b42
    const/4 v13, 0x0

    :goto_b43
    if-nez v13, :cond_b58

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_b59

    :cond_b58
    const/4 v13, 0x1

    :goto_b59
    if-gtz v13, :cond_b7f

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Sample rate must be positive. event, rate"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b7d
    .catchall {:try_start_aeb .. :try_end_b7d} :catchall_f30

    goto/16 :goto_aad

    :cond_b7f
    :try_start_b7f
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzaj;
    :try_end_b89
    .catchall {:try_start_b7f .. :try_end_b89} :catchall_d6c

    if-nez v14, :cond_c19

    :try_start_b8b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v17, v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v14

    if-nez v14, :cond_c1b

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzap;->zzbm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v9, v10, v14}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v9

    if-eqz v9, :cond_bf4

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v29

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v27, v9

    invoke-direct/range {v27 .. v43}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_c17

    :cond_bf4
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v45

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v46

    const-wide/16 v47, 0x1

    const-wide/16 v49, 0x1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v51

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v44, v9

    invoke-direct/range {v44 .. v58}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_c17
    .catchall {:try_start_b8b .. :try_end_c17} :catchall_f30

    :goto_c17
    move-object v14, v9

    goto :goto_c1b

    :cond_c19
    move-wide/from16 v17, v9

    :cond_c1b
    :goto_c1b
    :try_start_c1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v10, "_eid"

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_c32

    const/4 v10, 0x1

    goto :goto_c33

    :cond_c32
    const/4 v10, 0x0

    :goto_c33
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_c37
    .catchall {:try_start_c1b .. :try_end_c37} :catchall_d6c

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c65

    :try_start_c3a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_aad

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_c57

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:Ljava/lang/Long;

    if-nez v9, :cond_c57

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzaj;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_aad

    :cond_c57
    const/4 v9, 0x0

    invoke-virtual {v14, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c63
    .catchall {:try_start_c3a .. :try_end_c63} :catchall_f30

    goto/16 :goto_aad

    :cond_c65
    :try_start_c65
    invoke-virtual {v5, v13}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15
    :try_end_c69
    .catchall {:try_start_c65 .. :try_end_c69} :catchall_d6c

    if-nez v15, :cond_ca8

    :try_start_c6b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v9, "_sr"

    move-object/from16 p1, v5

    move v15, v6

    int-to-long v5, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c95

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v14

    :cond_c95
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-virtual {v14, v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca4
    .catchall {:try_start_c6b .. :try_end_ca4} :catchall_f30

    move-object/from16 v22, v2

    goto/16 :goto_d29

    :cond_ca8
    move-object/from16 p1, v5

    move v15, v6

    :try_start_cab
    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaj;->zzh:Ljava/lang/Long;
    :try_end_cad
    .catchall {:try_start_cab .. :try_end_cad} :catchall_d6c

    if-eqz v5, :cond_cb8

    :try_start_caf
    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaj;->zzh:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_cb5
    .catchall {:try_start_caf .. :try_end_cb5} :catchall_f30

    move-object/from16 v22, v2

    goto :goto_cc9

    :cond_cb8
    :try_start_cb8
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzg()J

    move-result-wide v5

    move-object/from16 v22, v2

    move-wide/from16 v1, v17

    invoke-static {v5, v6, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(JJ)J

    move-result-wide v5

    :goto_cc9
    cmp-long v1, v5, v11

    if-eqz v1, :cond_d17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v1, "_efs"

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v1, "_sr"

    int-to-long v5, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d07

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v14

    :cond_d07
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d29

    :cond_d17
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d29

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v14, v9, v2, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d29
    :goto_d29
    move v1, v15

    invoke-virtual {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :goto_d2d
    add-int/lit8 v6, v1, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v2, v22

    goto/16 :goto_a26

    :cond_d37
    move-object/from16 v22, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_d4a

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_d4a
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzaj;)V
    :try_end_d6b
    .catchall {:try_start_cb8 .. :try_end_d6b} :catchall_d6c

    goto :goto_d52

    :catchall_d6c
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_f31

    :cond_d71
    move-object/from16 v22, v2

    :cond_d73
    move-object/from16 v1, p0

    :try_start_d75
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzcb:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-nez v2, :cond_d8a

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;)V

    :cond_d8a
    move-object/from16 v2, v22

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-nez v4, :cond_db6

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e11

    :cond_db6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb()I

    move-result v5

    if-lez v5, :cond_e11

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_dca

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_dcd

    :cond_dca
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :goto_dcd
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_dd8

    goto :goto_dd9

    :cond_dd8
    move-wide v5, v9

    :goto_dd9
    cmp-long v7, v5, v11

    if-eqz v7, :cond_de1

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_de4

    :cond_de1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :goto_de4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e07

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_e0a

    :cond_e07
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :goto_e0a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_e11
    :goto_e11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb()I

    move-result v4

    if-lez v4, :cond_e77

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    move-result-object v4

    if-eqz v4, :cond_e3b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v5

    if-nez v5, :cond_e33

    goto :goto_e3b

    :cond_e33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_e66

    :cond_e3b
    :goto_e3b
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzam()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e4d

    const-wide/16 v4, -0x1

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_e66

    :cond_e4d
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_e66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    move/from16 v9, v21

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg;Z)Z

    :cond_e77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzb:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_e8e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_eab

    if-eqz v6, :cond_e9b

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e9b
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e8e

    :cond_eab
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_ede

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v6, "Deleted fewer rows from raw events table than expected"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ede
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_ee6
    .catchall {:try_start_d75 .. :try_end_ee6} :catchall_f30

    :try_start_ee6
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ef4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee6 .. :try_end_ef4} :catch_ef5
    .catchall {:try_start_ee6 .. :try_end_ef4} :catchall_f30

    goto :goto_f08

    :catch_ef5
    move-exception v0

    move-object v4, v0

    :try_start_ef7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_f08
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_f0f
    .catchall {:try_start_ef7 .. :try_end_f0f} :catchall_f30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    const/4 v2, 0x1

    return v2

    :cond_f18
    :try_start_f18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_f1f
    .catchall {:try_start_f18 .. :try_end_f1f} :catchall_f30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    const/4 v2, 0x0

    return v2

    :catchall_f28
    move-exception v0

    move-object v2, v0

    :goto_f2a
    if-eqz v8, :cond_f2f

    :try_start_f2c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_f2f
    throw v2
    :try_end_f30
    .catchall {:try_start_f2c .. :try_end_f30} :catchall_f30

    :catchall_f30
    move-exception v0

    :goto_f31
    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    goto :goto_f3b

    :goto_f3a
    throw v2

    :goto_f3b
    goto :goto_f3a
.end method

.method private final zzaa()V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzr:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzs:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzt:Z

    if-eqz v0, :cond_10

    goto :goto_3e

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzo:Ljava/util/List;

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzs:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzt:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzab()Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzca:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v1

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_3d
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzv:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzv:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzu:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v1

    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_73} :catch_90
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_73} :catch_82
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3d .. :try_end_73} :catch_74

    goto :goto_a0

    :catch_74
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    goto :goto_9d

    :catch_82
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_9d

    :catch_90
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_9d
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzac()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzl:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 10

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_58

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_57} :catch_5d

    return-object p1

    :cond_58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;)V
    .registers 12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zzd()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2d

    goto :goto_65

    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_4d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zze()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_65
    :goto_65
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_s"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v7

    if-nez v7, :cond_27

    return-void

    :cond_27
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v7, :cond_2f

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_db

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    goto :goto_75

    :cond_73
    const/4 v3, 0x0

    goto :goto_76

    :cond_75
    :goto_75
    const/4 v3, 0x1

    :goto_76
    if-nez v3, :cond_91

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    const/16 v9, 0xb

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "_ev"

    move-object v8, v15

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_91
    if-eqz v3, :cond_da

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_da

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzz:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_da

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_da
    return-void

    :cond_db
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzew;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_101

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Lcom/google/android/gms/measurement/internal/zzan;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Logging event"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_108
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v7, "_iap"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_113
    .catchall {:try_start_108 .. :try_end_113} :catchall_91e

    const-string v8, "ecommerce_purchase"

    if-nez v7, :cond_125

    :try_start_117
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_120

    goto :goto_125

    :cond_120
    move-wide/from16 v23, v5

    const/4 v6, 0x0

    goto/16 :goto_2b8

    :cond_125
    :goto_125
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v9, "currency"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_133
    .catchall {:try_start_117 .. :try_end_133} :catchall_91e

    const-string v9, "value"

    if-eqz v8, :cond_18c

    :try_start_137
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v8, v16, v20

    if-nez v8, :cond_15e

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_158
    .catchall {:try_start_137 .. :try_end_158} :catchall_91e

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v8, v18

    :cond_15e
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v18, v16, v8

    if-gtz v18, :cond_16f

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v18, v16, v8

    if-ltz v18, :cond_16f

    :try_start_16a
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    goto :goto_196

    :cond_16f
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2a7

    :cond_18c
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_196
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a3

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "[A-Z]{3}"

    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2a3

    const-string v10, "_ltv_"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1bb

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1c0

    :cond_1bb
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c0
    move-object v10, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v7

    if-eqz v7, :cond_201

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/Long;

    if-nez v11, :cond_1d2

    goto :goto_201

    :cond_1d2
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    new-instance v17, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    add-long v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v7, v17

    move-object v8, v15

    move-object v9, v11

    const/4 v11, 0x2

    move-wide/from16 v23, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide/from16 v11, v21

    move-object/from16 v13, v19

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v5, v17

    goto :goto_268

    :cond_201
    :goto_201
    move-wide/from16 v23, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zzae:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v11, v15, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)I

    move-result v11

    sub-int/2addr v11, v5

    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V
    :try_end_21f
    .catchall {:try_start_16a .. :try_end_21f} :catchall_91e

    :try_start_21f
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v15, v5, v6

    const/16 v16, 0x1

    aput-object v15, v5, v16

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v5, v16

    invoke-virtual {v12, v13, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_239
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21f .. :try_end_239} :catch_23a
    .catchall {:try_start_21f .. :try_end_239} :catchall_91e

    goto :goto_24d

    :catch_23a
    move-exception v0

    move-object v5, v0

    :try_start_23c
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_24d
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v7, v5

    move-object v8, v15

    move-object v9, v11

    move-wide v11, v12

    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    move-result v7

    if-nez v7, :cond_2a6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v10

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2a6

    :cond_2a3
    move-wide/from16 v23, v5

    const/4 v6, 0x0

    :cond_2a6
    :goto_2a6
    const/4 v11, 0x1

    :goto_2a7
    if-nez v11, :cond_2b8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_2b0
    .catchall {:try_start_23c .. :try_end_2b0} :catchall_91e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :cond_2b8
    :goto_2b8
    :try_start_2b8
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;)Z

    move-result v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzx()J

    move-result-wide v8

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v12, v5

    move/from16 v14, v16

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzb:J

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzk:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    cmp-long v17, v8, v14

    if-lez v17, :cond_324

    rem-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-nez v2, :cond_315

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzb:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_31c
    .catchall {:try_start_2b8 .. :try_end_31c} :catchall_91e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :cond_324
    if-eqz v5, :cond_37c

    :try_start_326
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzab;->zza:J

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzap;->zzm:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v12, v6

    sub-long/2addr v8, v12

    cmp-long v6, v8, v14

    if-lez v6, :cond_37c

    rem-long/2addr v8, v10

    const-wide/16 v3, 0x1

    cmp-long v5, v8, v3

    if-nez v5, :cond_35b

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lcom/google/android/gms/measurement/internal/zzab;->zza:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35b
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    const/16 v9, 0x10

    const-string v10, "_ev"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, v18

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_374
    .catchall {:try_start_326 .. :try_end_374} :catchall_91e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :cond_37c
    if-eqz v16, :cond_3ce

    :try_start_37e
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzd:J

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzap;->zzl:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)I

    move-result v6

    const v10, 0xf4240

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v12, 0x0

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v10, v6

    sub-long/2addr v8, v10

    cmp-long v6, v8, v14

    if-lez v6, :cond_3cf

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_3bf

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3bf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_3c6
    .catchall {:try_start_37e .. :try_end_3c6} :catchall_91e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :cond_3ce
    const/4 v12, 0x0

    :cond_3cf
    :try_start_3cf
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    const-string v8, "_o"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    move-object/from16 v13, v18

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzkm;->zzf(Ljava/lang/String;)Z

    move-result v7
    :try_end_3ee
    .catchall {:try_start_3cf .. :try_end_3ee} :catchall_91e

    const-string v11, "_r"

    if-eqz v7, :cond_410

    :try_start_3f2
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    const-string v8, "_dbg"

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v6, v8, v12}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v11, v8}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_410
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_416
    .catchall {:try_start_3f2 .. :try_end_416} :catchall_91e

    const-string v8, "_sno"

    if-eqz v7, :cond_447

    :try_start_41a
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzaq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v7

    if-eqz v7, :cond_447

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v7

    if-eqz v7, :cond_447

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_447

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v9

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_447
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_479

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v4

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzap;->zzau:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v4

    if-eqz v4, :cond_479

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v4

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzap;->zzaq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v4

    if-nez v4, :cond_479

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkl;

    const/4 v12, 0x0

    invoke-direct {v4, v8, v14, v15, v12}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_47a

    :cond_479
    const/4 v12, 0x0

    :goto_47a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v14

    if-lez v4, :cond_49d

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49d
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzak;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    const-wide/16 v19, 0x0

    move-object v7, v4

    move-object v2, v10

    move-object v10, v13

    move-object/from16 v26, v11

    move-object v11, v2

    move-object/from16 v16, v12

    move-object v2, v13

    const/16 v25, 0x0

    move-wide v12, v14

    move-object/from16 p1, v16

    move-wide/from16 v14, v19

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Lcom/google/android/gms/measurement/internal/zzga;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v6

    if-nez v6, :cond_530

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v10, v6, v8

    if-ltz v10, :cond_516

    if-eqz v5, :cond_516

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v5, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_50e
    .catchall {:try_start_41a .. :try_end_50e} :catchall_91e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :cond_516
    :try_start_516
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v5

    move-object v8, v2

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_53e

    :cond_530
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzaj;->zzf:J

    invoke-virtual {v4, v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzak;->zza(Lcom/google/android/gms/measurement/internal/zzga;J)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v4

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(J)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v5

    :goto_53e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzaj;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v2

    const-string v6, "android"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v2

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57d

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_57d
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_58a

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_58a
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_597

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_597
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    const-wide/32 v8, -0x80000000

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5a6

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_5a6
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b8

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_5b8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v6

    if-eqz v6, :cond_607

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-eqz v6, :cond_607

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5e5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_5e5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_635

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_635

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_635

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    :goto_603
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_635

    :cond_607
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zzbg:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-eqz v6, :cond_62a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_635

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_635

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    goto :goto_603

    :cond_62a
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_635

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    goto :goto_603

    :cond_635
    :goto_635
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_642

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_642
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzbd:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-eqz v6, :cond_664

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzki;->zzf()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_664

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_664
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_697

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_697

    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    if-eqz v7, :cond_6f9

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_6f9

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    goto :goto_6f9

    :cond_697
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzx()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6f9

    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    if-eqz v6, :cond_6f9

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6d9

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    const-string v7, "null secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "null"

    goto :goto_6f6

    :cond_6d9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6f6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    const-string v10, "empty secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f6
    :goto_6f6
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_6f9
    :goto_6f9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzx()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzaa()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzx()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzaa()V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzx()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzah;->zzf()J

    move-result-wide v10

    long-to-int v7, v10

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzx()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzah;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v6

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v6

    if-eqz v6, :cond_75d

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zza:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-eqz v6, :cond_75d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75d

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_75d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v6

    if-nez v6, :cond_7d0

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-direct {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzga;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkm;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v7

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(J)V

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_7d0
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7e1

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_7e1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f2

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_7f2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    :goto_7fd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_834

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v7

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v7

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v10

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;
    :try_end_831
    .catchall {:try_start_516 .. :try_end_831} :catchall_91e

    add-int/lit8 v6, v6, 0x1

    goto :goto_7fd

    :cond_834
    :try_start_834
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg;)J

    move-result-wide v2
    :try_end_844
    .catch Ljava/io/IOException; {:try_start_834 .. :try_end_844} :catch_8ac
    .catchall {:try_start_834 .. :try_end_844} :catchall_91e

    :try_start_844
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v7, :cond_8a2

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzam;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_852
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_86a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v11, v26

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_867

    goto :goto_8a3

    :cond_867
    move-object/from16 v26, v11

    goto :goto_852

    :cond_86a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v7

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzx()J

    move-result-wide v11

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v10

    if-eqz v7, :cond_8a2

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzab;->zze:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v7

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Ljava/lang/String;)I

    move-result v7

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_8a2

    goto :goto_8a3

    :cond_8a2
    const/4 v5, 0x0

    :goto_8a3
    invoke-virtual {v6, v4, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzak;JZ)Z

    move-result v2

    if-eqz v2, :cond_8c5

    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    goto :goto_8c5

    :catch_8ac
    move-exception v0

    move-object v3, v0

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v6, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8c5
    :goto_8c5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8f2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Event recorded"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Lcom/google/android/gms/measurement/internal/zzak;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8f2
    .catchall {:try_start_844 .. :try_end_8f2} :catchall_91e

    :cond_8f2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v23

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_91e
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    goto :goto_929

    :goto_928
    throw v2

    :goto_929
    goto :goto_928
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .registers 4

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zze(Lcom/google/android/gms/measurement/internal/zzm;)Z
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    return v1

    :cond_32
    :goto_32
    return v2

    :cond_33
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    return v1

    :cond_45
    :goto_45
    return v2
.end method

.method private final zzt()Lcom/google/android/gms/measurement/internal/zzfd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zze:Lcom/google/android/gms/measurement/internal/zzfd;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzv()Lcom/google/android/gms/measurement/internal/zzka;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzf:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzf:Lcom/google/android/gms/measurement/internal/zzka;

    return-object v0
.end method

.method private final zzw()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    return-void
.end method

.method private final zzx()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzaa()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzg:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3a

    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkm;->zzh()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzg:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_3a
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzy()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzy()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->d_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private final zzz()V
    .registers 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzac()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_62

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_60

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzv()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzka;->zzf()V

    return-void

    :cond_60
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    :cond_62
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzag()Z

    move-result v1

    if-eqz v1, :cond_24f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzy()Z

    move-result v1

    if-nez v1, :cond_72

    goto/16 :goto_24f

    :cond_72
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzaa:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzz()Z

    move-result v5

    if-nez v5, :cond_a4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzk()Z

    move-result v5

    if-eqz v5, :cond_a2

    goto :goto_a4

    :cond_a2
    const/4 v5, 0x0

    goto :goto_a5

    :cond_a4
    :goto_a4
    const/4 v5, 0x1

    :goto_a5
    if-eqz v5, :cond_c5

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzx;->zzv()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c2

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c2

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzv:Lcom/google/android/gms/measurement/internal/zzel;

    goto :goto_c7

    :cond_c2
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzu:Lcom/google/android/gms/measurement/internal/zzel;

    goto :goto_c7

    :cond_c5
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzt:Lcom/google/android/gms/measurement/internal/zzel;

    :goto_c7
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzac;->zzw()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzx()J

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_10c

    :cond_109
    move-wide v8, v3

    goto/16 :goto_182

    :cond_10c
    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_132

    cmp-long v5, v8, v3

    if-lez v5, :cond_132

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_140

    add-long/2addr v8, v12

    goto :goto_141

    :cond_140
    move-wide v8, v10

    :goto_141
    cmp-long v5, v1, v3

    if-eqz v5, :cond_182

    cmp-long v5, v1, v6

    if-ltz v5, :cond_182

    const/4 v5, 0x0

    :goto_14a
    const/16 v6, 0x14

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zzac:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_109

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zzab:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_17f

    goto :goto_182

    :cond_17f
    add-int/lit8 v5, v5, 0x1

    goto :goto_14a

    :cond_182
    :goto_182
    cmp-long v1, v8, v3

    if-nez v1, :cond_1a4

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzv()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzka;->zzf()V

    return-void

    :cond_1a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result v1

    if-nez v1, :cond_1cc

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zza()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzv()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzka;->zzf()V

    return-void

    :cond_1cc
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzff;->zze:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzr:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_1f8

    add-long/2addr v1, v5

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_1f8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_234

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzw:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_234
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzv()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzka;->zza(J)V

    return-void

    :cond_24f
    :goto_24f
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzv()Lcom/google/android/gms/measurement/internal/zzka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzka;->zzf()V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    const/4 p4, 0x0

    if-nez p3, :cond_b

    :try_start_9
    new-array p3, p4, [B

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_17d

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_19

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_124

    :cond_19
    if-nez p2, :cond_124

    :try_start_1b
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfk;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_5f} :catch_f2
    .catchall {:try_start_1b .. :try_end_5f} :catchall_17d

    :try_start_5f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_e9

    :try_start_6f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_89} :catch_ab
    .catchall {:try_start_6f .. :try_end_89} :catchall_e9

    :try_start_89
    const-string v6, "queue"

    const-string v7, "rowid=?"

    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_94

    goto :goto_63

    :cond_94
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_9c} :catch_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_e9

    :catch_9c
    move-exception v0

    :try_start_9d
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_ab} :catch_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_e9

    :catch_ab
    move-exception p3

    :try_start_ac
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzx:Ljava/util/List;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzx:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b9

    goto :goto_63

    :cond_b9
    throw p3

    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_c1
    .catchall {:try_start_ac .. :try_end_c1} :catchall_e9

    :try_start_c1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzx:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result p1

    if-eqz p1, :cond_de

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzy()Z

    move-result p1

    if-eqz p1, :cond_de

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzl()V

    goto :goto_e5

    :cond_de
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzy:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    :goto_e5
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    goto/16 :goto_177

    :catchall_e9
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    throw p1
    :try_end_f2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c1 .. :try_end_f2} :catch_f2
    .catchall {:try_start_c1 .. :try_end_f2} :catchall_17d

    :catch_f2
    move-exception p1

    :try_start_f3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_177

    :cond_124
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_156

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_155

    goto :goto_156

    :cond_155
    const/4 v3, 0x0

    :cond_156
    :goto_156
    if-eqz v3, :cond_16d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zze:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V
    :try_end_177
    .catchall {:try_start_f3 .. :try_end_177} :catchall_17d

    :goto_177
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzs:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    return-void

    :catchall_17d
    move-exception p1

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzs:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    goto :goto_185

    :goto_184
    throw p1

    :goto_185
    goto :goto_184
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v4

    if-nez v4, :cond_23

    return-void

    :cond_23
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v4, :cond_2b

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_2b
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzbk:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzu:Ljava/util/List;

    if-eqz v4, :cond_7d

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_7d

    :cond_69
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7d
    :goto_7d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_b4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_c4

    :cond_b4
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_c4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c8
    :goto_c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_117

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzv;

    if-eqz v8, :cond_c8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v14

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz v9, :cond_109

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzan;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_c8

    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_142

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_154

    :cond_142
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_154
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_161
    :goto_161
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzv;

    if-eqz v9, :cond_161

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v15

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz v5, :cond_1a8

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_161

    :cond_1b5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1ba
    if-ge v5, v4, :cond_1cd

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzan;

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzan;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1ba

    :cond_1cd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_206

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_21c

    :cond_206
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_21c
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_229
    :goto_229
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzv;

    if-eqz v15, :cond_229

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    move-result v4

    if-eqz v4, :cond_278

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    :goto_274
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_299

    :cond_278
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    goto :goto_274

    :goto_299
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzv;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz v4, :cond_2a2

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzv;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzv;)Z

    const/4 v13, 0x0

    goto/16 :goto_229

    :cond_2b6
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2be
    if-ge v3, v0, :cond_2d1

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzan;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzan;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_2be

    :cond_2d1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_2d8
    .catchall {:try_start_84 .. :try_end_2d8} :catchall_2e0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_2e0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    goto :goto_2ea

    :goto_2e9
    throw v0

    :goto_2ea
    goto :goto_2e9
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzan;Ljava/lang/String;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_e9

    :cond_1c
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_40

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5a

    :cond_40
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5a
    :goto_5a
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v14

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v23

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v24

    const/16 v25, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v28

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v30

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v31

    if-eqz v31, :cond_bd

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v13, v3, v0}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v0

    goto :goto_be

    :cond_bd
    const/4 v0, 0x0

    :goto_be
    move-object v2, v15

    move-object/from16 v3, p2

    const/4 v13, 0x0

    move-object/from16 v32, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v30

    move-object/from16 v30, v0

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    :cond_e9
    :goto_e9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .registers 2

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzp:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_15

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzc(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    if-eqz v4, :cond_4b

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    :goto_3d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkm;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_8d

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7e

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_74

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7e

    :cond_74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_7f

    :cond_7e
    const/4 v11, 0x0

    :goto_7f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a0

    return-void

    :cond_a0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzaq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_133

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v8, "_sno"

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v3

    if-eqz v3, :cond_db

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_db

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_121

    :cond_db
    if-eqz v3, :cond_ee

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ee
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzap;->zzat:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v8, "_s"

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    if-eqz v3, :cond_121

    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_121
    :goto_121
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_133
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_164
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V

    if-eqz p1, :cond_196

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "User property set"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c3

    :cond_196
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1c3
    .catchall {:try_start_164 .. :try_end_1c3} :catchall_1cb

    :goto_1c3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_1cb
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 14
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;

    if-eqz v1, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzx:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzx:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    :try_start_23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_92

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_7f} :catch_80

    goto :goto_92

    :catch_80
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    :goto_92
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzb()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzch:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-eqz v0, :cond_d0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    :cond_ae
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    iget-boolean v7, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzm:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    iget-object v11, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-eqz p1, :cond_d0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_d0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzv;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_b
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 13

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_2e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzv;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_78
    const/4 v2, 0x1

    if-eqz v1, :cond_b2

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    if-eqz v3, :cond_b2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:J

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    goto :goto_d5

    :cond_b2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    const/4 p1, 0x1

    :cond_d5
    :goto_d5
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    if-eqz v1, :cond_14a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    move-result v1

    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    :goto_113
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_138

    :cond_117
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    goto :goto_113

    :goto_138
    if-eqz p1, :cond_14a

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz p1, :cond_14a

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzan;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_14a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzv;)Z

    move-result p1

    if-eqz p1, :cond_17a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v0

    :goto_176
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a1

    :cond_17a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v0

    goto :goto_176

    :goto_1a1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_1a8
    .catchall {:try_start_3d .. :try_end_1a8} :catchall_1b0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_1b0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    goto :goto_1ba

    :goto_1b9
    throw p1

    :goto_1ba
    goto :goto_1b9
.end method

.method final zza(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzo:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzo:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_e

    :try_start_c
    new-array p4, v0, [B

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_182

    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_3e

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_3e

    if-ne p2, v3, :cond_42

    :cond_3e
    if-nez p3, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    if-nez v1, :cond_5a

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16d

    :cond_5a
    const/16 v5, 0x194

    if-nez v2, :cond_ca

    if-ne p2, v5, :cond_61

    goto :goto_ca

    :cond_61
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_ae

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v4, 0x0

    :cond_ae
    :goto_ae
    if-eqz v4, :cond_c5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zze:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_c5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    goto/16 :goto_16d

    :cond_ca
    :goto_ca
    const/4 p3, 0x0

    if-eqz p5, :cond_d6

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_d7

    :cond_d6
    move-object p5, p3

    :goto_d7
    if-eqz p5, :cond_e6

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_e7

    :cond_e6
    move-object p5, p3

    :goto_e7
    if-eq p2, v5, :cond_103

    if-ne p2, v3, :cond_ec

    goto :goto_103

    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_f4
    .catchall {:try_start_29 .. :try_end_f4} :catchall_179

    if-nez p3, :cond_11c

    :try_start_f6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    :goto_fa
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_182

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    return-void

    :cond_103
    :goto_103
    :try_start_103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    move-result-object p5

    if-nez p5, :cond_11c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_115
    .catchall {:try_start_103 .. :try_end_115} :catchall_179

    if-nez p3, :cond_11c

    :try_start_117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_182

    goto :goto_fa

    :cond_11c
    :try_start_11c
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_142

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzk()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15a

    :cond_142
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_15a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result p1

    if-eqz p1, :cond_c5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzy()Z

    move-result p1

    if-eqz p1, :cond_c5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzl()V

    :goto_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_174
    .catchall {:try_start_11c .. :try_end_174} :catchall_179

    :try_start_174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    goto :goto_fa

    :catchall_179
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    throw p1
    :try_end_182
    .catchall {:try_start_174 .. :try_end_182} :catchall_182

    :catchall_182
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    goto :goto_18a

    :goto_189
    throw p1

    :goto_18a
    goto :goto_189
.end method

.method final zza(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_15

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    const-string v1, "User property removed"

    const-string v2, "Removing user property"

    if-eqz v0, :cond_ce

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    const-string v3, "_npa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    if-eqz v0, :cond_6f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-wide/16 v0, 0x1

    goto :goto_5f

    :cond_5d
    const-wide/16 v0, 0x0

    :goto_5f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_8f
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_bd
    .catchall {:try_start_8f .. :try_end_bd} :catchall_c5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_c5
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    throw p1

    :cond_ce
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_ee
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11c
    .catchall {:try_start_ee .. :try_end_11c} :catchall_124

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_124
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sys"

    const-string v4, "_pfo"

    const-string v5, "_uwa"

    const-string v0, "app_id=?"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzke;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v6

    if-nez v6, :cond_21

    return-void

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_54

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_54

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_54

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzc()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd(Ljava/lang/String;)V

    :cond_54
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v6, :cond_5c

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_5c
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzm:J

    cmp-long v6, v9, v7

    if-nez v6, :cond_6c

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    :cond_6c
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-eqz v6, :cond_85

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzx()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzah;->zzi()V

    :cond_85
    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzn:I

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_a7

    if-eq v6, v13, :cond_a7

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v11, v14, v12, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    :cond_a7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_ae
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v11

    if-eqz v11, :cond_127

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v14, "_npa"

    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v14

    if-eqz v14, :cond_d6

    const-string v11, "auto"

    iget-object v12, v14, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_127

    :cond_d6
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    if-eqz v11, :cond_111

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v16, "_npa"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_e9

    const-wide/16 v17, 0x1

    goto :goto_eb

    :cond_e9
    const-wide/16 v17, 0x0

    :goto_eb
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, v16

    move-object/from16 v19, v3

    move-object v8, v14

    const/4 v3, 0x1

    move-wide v13, v9

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_10d

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Ljava/lang/Long;

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    :cond_10d
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_12a

    :cond_111
    move-object/from16 v19, v3

    move-object v8, v14

    const/4 v3, 0x1

    if-eqz v8, :cond_12a

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v12, "_npa"

    const/4 v15, 0x0

    const-string v16, "auto"

    move-object v11, v7

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_12a

    :cond_127
    move-object/from16 v19, v3

    const/4 v3, 0x1

    :cond_12a
    :goto_12a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-eqz v7, :cond_1e8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_175
    .catchall {:try_start_ae .. :try_end_175} :catchall_4d3

    :try_start_175
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/String;
    :try_end_17b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_175 .. :try_end_17b} :catch_1d3
    .catchall {:try_start_175 .. :try_end_17b} :catchall_4d3

    const/4 v15, 0x0

    :try_start_17c
    aput-object v7, v13, v15

    const-string v14, "events"

    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v8, "user_attributes"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "conditional_properties"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "apps"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events_metadata"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "event_filters"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "property_filters"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "audience_filter_values"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_1e6

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v7, v12}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17c .. :try_end_1d0} :catch_1d1
    .catchall {:try_start_17c .. :try_end_1d0} :catchall_4d3

    goto :goto_1e6

    :catch_1d1
    move-exception v0

    goto :goto_1d5

    :catch_1d3
    move-exception v0

    const/4 v15, 0x0

    :goto_1d5
    :try_start_1d5
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    const-string v11, "Error deleting application data. appId, error"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v11, v7, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e6
    :goto_1e6
    const/4 v7, 0x0

    goto :goto_1e9

    :cond_1e8
    const/4 v15, 0x0

    :goto_1e9
    if-eqz v7, :cond_248

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v11

    const-wide/32 v13, -0x80000000

    cmp-long v0, v11, v13

    if-eqz v0, :cond_203

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v11

    move-object v8, v4

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    cmp-long v0, v11, v3

    if-eqz v0, :cond_204

    const/4 v0, 0x1

    goto :goto_205

    :cond_203
    move-object v8, v4

    :cond_204
    const/4 v0, 0x0

    :goto_205
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v3

    cmp-long v11, v3, v13

    if-nez v11, :cond_221

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_221

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_221

    const/4 v3, 0x1

    goto :goto_222

    :cond_221
    const/4 v3, 0x0

    :goto_222
    or-int/2addr v0, v3

    if-eqz v0, :cond_249

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzan;

    const-string v12, "_au"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    const/4 v4, 0x0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_24a

    :cond_248
    move-object v8, v4

    :cond_249
    const/4 v4, 0x0

    :goto_24a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v6, :cond_25c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v7, "_f"

    :goto_257
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    goto :goto_269

    :cond_25c
    const/4 v3, 0x1

    if-ne v6, v3, :cond_268

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v7, "_v"

    goto :goto_257

    :cond_268
    const/4 v0, 0x0

    :goto_269
    if-nez v0, :cond_4aa

    const-wide/32 v11, 0x36ee80

    div-long v13, v9, v11
    :try_end_270
    .catchall {:try_start_1d5 .. :try_end_270} :catchall_4d3

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    mul-long v13, v13, v11

    const-string v0, "_dac"

    const-string v3, "_r"

    const-string v7, "_c"

    const-string v15, "_et"

    if-nez v6, :cond_40f

    :try_start_27f
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v12, "_fot"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v20, "auto"

    move-object v11, v6

    move-wide v13, v9

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zzao:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-eqz v6, :cond_2b4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzf()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;)V

    :cond_2b4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v3, v19

    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "_sysu"

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v7

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v7

    const-wide/16 v11, 0x1

    if-eqz v7, :cond_2ee

    invoke-virtual {v6, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2ee
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzq:Z

    if-eqz v7, :cond_2f5

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2f5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    const-string v11, "first_open_count"

    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_332

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32b
    .catchall {:try_start_27f .. :try_end_32b} :catchall_4d3

    move-object/from16 v19, v8

    move-wide v7, v13

    :cond_32e
    :goto_32e
    const-wide/16 v11, 0x0

    goto/16 :goto_3f2

    :cond_332
    :try_start_332
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_343
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_332 .. :try_end_343} :catch_344
    .catchall {:try_start_332 .. :try_end_343} :catchall_4d3

    goto :goto_35b

    :catch_344
    move-exception v0

    :try_start_345
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    const-string v11, "Package info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_35b
    if-eqz v0, :cond_3aa

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v7, v11, v15

    if-eqz v7, :cond_3aa

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v19, v8

    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v7

    if-eqz v0, :cond_38e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zzci:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_389

    const-wide/16 v7, 0x0

    cmp-long v0, v13, v7

    if-nez v0, :cond_38c

    const-wide/16 v7, 0x1

    :goto_385
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_38c

    :cond_389
    const-wide/16 v7, 0x1

    goto :goto_385

    :cond_38c
    :goto_38c
    const/4 v0, 0x0

    goto :goto_38f

    :cond_38e
    const/4 v0, 0x1

    :goto_38f
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v12, "_fi"

    if-eqz v0, :cond_398

    const-wide/16 v7, 0x1

    goto :goto_39a

    :cond_398
    const-wide/16 v7, 0x0

    :goto_39a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v7, v13

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_3a9
    .catchall {:try_start_345 .. :try_end_3a9} :catchall_4d3

    goto :goto_3ad

    :cond_3aa
    move-object/from16 v19, v8

    move-wide v7, v13

    :goto_3ad
    :try_start_3ad
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_3be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3ad .. :try_end_3be} :catch_3bf
    .catchall {:try_start_3ad .. :try_end_3be} :catchall_4d3

    goto :goto_3d6

    :catch_3bf
    move-exception v0

    :try_start_3c0
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3d6
    if-eqz v0, :cond_32e

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v5, v11

    if-eqz v5, :cond_3e3

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3e3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_32e

    const-string v0, "_sysu"

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_32e

    :goto_3f2
    cmp-long v0, v7, v11

    if-ltz v0, :cond_3fb

    move-object/from16 v3, v19

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3fb
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzan;

    const-string v12, "_f"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v13, v6}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    :goto_40b
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_465

    :cond_40f
    move-object v4, v15

    const/4 v5, 0x1

    if-ne v6, v5, :cond_465

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v12, "_fvt"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    invoke-virtual {v5, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    const-wide/16 v6, 0x1

    if-eqz v3, :cond_44d

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_44d
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzq:Z

    if-eqz v3, :cond_454

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_454
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzan;

    const-string v12, "_v"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v13, v5}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    goto :goto_40b

    :cond_465
    :goto_465
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzaz:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-nez v0, :cond_4c4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-eqz v3, :cond_496

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_496
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzan;

    const-string v12, "_e"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    :goto_4a6
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_4c4

    :cond_4aa
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzi:Z

    if-eqz v0, :cond_4c4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzan;

    const-string v12, "_cd"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    goto :goto_4a6

    :cond_4c4
    :goto_4c4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_4cb
    .catchall {:try_start_3c0 .. :try_end_4cb} :catchall_4d3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_4d3
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    goto :goto_4dd

    :goto_4dc
    throw v0

    :goto_4dd
    goto :goto_4dc
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzv;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_b
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 12

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_29

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzf()V

    :try_start_30
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Z

    if-eqz v1, :cond_80

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz v1, :cond_d9

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v2, :cond_93

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v1

    :cond_93
    move-object v3, v1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzk:Lcom/google/android/gms/measurement/internal/zzan;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_d9

    :cond_b6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d9
    :goto_d9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_e0
    .catchall {:try_start_30 .. :try_end_e0} :catchall_e8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    return-void

    :catchall_e8
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzh()V

    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb()Z

    move-result v2

    if-eqz v2, :cond_114

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzck:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_114

    if-nez v0, :cond_54

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzga;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_6e

    :cond_54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzcc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    :cond_95
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    :cond_a2
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_ad

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    :cond_ad
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    :cond_ba
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_c6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    :cond_c6
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    :cond_dd
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzba:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_101

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    :cond_101
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()Z

    move-result p1

    if-eqz p1, :cond_113

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_113
    return-object v0

    :cond_114
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzg;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzfa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_19} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_1f

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1e
    move-exception v0

    :goto_1f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzac;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzd:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzd:Lcom/google/android/gms/measurement/internal/zzac;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzg:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzg:Lcom/google/android/gms/measurement/internal/zzn;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzid;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzi:Lcom/google/android/gms/measurement/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzi:Lcom/google/android/gms/measurement/internal/zzid;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzki;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzh:Lcom/google/android/gms/measurement/internal/zzki;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzh:Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzeu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzkm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzi()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    return-object v0
.end method

.method final zzk()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzk:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzl()V
    .registers 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzt:Z

    const/4 v2, 0x0

    :try_start_c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzw()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzij;->zzag()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_32

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    :goto_29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2e9

    :cond_2c
    :goto_2c
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    return-void

    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    goto :goto_29

    :cond_45
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzn:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_51

    :goto_4d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    goto :goto_2c

    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    if-eqz v3, :cond_6a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    goto :goto_29

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result v3

    if-nez v3, :cond_84

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto :goto_4d

    :cond_84
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzx;->zzk()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Ljava/lang/String;J)Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_c1

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->d_()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_2c5

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzy:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_e1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzac;->zzaa()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzy:J

    :cond_e1
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzap;->zzg:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzap;->zzh:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    goto :goto_12f

    :cond_12e
    move-object v7, v9

    :goto_12f
    if-eqz v7, :cond_15e

    const/4 v8, 0x0

    :goto_132
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_15e

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzad()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15b

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15b

    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_15e

    :cond_15b
    add-int/lit8 v8, v8, 0x1

    goto :goto_132

    :cond_15e
    :goto_15e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzap;->zza:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v11

    if-eqz v11, :cond_18b

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18b

    const/4 v11, 0x1

    goto :goto_18c

    :cond_18b
    const/4 v11, 0x0

    :goto_18c
    const/4 v12, 0x0

    :goto_18d
    if-ge v12, v8, :cond_1f6

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzx;->zze()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    if-nez v11, :cond_1cb

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_1cb
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzap;->zzbf:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v14

    if-eqz v14, :cond_1f0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbi()[B

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza([B)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;

    :cond_1f0
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;

    add-int/lit8 v12, v12, 0x1

    goto :goto_18d

    :cond_1f6
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzew;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_214

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbr$zzf;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzf;)Ljava/lang/String;

    move-result-object v6

    goto :goto_215

    :cond_214
    move-object v6, v9

    :goto_215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzh()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbr$zzf;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbi()[B

    move-result-object v14

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzap;->zzq:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_22c
    .catchall {:try_start_32 .. :try_end_22c} :catchall_2e9

    :try_start_22c
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_239

    const/4 v11, 0x1

    goto :goto_23a

    :cond_239
    const/4 v11, 0x0

    :goto_23a
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;

    if-eqz v11, :cond_251

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v10

    const-string v11, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto :goto_258

    :cond_251
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzw:Ljava/util/List;

    :goto_258
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    const-string v3, "?"

    if-lez v8, :cond_26f

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    :cond_26f
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzs:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzke;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfa;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zzb(Ljava/lang/Runnable;)V
    :try_end_2ae
    .catch Ljava/net/MalformedURLException; {:try_start_22c .. :try_end_2ae} :catch_2b0
    .catchall {:try_start_22c .. :try_end_2ae} :catchall_2e9

    goto/16 :goto_2c

    :catch_2b0
    :try_start_2b0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_2c5
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzy:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzx;->zzk()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_2e7
    .catchall {:try_start_2b0 .. :try_end_2e7} :catchall_2e9

    goto/16 :goto_2c

    :catchall_2e9
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzke;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    goto :goto_2f1

    :goto_2f0
    throw v0

    :goto_2f1
    goto :goto_2f0
.end method

.method public final zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzo()V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8e

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzm:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzac()Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_27
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzab()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzv:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzy()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzep;->zzaf()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzw()V

    if-le v0, v2, :cond_57

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Panic: can\'t downgrade version. Previous, current version"

    goto :goto_75

    :cond_57
    if-ge v0, v2, :cond_8e

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzv:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzke;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgraded. Previous, current version"

    :goto_75
    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8e

    :cond_79
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgrade failed. Previous, current version"

    goto :goto_75

    :cond_8e
    :goto_8e
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzl:Z

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbc:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzv()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "This instance being marked as an uploader"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzl:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzz()V

    :cond_b4
    return-void
.end method

.method final zzp()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzq:I

    return-void
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzft;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzew;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    return-object v0
.end method

.method final zzs()Lcom/google/android/gms/measurement/internal/zzga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.measurement.internal.zzke.zza (com.google.android.gms.measurement.internal.zzke$zza)
.class final Lcom/google/android/gms/measurement/internal/zzke$zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

.field zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbr$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzke;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zze:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzkd;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzke$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;)J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzbr$zzg;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzg;

    return-void
.end method

.method public final zza(JLcom/google/android/gms/internal/measurement/zzbr$zzc;)Z
    .registers 11

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzb:Ljava/util/List;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzb:Ljava/util/List;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzke$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_37

    return v1

    :cond_37
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzd:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbn()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzap;->zzi:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_56

    return v1

    :cond_56
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzb:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke$zza;->zzc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzap;->zzj:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_80

    return v1

    :cond_80
    return p3
.end method
