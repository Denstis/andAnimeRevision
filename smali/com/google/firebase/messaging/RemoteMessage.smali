###### Class com.google.firebase.messaging.RemoteMessage (com.google.firebase.messaging.RemoteMessage)
.class public final Lcom/google/firebase/messaging/RemoteMessage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "RemoteMessageCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/RemoteMessage$Notification;,
        Lcom/google/firebase/messaging/RemoteMessage$Builder;,
        Lcom/google/firebase/messaging/RemoteMessage$MessagePriority;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x2

.field public static final PRIORITY_UNKNOWN:I


# instance fields
.field zza:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/firebase/messaging/RemoteMessage$Notification;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/messaging/zzm;

    invoke-direct {v0}, Lcom/google/firebase/messaging/zzm;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/RemoteMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    return-void
.end method

.method private static zza(Ljava/lang/String;)I
    .registers 2

    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getCollapseKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getData()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zzb:Ljava/util/Map;

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_13

    check-cast v4, Ljava/lang/String;

    const-string v5, "google."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "gcm."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "from"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "message_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "collapse_key"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v1, v3, v4}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_55
    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage;->zzb:Ljava/util/Map;

    :cond_57
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public final getMessageType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zzc:Lcom/google/firebase/messaging/RemoteMessage$Notification;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/firebase/messaging/zzk;->zza(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/firebase/messaging/RemoteMessage$Notification;

    new-instance v1, Lcom/google/firebase/messaging/zzk;

    iget-object v2, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/zzk;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;-><init>(Lcom/google/firebase/messaging/zzk;Lcom/google/firebase/messaging/zzl;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zzc:Lcom/google/firebase/messaging/RemoteMessage$Notification;

    :cond_1b
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zzc:Lcom/google/firebase/messaging/RemoteMessage$Notification;

    return-object v0
.end method

.method public final getOriginalPriority()I
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.original_priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    invoke-static {v0}, Lcom/google/firebase/messaging/RemoteMessage;->zza(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getPriority()I
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.delivered_priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.priority_reduced"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    return v0

    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0}, Lcom/google/firebase/messaging/RemoteMessage;->zza(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getSentTime()J
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.sent_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_13
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_43

    :try_start_17
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1e} :catch_1f

    return-wide v0

    :catch_1f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid sent time: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getTo()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.to"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTtl()I
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const-string v1, "google.ttl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_13
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_43

    :try_start_17
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1e} :catch_1f

    return v0

    :catch_1f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid TTL: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public final toIntent()Landroid/content/Intent;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->zza:Landroid/os/Bundle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.firebase.messaging.RemoteMessage.Builder (com.google.firebase.messaging.RemoteMessage$Builder)
.class public Lcom/google/firebase/messaging/RemoteMessage$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zzb:Ljava/util/Map;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid to: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    :cond_2a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    const-string v1, "google.to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/google/firebase/messaging/RemoteMessage;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zzb:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_2b
    iget-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public clearData()Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public setCollapseKey(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setData(Ljava/util/Map;)Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/messaging/RemoteMessage$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    const-string v1, "google.message_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    const-string v1, "message_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTtl(I)Lcom/google/firebase/messaging/RemoteMessage$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Builder;->zza:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "google.ttl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

###### Class com.google.firebase.messaging.RemoteMessage.MessagePriority (com.google.firebase.messaging.RemoteMessage$MessagePriority)
.class public interface abstract annotation Lcom/google/firebase/messaging/RemoteMessage$MessagePriority;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MessagePriority"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.firebase.messaging.RemoteMessage.Notification (com.google.firebase.messaging.RemoteMessage$Notification)
.class public Lcom/google/firebase/messaging/RemoteMessage$Notification;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:[Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Ljava/lang/String;

.field private final zzm:Ljava/lang/String;

.field private final zzn:Landroid/net/Uri;

.field private final zzo:Ljava/lang/String;

.field private final zzp:Ljava/lang/Integer;

.field private final zzq:Ljava/lang/Integer;

.field private final zzr:Ljava/lang/Integer;

.field private final zzs:[I

.field private final zzt:Ljava/lang/Long;

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Z

.field private final zzx:Z

.field private final zzy:Z

.field private final zzz:[J


# direct methods
.method private constructor <init>(Lcom/google/firebase/messaging/zzk;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcm.n.title"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zza:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzb:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zza(Lcom/google/firebase/messaging/zzk;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzc:[Ljava/lang/String;

    const-string v0, "gcm.n.body"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zze:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zza(Lcom/google/firebase/messaging/zzk;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzf:[Ljava/lang/String;

    const-string v0, "gcm.n.icon"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzi:Ljava/lang/String;

    const-string v0, "gcm.n.tag"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzj:Ljava/lang/String;

    const-string v0, "gcm.n.color"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzk:Ljava/lang/String;

    const-string v0, "gcm.n.click_action"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzl:Ljava/lang/String;

    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzm:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/zzk;->zza()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzn:Landroid/net/Uri;

    const-string v0, "gcm.n.image"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzh:Ljava/lang/String;

    const-string v0, "gcm.n.ticker"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzo:Ljava/lang/String;

    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzc(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzp:Ljava/lang/Integer;

    const-string v0, "gcm.n.visibility"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzc(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzq:Ljava/lang/Integer;

    const-string v0, "gcm.n.notification_count"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzc(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzr:Ljava/lang/Integer;

    const-string v0, "gcm.n.sticky"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzb(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzu:Z

    const-string v0, "gcm.n.local_only"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzb(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzv:Z

    const-string v0, "gcm.n.default_sound"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzb(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzw:Z

    const-string v0, "gcm.n.default_vibrate_timings"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzb(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzx:Z

    const-string v0, "gcm.n.default_light_settings"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzb(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzy:Z

    const-string v0, "gcm.n.event_time"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/zzk;->zzd(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzt:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/zzk;->zzd()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzs:[I

    invoke-virtual {p1}, Lcom/google/firebase/messaging/zzk;->zzc()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzz:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/messaging/zzk;Lcom/google/firebase/messaging/zzl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;-><init>(Lcom/google/firebase/messaging/zzk;)V

    return-void
.end method

.method private static zza(Lcom/google/firebase/messaging/zzk;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/zzk;->zzf(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_c
    array-length v1, p0

    if-ge v0, v1, :cond_1a

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    return-object p1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyLocalizationArgs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzf:[Ljava/lang/String;

    return-object v0
.end method

.method public getBodyLocalizationKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLightSettings()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzy:Z

    return v0
.end method

.method public getDefaultSound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzw:Z

    return v0
.end method

.method public getDefaultVibrateSettings()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzx:Z

    return v0
.end method

.method public getEventTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzt:Ljava/lang/Long;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzh:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightSettings()[I
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzs:[I

    return-object v0
.end method

.method public getLink()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzn:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalOnly()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzv:Z

    return v0
.end method

.method public getNotificationCount()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzr:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationPriority()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public getSticky()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzu:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationArgs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzc:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrateTimings()[J
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzz:[J

    return-object v0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->zzq:Ljava/lang/Integer;

    return-object v0
.end method
