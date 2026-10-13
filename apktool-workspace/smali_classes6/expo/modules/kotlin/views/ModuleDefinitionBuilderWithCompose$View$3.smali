.class public final Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;
.super Ljava/lang/Object;
.source "ModuleDefinitionBuilderComposeExtension.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;->ComposeView$default(Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder<",
        "TProps;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;

    invoke-direct {v0}, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;->INSTANCE:Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose$View$3;->invoke(Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder<",
            "TProps;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
