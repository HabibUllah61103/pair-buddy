.class public final Lcom/superwall/sdk/debug/localizations/LocalizationLogic;
.super Ljava/lang/Object;
.source "LocalizationLogic.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalizationLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalizationLogic.kt\ncom/superwall/sdk/debug/localizations/LocalizationLogic\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1010#2,2:64\n*S KotlinDebug\n*F\n+ 1 LocalizationLogic.kt\ncom/superwall/sdk/debug/localizations/LocalizationLogic\n*L\n42#1:64,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005J\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/localizations/LocalizationLogic;",
        "",
        "<init>",
        "()V",
        "getSortedLocalizations",
        "",
        "Lcom/superwall/sdk/debug/localizations/LocalizationOption;",
        "localeIds",
        "",
        "popularLocales",
        "getGroupings",
        "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
        "localizationOptions",
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


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/debug/localizations/LocalizationLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;

    invoke-direct {v0}, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;-><init>()V

    sput-object v0, Lcom/superwall/sdk/debug/localizations/LocalizationLogic;->INSTANCE:Lcom/superwall/sdk/debug/localizations/LocalizationLogic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGroupings(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationOption;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
            ">;"
        }
    .end annotation

    const-string v0, "localizationOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/debug/localizations/LocalizationOption;

    .line 50
    invoke-virtual {v1}, Lcom/superwall/sdk/debug/localizations/LocalizationOption;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v3}, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    new-instance v3, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v4, v2}, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;

    invoke-virtual {v2}, Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;->getLocalizations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getSortedLocalizations(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationOption;",
            ">;"
        }
    .end annotation

    const-string v0, "localeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popularLocales"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 16
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_"

    aput-object v7, v5, v6

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 19
    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getDisplayLanguage(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-string v6, ""

    if-lez v5, :cond_0

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    new-instance v5, Ljava/util/Locale;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 27
    :goto_1
    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getDisplayCountry(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 28
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    new-instance v2, Ljava/util/Locale;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v6, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 32
    :goto_2
    new-instance v3, Lcom/superwall/sdk/debug/localizations/LocalizationOption;

    invoke-direct {v3, v5, v2, v1, p2}, Lcom/superwall/sdk/debug/localizations/LocalizationOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_5

    new-instance p1, Lcom/superwall/sdk/debug/localizations/LocalizationLogic$getSortedLocalizations$$inlined$sortBy$1;

    invoke-direct {p1}, Lcom/superwall/sdk/debug/localizations/LocalizationLogic$getSortedLocalizations$$inlined$sortBy$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    return-object v0
.end method
