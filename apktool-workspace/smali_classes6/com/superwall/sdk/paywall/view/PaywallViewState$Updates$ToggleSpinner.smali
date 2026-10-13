.class public final Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;
.super Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;
.source "PaywallViewState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToggleSpinner"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
        "hidden",
        "",
        "<init>",
        "(Z)V",
        "getHidden",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final hidden:Z


# direct methods
.method public static synthetic $r8$lambda$5XPcUMjFJvPq90asHFHJSZTzvBA(ZLcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->_init_$lambda$0(ZLcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 302
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner$$ExternalSyntheticLambda0;-><init>(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    return-void
.end method

.method private static final _init_$lambda$0(ZLcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 26

    move-object/from16 v1, p1

    const-string v0, "state"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 305
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$ManualLoading;

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;

    if-eqz v0, :cond_2

    .line 308
    :cond_0
    sget-object v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    move-object v15, v0

    check-cast v15, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    const v24, 0x3fdfff

    const/16 v25, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v1 .. v25}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->copy$default(Lcom/superwall/sdk/paywall/view/PaywallViewState;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    return-object v0

    .line 315
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    if-eqz v0, :cond_2

    .line 318
    sget-object v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$ManualLoading;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$ManualLoading;

    move-object v15, v0

    check-cast v15, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    const v24, 0x3fdfff

    const/16 v25, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p1

    .line 316
    invoke-static/range {v1 .. v25}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->copy$default(Lcom/superwall/sdk/paywall/view/PaywallViewState;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p1
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;ZILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->copy(Z)Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    return v0
.end method

.method public final copy(Z)Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getHidden()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;->hidden:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ToggleSpinner(hidden="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
