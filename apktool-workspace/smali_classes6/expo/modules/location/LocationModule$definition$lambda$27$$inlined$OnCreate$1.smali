.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;
.super Ljava/lang/Object;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 LocationModule.kt\nexpo/modules/location/LocationModule\n+ 3 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n1#1,110:1\n90#2,2:111\n92#2,4:118\n161#3,5:113\n*S KotlinDebug\n*F\n+ 1 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n91#1:113,5\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/location/LocationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 111
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;->this$0:Lexpo/modules/location/LocationModule;

    invoke-virtual {v0}, Lexpo/modules/location/LocationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0, v1}, Lexpo/modules/location/LocationModule;->access$setMContext$p(Lexpo/modules/location/LocationModule;Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;->this$0:Lexpo/modules/location/LocationModule;

    invoke-virtual {v0}, Lexpo/modules/location/LocationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    :try_start_0
    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v1

    const-class v3, Lexpo/modules/core/interfaces/services/UIManager;

    invoke-virtual {v1, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    .line 112
    :goto_0
    check-cast v1, Lexpo/modules/core/interfaces/services/UIManager;

    if-eqz v1, :cond_4

    invoke-static {v0, v1}, Lexpo/modules/location/LocationModule;->access$setMUIManager$p(Lexpo/modules/location/LocationModule;Lexpo/modules/core/interfaces/services/UIManager;)V

    .line 118
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v0}, Lexpo/modules/location/LocationModule;->access$getMContext$p(Lexpo/modules/location/LocationModule;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "mContext"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v1

    invoke-static {v0, v1}, Lexpo/modules/location/LocationModule;->access$setMLocationProvider$p(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    .line 119
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnCreate$1;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v0}, Lexpo/modules/location/LocationModule;->access$getMContext$p(Lexpo/modules/location/LocationModule;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/hardware/SensorManager;

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v0, v2}, Lexpo/modules/location/LocationModule;->access$setMSensorManager$p(Lexpo/modules/location/LocationModule;Landroid/hardware/SensorManager;)V

    return-void

    .line 120
    :cond_3
    new-instance v0, Lexpo/modules/location/SensorManagerUnavailable;

    invoke-direct {v0}, Lexpo/modules/location/SensorManagerUnavailable;-><init>()V

    throw v0

    .line 112
    :cond_4
    new-instance v0, Lexpo/modules/location/MissingUIManagerException;

    invoke-direct {v0}, Lexpo/modules/location/MissingUIManagerException;-><init>()V

    throw v0

    .line 111
    :cond_5
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method
