.class public final Lcom/superwall/sdk/storage/core_data/Converters;
.super Ljava/lang/Object;
.source "Converters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/storage/core_data/Converters$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConverters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Converters.kt\ncom/superwall/sdk/storage/core_data/Converters\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,128:1\n503#2,7:129\n*S KotlinDebug\n*F\n+ 1 Converters.kt\ncom/superwall/sdk/storage/core_data/Converters\n*L\n49#1:129,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007H\u0007J\u001c\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u0010J&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/core_data/Converters;",
        "",
        "<init>",
        "()V",
        "fromMap",
        "",
        "map",
        "",
        "toMap",
        "json",
        "toDate",
        "Ljava/util/Date;",
        "timestamp",
        "",
        "toTimestamp",
        "date",
        "(Ljava/util/Date;)Ljava/lang/Long;",
        "sanitizeMap",
        "Companion",
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
.field public static final Companion:Lcom/superwall/sdk/storage/core_data/Converters$Companion;

.field private static final jsonParser$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/json/Json;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$wXJdhNjcczVtOy3RCIyougeDIiU()Lkotlinx/serialization/json/Json;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/storage/core_data/Converters;->jsonParser_delegate$lambda$2()Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$zPBCkzUQ2LzxCpbrsYGJas1UGVk(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/storage/core_data/Converters;->jsonParser_delegate$lambda$2$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/storage/core_data/Converters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/storage/core_data/Converters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/storage/core_data/Converters;->Companion:Lcom/superwall/sdk/storage/core_data/Converters$Companion;

    .line 25
    new-instance v0, Lcom/superwall/sdk/storage/core_data/Converters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/storage/core_data/Converters$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/storage/core_data/Converters;->jsonParser$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJsonParser$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 23
    sget-object v0, Lcom/superwall/sdk/storage/core_data/Converters;->jsonParser$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final jsonParser_delegate$lambda$2()Lkotlinx/serialization/json/Json;
    .locals 3

    .line 26
    new-instance v0, Lcom/superwall/sdk/storage/core_data/Converters$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/superwall/sdk/storage/core_data/Converters$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method private static final jsonParser_delegate$lambda$2$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setLenient(Z)V

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final fromMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/superwall/sdk/storage/core_data/Converters;->Companion:Lcom/superwall/sdk/storage/core_data/Converters$Companion;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/Converters$Companion;->access$getJsonParser(Lcom/superwall/sdk/storage/core_data/Converters$Companion;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/storage/core_data/Converters;->sanitizeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->fromTypedMap(Lkotlinx/serialization/json/Json;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sanitizeMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 130
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 51
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/util/Date;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_1

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_2
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final toDate(J)Ljava/util/Date;
    .locals 1

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final toMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/superwall/sdk/storage/core_data/Converters;->Companion:Lcom/superwall/sdk/storage/core_data/Converters$Companion;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/Converters$Companion;->access$getJsonParser(Lcom/superwall/sdk/storage/core_data/Converters$Companion;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->toTypedMap(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/storage/core_data/Converters;->sanitizeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final toTimestamp(Ljava/util/Date;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
