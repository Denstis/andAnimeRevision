###### Class com.google.android.gms.common.internal.ClientSettings (com.google.android.gms.common.internal.ClientSettings)
.class public final Lcom/google/android/gms/common/internal/ClientSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/ClientSettings$Builder;,
        Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;
    }
.end annotation


# static fields
.field public static final KEY_CLIENT_SESSION_ID:Ljava/lang/String; = "com.google.android.gms.common.internal.ClientSettings.sessionId"


# instance fields
.field private final zabr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zabt:I

.field private final zabu:Landroid/view/View;

.field private final zabv:Ljava/lang/String;

.field private final zabw:Ljava/lang/String;

.field private final zaby:Z

.field private final zaob:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zaoc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final zaod:Lcom/google/android/gms/signin/SignInOptions;

.field private zaoe:Ljava/lang/Integer;

.field private final zax:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;)V
    .registers 19
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zax:Landroid/accounts/Account;

    if-nez p2, :cond_a

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_e

    :cond_a
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabr:Ljava/util/Set;

    if-nez p3, :cond_14

    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_14
    iput-object p3, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaoc:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabu:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabt:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabv:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabw:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaod:Lcom/google/android/gms/signin/SignInOptions;

    iput-boolean p9, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaby:Z

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabr:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaoc:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;

    iget-object p3, p3, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;->mScopes:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_33

    :cond_45
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaob:Ljava/util/Set;

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/google/android/gms/common/internal/ClientSettings;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->buildClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zax:Landroid/accounts/Account;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zax:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAccountOrDefault()Landroid/accounts/Account;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zax:Landroid/accounts/Account;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAllRequestedScopes()Ljava/util/Set;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaob:Ljava/util/Set;

    return-object v0
.end method

.method public final getApplicableScopes(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaoc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;

    if-eqz p1, :cond_20

    iget-object v0, p1, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;->mScopes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    :cond_13
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabr:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;->mScopes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabr:Ljava/util/Set;

    return-object p1
.end method

.method public final getClientSessionId()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaoe:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getGravityForPopups()I
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabt:I

    return v0
.end method

.method public final getOptionalApiSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaoc:Ljava/util/Map;

    return-object v0
.end method

.method public final getRealClientClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabw:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealClientPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabv:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequiredScopes()Ljava/util/Set;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabr:Ljava/util/Set;

    return-object v0
.end method

.method public final getSignInOptions()Lcom/google/android/gms/signin/SignInOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaod:Lcom/google/android/gms/signin/SignInOptions;

    return-object v0
.end method

.method public final getViewForPopups()Landroid/view/View;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zabu:Landroid/view/View;

    return-object v0
.end method

.method public final isSignInClientDisconnectFixEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaby:Z

    return v0
.end method

.method public final setClientSessionId(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaoe:Ljava/lang/Integer;

    return-void
.end method

###### Class com.google.android.gms.common.internal.ClientSettings.Builder (com.google.android.gms.common.internal.ClientSettings$Builder)
.class public final Lcom/google/android/gms/common/internal/ClientSettings$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zabt:I

.field private zabu:Landroid/view/View;

.field private zabv:Ljava/lang/String;

.field private zabw:Ljava/lang/String;

.field private zaby:Z

.field private zaoc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;"
        }
    .end annotation
.end field

.field private zaod:Lcom/google/android/gms/signin/SignInOptions;

.field private zaof:Lb/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/b<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zax:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabt:I

    sget-object v0, Lcom/google/android/gms/signin/SignInOptions;->DEFAULT:Lcom/google/android/gms/signin/SignInOptions;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaod:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method


# virtual methods
.method public final addAllRequiredScopes(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/ClientSettings$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    if-nez v0, :cond_b

    new-instance v0, Lb/e/b;

    invoke-direct {v0}, Lb/e/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    invoke-virtual {v0, p1}, Lb/e/b;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addRequiredScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    if-nez v0, :cond_b

    new-instance v0, Lb/e/b;

    invoke-direct {v0}, Lb/e/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    invoke-virtual {v0, p1}, Lb/e/b;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/common/internal/ClientSettings;
    .registers 12
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v10, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zax:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaof:Lb/e/b;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaoc:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabt:I

    iget-object v5, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabu:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabv:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabw:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaod:Lcom/google/android/gms/signin/SignInOptions;

    iget-boolean v9, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaby:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V

    return-object v10
.end method

.method public final enableSignInClientDisconnectFix()Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaby:Z

    return-object p0
.end method

.method public final setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zax:Landroid/accounts/Account;

    return-object p0
.end method

.method public final setGravityForPopups(I)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabt:I

    return-object p0
.end method

.method public final setOptionalApiSettingsMap(Ljava/util/Map;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;)",
            "Lcom/google/android/gms/common/internal/ClientSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaoc:Ljava/util/Map;

    return-object p0
.end method

.method public final setRealClientClassName(Ljava/lang/String;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabw:Ljava/lang/String;

    return-object p0
.end method

.method public final setRealClientPackageName(Ljava/lang/String;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabv:Ljava/lang/String;

    return-object p0
.end method

.method public final setSignInOptions(Lcom/google/android/gms/signin/SignInOptions;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zaod:Lcom/google/android/gms/signin/SignInOptions;

    return-object p0
.end method

.method public final setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->zabu:Landroid/view/View;

    return-object p0
.end method

###### Class com.google.android.gms.common.internal.ClientSettings.OptionalApiSettings (com.google.android.gms.common.internal.ClientSettings$OptionalApiSettings)
.class public final Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionalApiSettings"
.end annotation


# instance fields
.field public final mScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;->mScopes:Ljava/util/Set;

    return-void
.end method
