.class public final Lcom/superwall/sdk/network/device/CapabilityKt;
.super Ljava/lang/Object;
.source "Capability.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCapability.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Capability.kt\ncom/superwall/sdk/network/device/CapabilityKt\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n52#2,2:64\n29#2,2:67\n31#2:73\n54#2:75\n1863#3:66\n1557#3:69\n1628#3,3:70\n1864#3:74\n*S KotlinDebug\n*F\n+ 1 Capability.kt\ncom/superwall/sdk/network/device/CapabilityKt\n*L\n42#1:64,2\n45#1:67,2\n45#1:73\n42#1:75\n43#1:66\n54#1:69\n54#1:70,3\n43#1:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0000\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "toJson",
        "Lkotlinx/serialization/json/JsonElement;",
        "",
        "Lcom/superwall/sdk/network/device/Capability;",
        "namesCommaSeparated",
        "",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$sb7SaRDVqjzBasZkb68vBkE3nTA(Lcom/superwall/sdk/network/device/Capability;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/device/CapabilityKt;->namesCommaSeparated$lambda$4(Lcom/superwall/sdk/network/device/Capability;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final namesCommaSeparated(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/network/device/Capability;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    const-string p0, ","

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/superwall/sdk/network/device/CapabilityKt$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/superwall/sdk/network/device/CapabilityKt$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final namesCommaSeparated$lambda$4(Lcom/superwall/sdk/network/device/Capability;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/superwall/sdk/network/device/Capability;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final toJson(Ljava/util/List;)Lkotlinx/serialization/json/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/network/device/Capability;",
            ">;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lkotlinx/serialization/json/JsonArrayBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonArrayBuilder;-><init>()V

    .line 43
    check-cast p0, Ljava/lang/Iterable;

    .line 66
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/network/device/Capability;

    .line 67
    new-instance v2, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v2}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 49
    const-string v3, "type"

    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/Capability;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 50
    const-string v3, "name"

    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/Capability;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 51
    instance-of v3, v1, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;

    if-eqz v3, :cond_1

    .line 54
    check-cast v1, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;->getEventNames()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 54
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    .line 71
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 54
    new-instance v1, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, v3}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 52
    const-string v3, "event_names"

    invoke-virtual {v2, v3, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 73
    :cond_1
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 44
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonArrayBuilder;->add(Lkotlinx/serialization/json/JsonElement;)Z

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArrayBuilder;->build()Lkotlinx/serialization/json/JsonArray;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0
.end method
