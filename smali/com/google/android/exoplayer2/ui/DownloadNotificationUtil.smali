###### Class com.google.android.exoplayer2.ui.DownloadNotificationUtil (com.google.android.exoplayer2.ui.DownloadNotificationUtil)
.class public final Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NULL_STRING_ID:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDownloadCompletedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .registers 11

    sget v5, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_completed:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;->newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroidx/core/app/h$d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/h$d;->a()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildDownloadFailedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .registers 11

    sget v5, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_failed:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;->newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroidx/core/app/h$d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/h$d;->a()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgressNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;[Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)Landroid/app/Notification;
    .registers 23

    move-object/from16 v0, p5

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_d
    if-ge v4, v1, :cond_3e

    aget-object v11, v0, v4

    iget v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    if-eq v12, v2, :cond_19

    const/4 v13, 0x2

    if-eq v12, v13, :cond_19

    goto :goto_3b

    :cond_19
    iget-object v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    iget-boolean v12, v12, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v12, :cond_21

    const/4 v6, 0x1

    goto :goto_3b

    :cond_21
    iget v5, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadPercentage:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v5, v12

    if-eqz v12, :cond_2b

    add-float/2addr v7, v5

    const/4 v9, 0x0

    :cond_2b
    iget-wide v11, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadedBytes:J

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-lez v5, :cond_35

    const/4 v5, 0x1

    goto :goto_36

    :cond_35
    const/4 v5, 0x0

    :goto_36
    or-int/2addr v5, v10

    add-int/lit8 v8, v8, 0x1

    move v10, v5

    const/4 v5, 0x1

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3e
    if-eqz v5, :cond_45

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_downloading:I

    :goto_42
    move/from16 v16, v0

    goto :goto_4c

    :cond_45
    if-eqz v6, :cond_4a

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_removing:I

    goto :goto_42

    :cond_4a
    const/16 v16, 0x0

    :goto_4c
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;->newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroidx/core/app/h$d;

    move-result-object v0

    if-eqz v5, :cond_66

    int-to-float v1, v8

    div-float/2addr v7, v1

    float-to-int v1, v7

    if-eqz v9, :cond_64

    if-eqz v10, :cond_64

    goto :goto_67

    :cond_64
    const/4 v4, 0x0

    goto :goto_68

    :cond_66
    const/4 v1, 0x0

    :goto_67
    const/4 v4, 0x1

    :goto_68
    const/16 v5, 0x64

    invoke-virtual {v0, v5, v1, v4}, Landroidx/core/app/h$d;->a(IIZ)Landroidx/core/app/h$d;

    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    invoke-virtual {v0, v3}, Landroidx/core/app/h$d;->e(Z)Landroidx/core/app/h$d;

    invoke-virtual {v0}, Landroidx/core/app/h$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroidx/core/app/h$d;
    .registers 7

    new-instance v0, Landroidx/core/app/h$d;

    invoke-direct {v0, p0, p2}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    if-eqz p5, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    :cond_15
    if-eqz p3, :cond_1a

    invoke-virtual {v0, p3}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    :cond_1a
    if-eqz p4, :cond_27

    new-instance p0, Landroidx/core/app/h$c;

    invoke-direct {p0}, Landroidx/core/app/h$c;-><init>()V

    invoke-virtual {p0, p4}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    invoke-virtual {v0, p0}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;

    :cond_27
    return-object v0
.end method
