.class public final synthetic Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ui/DrawStopIndicatorConfig;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ui/DrawStopIndicatorConfig;JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;->f$0:Lexpo/modules/ui/DrawStopIndicatorConfig;

    iput-wide p2, p0, Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;->f$1:J

    iput p4, p0, Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;->f$0:Lexpo/modules/ui/DrawStopIndicatorConfig;

    iget-wide v1, p0, Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;->f$1:J

    iget v3, p0, Lexpo/modules/ui/ProgressViewKt$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {v0, v1, v2, v3, p1}, Lexpo/modules/ui/ProgressViewKt;->$r8$lambda$kGT_SboRnShwk3X1CEEQuYB17ps(Lexpo/modules/ui/DrawStopIndicatorConfig;JILandroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
