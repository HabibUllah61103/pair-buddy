.class public final synthetic Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/views/ExpoComposeAndroidView;

.field public final synthetic f$1:Lexpo/modules/kotlin/views/ComposableScope;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Lexpo/modules/kotlin/views/ComposableScope;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/kotlin/views/ExpoComposeAndroidView;

    iput-object p2, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;->f$1:Lexpo/modules/kotlin/views/ComposableScope;

    iput p3, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/kotlin/views/ExpoComposeAndroidView;

    iget-object v1, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;->f$1:Lexpo/modules/kotlin/views/ComposableScope;

    iget v2, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, v2, p1, p2}, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->$r8$lambda$9j6VfZzkbxj4QDneZmYMAsaQEAc(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
