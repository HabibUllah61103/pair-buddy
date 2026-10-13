.class public final Lcom/superwall/sdk/debug/localizations/LocalizationManager;
.super Ljava/lang/Object;
.source "LocalizationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalizationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalizationManager.kt\ncom/superwall/sdk/debug/localizations/LocalizationManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n11165#2:44\n11500#2,3:45\n1611#3,9:48\n1863#3:57\n774#3:58\n865#3,2:59\n1864#3:62\n1620#3:63\n1#4:61\n*S KotlinDebug\n*F\n+ 1 LocalizationManager.kt\ncom/superwall/sdk/debug/localizations/LocalizationManager\n*L\n10#1:44\n10#1:45,3\n26#1:48,9\n26#1:57\n29#1:58\n29#1:59,2\n26#1:62\n26#1:63\n26#1:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/localizations/LocalizationManager;",
        "",
        "<init>",
        "()V",
        "popularLocales",
        "",
        "",
        "getPopularLocales",
        "()Ljava/util/List;",
        "localizationGroupings",
        "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
        "getLocalizationGroupings",
        "searchTerm",
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
.field private final localizationGroupings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
            ">;"
        }
    .end annotation
.end field

.field private final popularLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de_DE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "es_US"

    aput-object v3, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->popularLocales:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getAvailableLocales(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 45
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 46
    check-cast v4, Ljava/util/Locale;

    .line 10
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 12
    sget-object v0, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;->INSTANCE:Lcom/superwall/sdk/debug/localizations/LocalizationLogic;

    .line 14
    iget-object v2, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->popularLocales:Ljava/util/List;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;->getSortedLocalizations(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;->INSTANCE:Lcom/superwall/sdk/debug/localizations/LocalizationLogic;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;->getGroupings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->localizationGroupings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getLocalizationGroupings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->localizationGroupings:Ljava/util/List;

    return-object v0
.end method

.method public final getPopularLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->popularLocales:Ljava/util/List;

    return-object v0
.end method

.method public final localizationGroupings(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 20
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 22
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 23
    iget-object p1, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->localizationGroupings:Ljava/util/List;

    return-object p1

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->localizationGroupings:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    check-cast v2, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;

    .line 28
    invoke-virtual {v2}, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;->getLocalizations()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 59
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/superwall/sdk/debug/localizations/LocalizationOption;

    .line 30
    invoke-virtual {v6, p1}, Lcom/superwall/sdk/debug/localizations/LocalizationOption;->included(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 59
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 58
    check-cast v4, Ljava/util/Collection;

    .line 31
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 32
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 33
    new-instance v4, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;

    .line 35
    invoke-virtual {v2}, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-direct {v4, v3, v2}, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 56
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_7
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
