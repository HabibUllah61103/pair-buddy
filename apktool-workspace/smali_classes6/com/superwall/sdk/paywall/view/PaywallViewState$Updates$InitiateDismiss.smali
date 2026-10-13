.class public final Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;
.super Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;
.source "PaywallViewState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitiateDismiss"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
        "result",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "closeReason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "completion",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;)V",
        "getResult",
        "()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "getCloseReason",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "getCompletion",
        "()Lkotlin/jvm/functions/Function0;",
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
.field private final closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

.field private final completion:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;


# direct methods
.method public static synthetic $r8$lambda$QSc_pqKzO_nqW4CNBftq03FtYK0(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->_init_$lambda$0(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 161
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 162
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->completion:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 46

    const-string v0, "state"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v2

    const/16 v44, 0x7f

    const/16 v45, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const v43, -0x40000001    # -1.9999999f

    move-object/from16 v34, p0

    invoke-static/range {v2 .. v45}, Lcom/superwall/sdk/models/paywall/Paywall;->copy-zhR-ERg$default(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;IILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v2

    const v24, 0x3fff3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 164
    invoke-static/range {v1 .. v25}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->copy$default(Lcom/superwall/sdk/paywall/view/PaywallViewState;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    return-object v0
.end method

.method public final getCompletion()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->completion:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getResult()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    return-object v0
.end method
