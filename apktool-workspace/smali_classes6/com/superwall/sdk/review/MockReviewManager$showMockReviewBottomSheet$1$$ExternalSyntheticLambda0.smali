.class public final synthetic Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$r8$lambda$TKaU-aEXMU8DpCj_7SfW2x_X6To(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
