.class final Lexpo/modules/constants/ConstantsModule$definition$1$1;
.super Ljava/lang/Object;
.source "ConstantsModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/constants/ConstantsModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstantsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantsModule.kt\nexpo/modules/constants/ConstantsModule$definition$1$1\n+ 2 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 3 ServicesRegistry.kt\nexpo/modules/kotlin/services/ServicesRegistry\n*L\n1#1,22:1\n172#2:23\n55#3:24\n*S KotlinDebug\n*F\n+ 1 ConstantsModule.kt\nexpo/modules/constants/ConstantsModule$definition$1$1\n*L\n14#1:23\n14#1:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/constants/ConstantsModule;


# direct methods
.method constructor <init>(Lexpo/modules/constants/ConstantsModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/constants/ConstantsModule$definition$1$1;->this$0:Lexpo/modules/constants/ConstantsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsModule$definition$1$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/constants/ConstantsModule$definition$1$1;->this$0:Lexpo/modules/constants/ConstantsModule;

    invoke-virtual {v0}, Lexpo/modules/constants/ConstantsModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getServices()Lexpo/modules/kotlin/services/ServicesRegistry;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/constants/ConstantsInterface;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lexpo/modules/interfaces/constants/ConstantsInterface;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lexpo/modules/interfaces/constants/ConstantsInterface;

    check-cast v0, Lexpo/modules/kotlin/services/Service;

    .line 14
    check-cast v0, Lexpo/modules/interfaces/constants/ConstantsInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lexpo/modules/interfaces/constants/ConstantsInterface;->getConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
