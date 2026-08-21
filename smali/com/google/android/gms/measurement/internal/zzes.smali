###### Class com.google.android.gms.measurement.internal.zzes (com.google.android.gms.measurement.internal.zzes)
.class public final Lcom/google/android/gms/measurement/internal/zzes;
.super Lcom/google/android/gms/measurement/internal/zze;
.source ""


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzer;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzer;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Lcom/google/android/gms/measurement/internal/zzer;

    return-void
.end method

.method private static zza(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "messages"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "rowid"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "type=?"

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "3"

    aput-object v1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid desc"

    const-string v9, "1"

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_36

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2d
    return-wide v1

    :cond_2e
    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_33
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_36
    move-exception p0

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw p0
.end method

.method private final zza(I[B)Z
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "Error writing entry to local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    return v3

    :cond_10
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "type"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v5, p2

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    :goto_28
    if-ge v6, v5, :cond_141

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_2c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_30} :catch_115
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2c .. :try_end_30} :catch_102
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_30} :catch_d8
    .catchall {:try_start_2c .. :try_end_30} :catchall_d2

    if-nez v10, :cond_41

    :try_start_32
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_32 .. :try_end_34} :catch_3e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_32 .. :try_end_34} :catch_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_34} :catch_3a
    .catchall {:try_start_32 .. :try_end_34} :catchall_134

    if-eqz v10, :cond_39

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_39
    return v3

    :catch_3a
    move-exception v0

    move-object v13, v8

    goto/16 :goto_ca

    :catch_3e
    move-exception v0

    goto/16 :goto_118

    :cond_41
    :try_start_41
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v11, 0x0

    const-string v0, "select count(1) from messages"

    invoke-virtual {v10, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_41 .. :try_end_4c} :catch_cf
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_41 .. :try_end_4c} :catch_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_4c} :catch_c7
    .catchall {:try_start_41 .. :try_end_4c} :catchall_c2

    if-eqz v13, :cond_63

    :try_start_4e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4e .. :try_end_58} :catch_5f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4e .. :try_end_58} :catch_c0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_58} :catch_5c
    .catchall {:try_start_4e .. :try_end_58} :catchall_59

    goto :goto_63

    :catchall_59
    move-exception v0

    goto/16 :goto_136

    :catch_5c
    move-exception v0

    goto/16 :goto_ca

    :catch_5f
    move-exception v0

    move-object v8, v13

    goto/16 :goto_118

    :cond_63
    :goto_63
    const-string v0, "messages"

    const-wide/32 v14, 0x186a0

    cmp-long v16, v11, v14

    if-ltz v16, :cond_aa

    :try_start_6c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v8, "Data loss, local db full"

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    sub-long/2addr v14, v11

    const-wide/16 v11, 0x1

    add-long/2addr v14, v11

    const-string v5, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v8, v9, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v3

    invoke-virtual {v10, v0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v11, v5

    cmp-long v5, v11, v14

    if-eqz v5, :cond_aa

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    const-string v8, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v8, v3, v9, v11}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_aa
    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6c .. :try_end_b4} :catch_5f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6c .. :try_end_b4} :catch_c0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c .. :try_end_b4} :catch_5c
    .catchall {:try_start_6c .. :try_end_b4} :catchall_59

    if-eqz v13, :cond_b9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b9
    if-eqz v10, :cond_be

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_be
    const/4 v2, 0x1

    return v2

    :catch_c0
    move-object v8, v13

    goto :goto_104

    :catchall_c2
    move-exception v0

    move-object v3, v8

    move-object v13, v3

    goto/16 :goto_136

    :catch_c7
    move-exception v0

    move-object v3, v8

    move-object v13, v3

    :goto_ca
    move-object v8, v10

    goto :goto_db

    :catch_cc
    move-object v3, v8

    move-object v8, v3

    goto :goto_104

    :catch_cf
    move-exception v0

    move-object v3, v8

    goto :goto_118

    :catchall_d2
    move-exception v0

    move-object v3, v8

    move-object v10, v3

    move-object v13, v10

    goto/16 :goto_136

    :catch_d8
    move-exception v0

    move-object v3, v8

    move-object v13, v8

    :goto_db
    if-eqz v8, :cond_e6

    :try_start_dd
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_e6

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_e6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_f4
    .catchall {:try_start_dd .. :try_end_f4} :catchall_ff

    if-eqz v13, :cond_f9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_f9
    if-eqz v8, :cond_12e

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_12e

    :catchall_ff
    move-exception v0

    move-object v10, v8

    goto :goto_136

    :catch_102
    move-object v3, v8

    move-object v10, v8

    :goto_104
    int-to-long v11, v7

    :try_start_105
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_134

    add-int/lit8 v7, v7, 0x14

    if-eqz v8, :cond_10f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_10f
    if-eqz v10, :cond_12e

    :goto_111
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_12e

    :catch_115
    move-exception v0

    move-object v3, v8

    move-object v10, v8

    :goto_118
    :try_start_118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_126
    .catchall {:try_start_118 .. :try_end_126} :catchall_134

    if-eqz v8, :cond_12b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_12b
    if-eqz v10, :cond_12e

    goto :goto_111

    :cond_12e
    :goto_12e
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_28

    :catchall_134
    move-exception v0

    move-object v13, v8

    :goto_136
    if-eqz v13, :cond_13b

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_13b
    if-eqz v10, :cond_140

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_140
    throw v0

    :cond_141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private final zzae()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Lcom/google/android/gms/measurement/internal/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method private final zzaf()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza(I)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    return-object v3

    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzaf()Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v4

    :cond_1c
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    :goto_20
    if-ge v7, v5, :cond_24c

    const/4 v9, 0x1

    :try_start_23
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_23 .. :try_end_27} :catch_21e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_23 .. :try_end_27} :catch_207
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_27} :catch_1df
    .catchall {:try_start_23 .. :try_end_27} :catchall_1db

    if-nez v15, :cond_39

    :try_start_29
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_29 .. :try_end_2b} :catch_36
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_29 .. :try_end_2b} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2b} :catch_31
    .catchall {:try_start_29 .. :try_end_2b} :catchall_23e

    if-eqz v15, :cond_30

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    return-object v3

    :catch_31
    move-exception v0

    move-object v10, v3

    move-object v3, v15

    goto/16 :goto_1e2

    :catch_36
    move-exception v0

    goto/16 :goto_221

    :cond_39
    :try_start_39
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzap;->zzbv:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_39 .. :try_end_46} :catch_1d7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_39 .. :try_end_46} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_46} :catch_1d0
    .catchall {:try_start_39 .. :try_end_46} :catchall_1cd

    const-string v11, "entry"

    const-string v12, "type"

    const-string v13, "rowid"

    const-wide/16 v19, -0x1

    const/4 v14, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_95

    :try_start_52
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v16
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_52 .. :try_end_56} :catch_1d7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_52 .. :try_end_56} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_56} :catch_1d0
    .catchall {:try_start_52 .. :try_end_56} :catchall_1cd

    cmp-long v0, v16, v19

    if-eqz v0, :cond_68

    :try_start_5a
    const-string v0, "rowid<?"

    new-array v3, v9, [Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v6
    :try_end_64
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5a .. :try_end_64} :catch_65
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5a .. :try_end_64} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_64} :catch_1d0
    .catchall {:try_start_5a .. :try_end_64} :catchall_1cd

    goto :goto_6a

    :catch_65
    move-exception v0

    goto/16 :goto_1d9

    :cond_68
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_6a
    :try_start_6a
    const-string v16, "messages"

    new-array v10, v14, [Ljava/lang/String;

    aput-object v13, v10, v6

    aput-object v12, v10, v9

    aput-object v11, v10, v5

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-string v22, "rowid asc"

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6a .. :try_end_80} :catch_1d7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6a .. :try_end_80} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_80} :catch_1d0
    .catchall {:try_start_6a .. :try_end_80} :catchall_1cd

    move-object v12, v10

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v13, v0

    const/4 v0, 0x3

    move-object v14, v3

    move-object v3, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    :try_start_90
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_c1

    :cond_95
    move-object v3, v15

    const/4 v0, 0x3

    const-string v14, "messages"

    new-array v15, v0, [Ljava/lang/String;

    aput-object v13, v15, v6

    aput-object v12, v15, v9

    aput-object v11, v15, v5

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-string v22, "rowid asc"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object v10, v3

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v18

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_90 .. :try_end_c1} :catch_1ca
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_90 .. :try_end_c1} :catch_1d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_c1} :catch_1c8
    .catchall {:try_start_90 .. :try_end_c1} :catchall_1c6

    :cond_c1
    :goto_c1
    :try_start_c1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_188

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-nez v11, :cond_108

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_d9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c1 .. :try_end_d9} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c1 .. :try_end_d9} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c1 .. :try_end_d9} :catch_1bc
    .catchall {:try_start_c1 .. :try_end_d9} :catchall_205

    :try_start_d9
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzan;
    :try_end_e8
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_d9 .. :try_end_e8} :catch_f3
    .catchall {:try_start_d9 .. :try_end_e8} :catchall_f1

    :try_start_e8
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    if-eqz v12, :cond_c1

    :goto_ed
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e8 .. :try_end_f0} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e8 .. :try_end_f0} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e8 .. :try_end_f0} :catch_1bc
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_205

    goto :goto_c1

    :catchall_f1
    move-exception v0

    goto :goto_104

    :catch_f3
    :try_start_f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_f1

    :try_start_100
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_c1

    :goto_104
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_108
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_100 .. :try_end_108} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_100 .. :try_end_108} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_100 .. :try_end_108} :catch_1bc
    .catchall {:try_start_100 .. :try_end_108} :catchall_205

    :cond_108
    const-string v13, "Failed to load user property from local database"

    if-ne v11, v9, :cond_13b

    :try_start_10c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10c .. :try_end_110} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10c .. :try_end_110} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10c .. :try_end_110} :catch_1bc
    .catchall {:try_start_10c .. :try_end_110} :catchall_205

    :try_start_110
    array-length v14, v12

    invoke-virtual {v11, v12, v6, v14}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzkl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzkl;
    :try_end_11f
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_110 .. :try_end_11f} :catch_125
    .catchall {:try_start_110 .. :try_end_11f} :catchall_123

    :try_start_11f
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_122
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11f .. :try_end_122} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11f .. :try_end_122} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11f .. :try_end_122} :catch_1bc
    .catchall {:try_start_11f .. :try_end_122} :catchall_205

    goto :goto_134

    :catchall_123
    move-exception v0

    goto :goto_137

    :catch_125
    :try_start_125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_125 .. :try_end_130} :catchall_123

    :try_start_130
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const/4 v12, 0x0

    :goto_134
    if-eqz v12, :cond_c1

    goto :goto_ed

    :goto_137
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_13b
    if-ne v11, v5, :cond_16c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_141
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_130 .. :try_end_141} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_130 .. :try_end_141} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_130 .. :try_end_141} :catch_1bc
    .catchall {:try_start_130 .. :try_end_141} :catchall_205

    :try_start_141
    array-length v14, v12

    invoke-virtual {v11, v12, v6, v14}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzv;
    :try_end_150
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_141 .. :try_end_150} :catch_156
    .catchall {:try_start_141 .. :try_end_150} :catchall_154

    :try_start_150
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_153
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_150 .. :try_end_153} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_150 .. :try_end_153} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_150 .. :try_end_153} :catch_1bc
    .catchall {:try_start_150 .. :try_end_153} :catchall_205

    goto :goto_165

    :catchall_154
    move-exception v0

    goto :goto_168

    :catch_156
    :try_start_156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_161
    .catchall {:try_start_156 .. :try_end_161} :catchall_154

    :try_start_161
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const/4 v12, 0x0

    :goto_165
    if-eqz v12, :cond_c1

    goto :goto_ed

    :goto_168
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_16c
    if-ne v11, v0, :cond_17d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    const-string v12, "Skipping app launch break"

    :goto_178
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto/16 :goto_c1

    :cond_17d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    const-string v12, "Unknown record type in local database"

    goto :goto_178

    :cond_188
    const-string v0, "messages"

    const-string v5, "rowid <= ?"

    new-array v11, v9, [Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v3, v0, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1ab

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v5, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    :cond_1ab
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_161 .. :try_end_1b1} :catch_1c1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_161 .. :try_end_1b1} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_161 .. :try_end_1b1} :catch_1bc
    .catchall {:try_start_161 .. :try_end_1b1} :catchall_205

    if-eqz v10, :cond_1b6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1b6
    if-eqz v3, :cond_1bb

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1bb
    return-object v4

    :catch_1bc
    move-exception v0

    goto :goto_1e2

    :catch_1be
    move-object v5, v3

    move-object v3, v10

    goto :goto_209

    :catch_1c1
    move-exception v0

    move-object v15, v3

    move-object v3, v10

    goto/16 :goto_221

    :catchall_1c6
    move-exception v0

    goto :goto_1dd

    :catch_1c8
    move-exception v0

    goto :goto_1e1

    :catch_1ca
    move-exception v0

    move-object v15, v3

    goto :goto_1d9

    :catchall_1cd
    move-exception v0

    move-object v3, v15

    goto :goto_1dd

    :catch_1d0
    move-exception v0

    move-object v3, v15

    goto :goto_1e1

    :catch_1d3
    move-object v3, v15

    :catch_1d4
    move-object v5, v3

    const/4 v3, 0x0

    goto :goto_209

    :catch_1d7
    move-exception v0

    move-object v3, v15

    :goto_1d9
    const/4 v3, 0x0

    goto :goto_221

    :catchall_1db
    move-exception v0

    const/4 v3, 0x0

    :goto_1dd
    const/4 v10, 0x0

    goto :goto_241

    :catch_1df
    move-exception v0

    const/4 v3, 0x0

    :goto_1e1
    const/4 v10, 0x0

    :goto_1e2
    if-eqz v3, :cond_1ed

    :try_start_1e4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_1ed

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1ed
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_1fa
    .catchall {:try_start_1e4 .. :try_end_1fa} :catchall_205

    if-eqz v10, :cond_1ff

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1ff
    if-eqz v3, :cond_238

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_238

    :catchall_205
    move-exception v0

    goto :goto_241

    :catch_207
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_209
    int-to-long v9, v8

    :try_start_20a
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_20d
    .catchall {:try_start_20a .. :try_end_20d} :catchall_21a

    add-int/lit8 v8, v8, 0x14

    if-eqz v3, :cond_214

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_214
    if-eqz v5, :cond_238

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_238

    :catchall_21a
    move-exception v0

    move-object v10, v3

    move-object v3, v5

    goto :goto_241

    :catch_21e
    move-exception v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_221
    :try_start_221
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_22e
    .catchall {:try_start_221 .. :try_end_22e} :catchall_23e

    if-eqz v3, :cond_233

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_233
    if-eqz v15, :cond_238

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_238
    :goto_238
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_20

    :catchall_23e
    move-exception v0

    move-object v10, v3

    move-object v3, v15

    :goto_241
    if-eqz v10, :cond_246

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_246
    if-eqz v3, :cond_24b

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_24b
    throw v0

    :cond_24c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public final bridge synthetic zza()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzan;)Z
    .registers 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzan;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v1

    :cond_22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzkl;)Z
    .registers 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v1

    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzv;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzab()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd()V

    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzac()Z
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(I[B)Z

    move-result v0

    return v0
.end method

.method public final zzad()Z
    .registers 12

    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzaf()Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_18
    if-ge v3, v1, :cond_8d

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_2a

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1c .. :try_end_24} :catch_73
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1c .. :try_end_24} :catch_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_24} :catch_4b
    .catchall {:try_start_1c .. :try_end_24} :catchall_49

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_29
    return v2

    :cond_2a
    :try_start_2a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_43} :catch_73
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2a .. :try_end_43} :catch_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_43} :catch_4b
    .catchall {:try_start_2a .. :try_end_43} :catchall_49

    if-eqz v5, :cond_48

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_48
    return v6

    :catchall_49
    move-exception v0

    goto :goto_87

    :catch_4b
    move-exception v7

    if-eqz v5, :cond_57

    :try_start_4e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z

    if-eqz v5, :cond_84

    goto :goto_6f

    :catch_67
    int-to-long v6, v4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_49

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_84

    :goto_6f
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_84

    :catch_73
    move-exception v7

    :try_start_74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Z
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_49

    if-eqz v5, :cond_84

    goto :goto_6f

    :cond_84
    :goto_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :goto_87
    if-eqz v5, :cond_8c

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8c
    throw v0

    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return v2
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzep;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzij;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzii;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzah;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzeu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzft;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzew;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzff;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzw;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
