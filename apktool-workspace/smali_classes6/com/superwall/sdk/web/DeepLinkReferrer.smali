.class public final Lcom/superwall/sdk/web/DeepLinkReferrer;
.super Ljava/lang/Object;
.source "DeepLinkReferrer.kt"

# interfaces
.implements Lcom/superwall/sdk/web/CheckForReferral;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/web/DeepLinkReferrer$ConnectionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeepLinkReferrer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeepLinkReferrer.kt\ncom/superwall/sdk/web/DeepLinkReferrer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,154:1\n774#2:155\n865#2,2:156\n1279#2,2:158\n1293#2,2:160\n774#2:162\n865#2,2:163\n1557#2:165\n1628#2,3:166\n1296#2:169\n*S KotlinDebug\n*F\n+ 1 DeepLinkReferrer.kt\ncom/superwall/sdk/web/DeepLinkReferrer\n*L\n141#1:155\n141#1:156,2\n146#1:158,2\n146#1:160,2\n149#1:162\n149#1:163,2\n150#1:165\n150#1:166,3\n146#1:169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0096@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001e\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u001d0\u001c*\u00020\u0013H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/superwall/sdk/web/DeepLinkReferrer;",
        "Lcom/superwall/sdk/web/CheckForReferral;",
        "context",
        "Lkotlin/Function0;",
        "Landroid/content/Context;",
        "scope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/IOScope;)V",
        "referrerClient",
        "Lcom/android/installreferrer/api/InstallReferrerClient;",
        "getReferrerClient",
        "()Lcom/android/installreferrer/api/InstallReferrerClient;",
        "tryConnecting",
        "",
        "timeout",
        "",
        "checkForReferral",
        "Lkotlin/Result;",
        "",
        "checkForReferral-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleDeepLink",
        "url",
        "Landroid/net/Uri;",
        "handleDeepLink-IoAF18A",
        "(Landroid/net/Uri;)Ljava/lang/Object;",
        "getUrlParams",
        "",
        "",
        "ConnectionListener",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private final scope:Lcom/superwall/sdk/misc/IOScope;


# direct methods
.method public static synthetic $r8$lambda$8f2XgtOLj7It2HA4xdGk5IKnFpI(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer;->tryConnecting$lambda$2(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$99qwXeEjrFaaFu6HqmiRQQ5cfP4(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer;->tryConnecting$lambda$2$lambda$1(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DeH4qs_PlfNn9a1cwuSiXF92mIM(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer;->tryConnecting$lambda$2$lambda$0(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/IOScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/content/Context;",
            ">;",
            "Lcom/superwall/sdk/misc/IOScope;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->scope:Lcom/superwall/sdk/misc/IOScope;

    .line 40
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0, p1, p2}, Lcom/superwall/sdk/web/DeepLinkReferrer;->tryConnecting$default(Lcom/superwall/sdk/web/DeepLinkReferrer;IILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getReferrerClient(Lcom/superwall/sdk/web/DeepLinkReferrer;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p0

    return-object p0
.end method

.method private final getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getUrlParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 141
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 141
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 156
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_2

    .line 143
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x1

    .line 145
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 146
    const-string v0, "item"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 158
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 161
    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 147
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v8, Lkotlin/text/Regex;

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&?"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 163
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 149
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 163
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 162
    check-cast v7, Ljava/lang/Iterable;

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 166
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 167
    check-cast v8, Ljava/lang/String;

    .line 150
    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 168
    :cond_5
    check-cast v6, Ljava/util/List;

    .line 161
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 169
    :cond_6
    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public static synthetic tryConnecting$default(Lcom/superwall/sdk/web/DeepLinkReferrer;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer;->tryConnecting(I)V

    return-void
.end method

.method private static final tryConnecting$lambda$2(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;
    .locals 4

    .line 60
    invoke-direct {p0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lcom/superwall/sdk/web/DeepLinkReferrer$ConnectionListener;

    .line 60
    new-instance v2, Lcom/superwall/sdk/web/DeepLinkReferrer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/superwall/sdk/web/DeepLinkReferrer$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/web/DeepLinkReferrer;)V

    new-instance v3, Lcom/superwall/sdk/web/DeepLinkReferrer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/web/DeepLinkReferrer;I)V

    .line 61
    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/web/DeepLinkReferrer$ConnectionListener;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final tryConnecting$lambda$2$lambda$0(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;
    .locals 0

    if-nez p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    :cond_1
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 73
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final tryConnecting$lambda$2$lambda$1(Lcom/superwall/sdk/web/DeepLinkReferrer;I)Lkotlin/Unit;
    .locals 0

    add-int/lit16 p1, p1, 0x3e8

    .line 75
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer;->tryConnecting(I)V

    .line 76
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public checkForReferral-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;

    iget v1, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;-><init>(Lcom/superwall/sdk/web/DeepLinkReferrer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/web/DeepLinkReferrer;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    :try_start_1
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v2, 0x1e

    invoke-static {v2, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    new-instance p1, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$2;

    invoke-direct {p1, p0, v4}, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$2;-><init>(Lcom/superwall/sdk/web/DeepLinkReferrer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 104
    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 105
    invoke-direct {v0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getUrlParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 106
    :cond_5
    const-string v1, "code"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object p1, v4

    .line 107
    :goto_2
    invoke-direct {v0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 108
    :cond_7
    iput-object v4, v0, Lcom/superwall/sdk/web/DeepLinkReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-nez p1, :cond_8

    .line 110
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Play store cannot connect"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 112
    :cond_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 116
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handleDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/superwall/sdk/deeplinks/DeepLinkRouterKt;->getRedeemableCode(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 122
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 123
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 124
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->webEntitlements:Lcom/superwall/sdk/logger/LogScope;

    const/16 v8, 0x18

    const/4 v9, 0x0

    .line 122
    const-string v5, "Successfully extracted code from deep link"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 127
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 128
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 129
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 130
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->webEntitlements:Lcom/superwall/sdk/logger/LogScope;

    const/4 v5, 0x2

    .line 134
    new-array v5, v5, [Lkotlin/Pair;

    const-string v6, "URL"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "Error"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v5, v1

    .line 133
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 128
    const-string v5, "Failed to extract code from deep link"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public final tryConnecting(I)V
    .locals 9

    const/4 v0, 0x0

    .line 59
    :try_start_0
    new-instance v1, Lcom/superwall/sdk/web/DeepLinkReferrer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/superwall/sdk/web/DeepLinkReferrer$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/web/DeepLinkReferrer;I)V

    if-nez p1, :cond_0

    .line 81
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->scope:Lcom/superwall/sdk/misc/IOScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/web/DeepLinkReferrer$tryConnecting$1;

    invoke-direct {v2, p1, v1, v0}, Lcom/superwall/sdk/web/DeepLinkReferrer$tryConnecting$1;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 90
    :catchall_0
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    invoke-direct {p0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->getReferrerClient()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 92
    :cond_1
    iput-object v0, p0, Lcom/superwall/sdk/web/DeepLinkReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
