###### Class com.google.android.gms.ads.RequestConfiguration (com.google.android.gms.ads.RequestConfiguration)
.class public Lcom/google/android/gms/ads/RequestConfiguration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/RequestConfiguration$Builder;,
        Lcom/google/android/gms/ads/RequestConfiguration$MaxAdContentRating;,
        Lcom/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent;,
        Lcom/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment;
    }
.end annotation


# static fields
.field public static final MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "G"

.field public static final MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "MA"

.field public static final MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "PG"

.field public static final MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "T"

.field public static final MAX_AD_CONTENT_RATING_UNSPECIFIED:Ljava/lang/String; = ""

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:I = 0x0

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:I = 0x1

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:I = -0x1

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:I = 0x0

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:I = 0x1

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:I = -0x1

.field public static final zzabm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzabj:I

.field private final zzabk:I

.field private final zzabl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "T"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "G"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabm:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabj:I

    iput p2, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabk:I

    iput-object p3, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/google/android/gms/ads/zzc;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/RequestConfiguration;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabl:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getTagForChildDirectedTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabj:I

    return v0
.end method

.method public getTagForUnderAgeOfConsent()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabk:I

    return v0
.end method

.method public toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabj:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabk:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->zzabl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.ads.RequestConfiguration.Builder (com.google.android.gms.ads.RequestConfiguration$Builder)
.class public Lcom/google/android/gms/ads/RequestConfiguration$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/RequestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzabj:I

.field private zzabk:I

.field private zzabl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabj:I

    iput v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabk:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/RequestConfiguration;
    .registers 6

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration;

    iget v1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabj:I

    iget v2, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabk:I

    iget-object v3, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/RequestConfiguration;-><init>(IILjava/lang/String;Lcom/google/android/gms/ads/zzc;)V

    return-object v0
.end method

.method public setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .registers 4

    if-eqz p1, :cond_46

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_46

    :cond_b
    const-string v0, "G"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "PG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "T"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "MA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_47

    :cond_2c
    const-string v0, "Invalid value passed to setMaxAdContentRating: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    :cond_3d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    goto :goto_49

    :cond_46
    :goto_46
    const/4 p1, 0x0

    :cond_47
    :goto_47
    iput-object p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabl:Ljava/lang/String;

    :goto_49
    return-object p0
.end method

.method public setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_20

    :cond_9
    const/16 v0, 0x44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid value passed to setTagForChildDirectedTreatment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    goto :goto_22

    :cond_20
    :goto_20
    iput p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabj:I

    :goto_22
    return-object p0
.end method

.method public setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_20

    :cond_9
    const/16 v0, 0x3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid value passed to setTagForUnderAgeOfConsent: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    goto :goto_22

    :cond_20
    :goto_20
    iput p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzabk:I

    :goto_22
    return-object p0
.end method

###### Class com.google.android.gms.ads.RequestConfiguration.MaxAdContentRating (com.google.android.gms.ads.RequestConfiguration$MaxAdContentRating)
.class public interface abstract annotation Lcom/google/android/gms/ads/RequestConfiguration$MaxAdContentRating;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/RequestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MaxAdContentRating"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.RequestConfiguration.TagForChildDirectedTreatment (com.google.android.gms.ads.RequestConfiguration$TagForChildDirectedTreatment)
.class public interface abstract annotation Lcom/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/RequestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TagForChildDirectedTreatment"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.RequestConfiguration.TagForUnderAgeOfConsent (com.google.android.gms.ads.RequestConfiguration$TagForUnderAgeOfConsent)
.class public interface abstract annotation Lcom/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/RequestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TagForUnderAgeOfConsent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
