.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n1#1,252:1\n198#2,11:253\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 253
    iget-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {p2}, Lexpo/modules/location/LocationModule;->access$isMissingForegroundPermissions(Lexpo/modules/location/LocationModule;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 258
    iget-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {p2}, Lexpo/modules/location/LocationModule;->access$getMHeadingId$p(Lexpo/modules/location/LocationModule;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 259
    iget-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {p1}, Lexpo/modules/location/LocationModule;->access$destroyHeadingWatch(Lexpo/modules/location/LocationModule;)V

    return-void

    .line 261
    :cond_0
    iget-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {p2, p1}, Lexpo/modules/location/LocationModule;->access$removeLocationUpdatesForRequest(Lexpo/modules/location/LocationModule;I)V

    return-void

    .line 254
    :cond_1
    new-instance p1, Lexpo/modules/location/LocationUnauthorizedException;

    invoke-direct {p1}, Lexpo/modules/location/LocationUnauthorizedException;-><init>()V

    throw p1
.end method
