.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnActivityEntersBackground$1;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityEntersBackground$1\n+ 2 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n1#1,138:1\n309#2,2:139\n*E\n"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$OnActivityEntersBackground$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 139
    sget-object v0, Lexpo/modules/location/AppForegroundedSingleton;->INSTANCE:Lexpo/modules/location/AppForegroundedSingleton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/location/AppForegroundedSingleton;->setForegrounded(Z)V

    return-void
.end method
