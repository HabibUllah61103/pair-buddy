.class public final Lcom/superwall/sdk/paywall/view/PaywallViewState;
.super Ljava/lang/Object;
.source "PaywallViewState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001oB\u0085\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0015\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010%\u001a\u00020&\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(\u00a2\u0006\u0004\u0008)\u0010*J\u0008\u0010T\u001a\u00020\u0005H\u0016J\t\u0010U\u001a\u00020\u0003H\u00c6\u0003J\t\u0010V\u001a\u00020\u0005H\u00c6\u0003J\t\u0010W\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010Y\u001a\u00020\u000bH\u00c6\u0003J\u0011\u0010Z\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u0011\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u00c6\u0003J\t\u0010]\u001a\u00020\u0015H\u00c6\u0003J\u0017\u0010^\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0017H\u00c6\u0003J\t\u0010_\u001a\u00020\u0015H\u00c6\u0003J\t\u0010`\u001a\u00020\u0015H\u00c6\u0003J\t\u0010a\u001a\u00020\u001bH\u00c6\u0003J\t\u0010b\u001a\u00020\u001dH\u00c6\u0003J\t\u0010c\u001a\u00020\u0015H\u00c6\u0003J\t\u0010d\u001a\u00020\u0015H\u00c6\u0003J\t\u0010e\u001a\u00020\u0015H\u00c6\u0003J\t\u0010f\u001a\u00020\u0015H\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010#H\u00c6\u0003J\t\u0010h\u001a\u00020\u0015H\u00c6\u0003J\t\u0010i\u001a\u00020&H\u00c6\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010(H\u00c6\u0003J\u008b\u0002\u0010k\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00152\u0008\u0008\u0002\u0010!\u001a\u00020\u00152\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0008\u0002\u0010$\u001a\u00020\u00152\u0008\u0008\u0002\u0010%\u001a\u00020&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(H\u00c6\u0001J\u0013\u0010l\u001a\u00020\u00152\u0008\u0010m\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010n\u001a\u00020&H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0019\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u001f\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u0011\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010<R\u0011\u0010\u0019\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010<R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0011\u0010\u001e\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010<R\u0011\u0010\u001f\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010<R\u0011\u0010 \u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010<R\u0011\u0010!\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010<R\u0013\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010HR\u0011\u0010$\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010<R\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0013\u0010\'\u001a\u0004\u0018\u00010(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u0011\u0010N\u001a\u00020O8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010QR\u0014\u0010R\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010.\u00a8\u0006p"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
        "",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "locale",
        "",
        "customerInfo",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "presentationStyle",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "paywallStatePublisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "paywallResult",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "dismissCompletionBlock",
        "Lkotlin/Function0;",
        "",
        "callbackInvoked",
        "",
        "viewCreatedCompletion",
        "Lkotlin/Function1;",
        "isBrowserViewPresented",
        "interceptTouchEvents",
        "surveyPresentationResult",
        "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
        "loadingState",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
        "isPresented",
        "presentationWillPrepare",
        "presentationDidFinishPrepare",
        "didDisableSwipeForSurvey",
        "unsavedOccurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "useMultipleUrls",
        "crashRetries",
        "",
        "lastOpen",
        "Ljava/util/Date;",
        "<init>",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)V",
        "getPaywall",
        "()Lcom/superwall/sdk/models/paywall/Paywall;",
        "getLocale",
        "()Ljava/lang/String;",
        "getCustomerInfo",
        "()Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "getRequest",
        "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "getPresentationStyle",
        "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "getPaywallStatePublisher",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "getPaywallResult",
        "()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "getDismissCompletionBlock",
        "()Lkotlin/jvm/functions/Function0;",
        "getCallbackInvoked",
        "()Z",
        "getViewCreatedCompletion",
        "()Lkotlin/jvm/functions/Function1;",
        "getInterceptTouchEvents",
        "getSurveyPresentationResult",
        "()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
        "getLoadingState",
        "()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
        "getPresentationWillPrepare",
        "getPresentationDidFinishPrepare",
        "getDidDisableSwipeForSurvey",
        "getUnsavedOccurrence",
        "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "getUseMultipleUrls",
        "getCrashRetries",
        "()I",
        "getLastOpen",
        "()Ljava/util/Date;",
        "info",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "getInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "cacheKey",
        "getCacheKey$superwall_release",
        "toString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "copy",
        "equals",
        "other",
        "hashCode",
        "Updates",
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
.field private final cacheKey:Ljava/lang/String;

.field private final callbackInvoked:Z

.field private final crashRetries:I

.field private final customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

.field private final didDisableSwipeForSurvey:Z

.field private final dismissCompletionBlock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptTouchEvents:Z

.field private final isBrowserViewPresented:Z

.field private final isPresented:Z

.field private final lastOpen:Ljava/util/Date;

.field private final loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

.field private final locale:Ljava/lang/String;

.field private final paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field private final paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

.field private final paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation
.end field

.field private final presentationDidFinishPrepare:Z

.field private final presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

.field private final presentationWillPrepare:Z

.field private final request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

.field private final surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

.field private final unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

.field private final useMultipleUrls:Z

.field private final viewCreatedCompletion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;ZZ",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
            "ZZZZ",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "ZI",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    move-object/from16 v1, p14

    const-string v2, "paywall"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "locale"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customerInfo"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "presentationStyle"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "surveyPresentationResult"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loadingState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 22
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    .line 23
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    .line 24
    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 25
    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 27
    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    .line 28
    iput-boolean p9, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    .line 29
    iput-object p10, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    .line 31
    iput-boolean p11, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    .line 32
    iput-boolean p12, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    .line 34
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    .line 35
    iput-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move/from16 p3, p15

    .line 37
    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    move/from16 p3, p16

    .line 38
    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    move/from16 p3, p17

    .line 39
    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    move/from16 p3, p18

    .line 41
    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    move-object/from16 p3, p19

    .line 43
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move/from16 p3, p20

    .line 44
    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    move/from16 p3, p21

    .line 45
    iput p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    move-object/from16 p3, p22

    .line 47
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    .line 55
    sget-object p3, Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;->INSTANCE:Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 25

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getPresentation()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->getStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    move v11, v3

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move v13, v3

    goto :goto_8

    :cond_8
    move/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v14, v3

    goto :goto_9

    :cond_9
    move/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 34
    sget-object v1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->NOSHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    move-object v15, v1

    goto :goto_a

    :cond_a
    move-object/from16 v15, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    .line 35
    sget-object v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Unknown;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Unknown;

    check-cast v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-object/from16 v16, v1

    goto :goto_b

    :cond_b
    move-object/from16 v16, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move/from16 v17, v3

    goto :goto_c

    :cond_c
    move/from16 v17, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_d

    :cond_d
    move/from16 v18, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v19, v3

    goto :goto_e

    :cond_e
    move/from16 v19, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v20, v3

    goto :goto_f

    :cond_f
    move/from16 v20, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v21, v2

    goto :goto_10

    :cond_10
    move-object/from16 v21, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move/from16 v22, v3

    goto :goto_11

    :cond_11
    move/from16 v22, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v23, v3

    goto :goto_12

    :cond_12
    move/from16 v23, p21

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move-object/from16 v24, v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p0

    goto :goto_13

    :cond_13
    move-object/from16 v24, p22

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 18
    :goto_13
    invoke-direct/range {v2 .. v24}, Lcom/superwall/sdk/paywall/view/PaywallViewState;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/PaywallViewState;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p23, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p23, v16

    move/from16 p3, v1

    if-eqz v16, :cond_11

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p23, v16

    move/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p23, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    goto :goto_13

    :cond_13
    move/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p23, v16

    move/from16 p6, v1

    if-eqz v16, :cond_14

    iget v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    goto :goto_14

    :cond_14
    move/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p23, v16

    if-eqz v16, :cond_15

    move/from16 p7, v1

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    move/from16 p22, p7

    move-object/from16 p23, v1

    goto :goto_15

    :cond_15
    move-object/from16 p23, p22

    move/from16 p22, v1

    :goto_15
    move/from16 p17, p2

    move/from16 p18, p3

    move/from16 p19, p4

    move-object/from16 p20, p5

    move/from16 p21, p6

    move/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p23}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->copy(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    return-object v0
.end method

.method public final component10()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    return v0
.end method

.method public final component13()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    return-object v0
.end method

.method public final component14()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    return-object v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    return v0
.end method

.method public final component17()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    return v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    return v0
.end method

.method public final component19()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    return v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    return v0
.end method

.method public final component22()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    return-object v0
.end method

.method public final component5()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    return-object v0
.end method

.method public final component6()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public final component7()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    return-object v0
.end method

.method public final component8()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    return v0
.end method

.method public final copy(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;ZZ",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
            "ZZZZ",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "ZI",
            "Ljava/util/Date;",
            ")",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState;"
        }
    .end annotation

    const-string v0, "paywall"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerInfo"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentationStyle"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveyPresentationResult"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingState"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    invoke-direct/range {v1 .. v23}, Lcom/superwall/sdk/paywall/view/PaywallViewState;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getCacheKey$superwall_release()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallbackInvoked()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    return v0
.end method

.method public final getCrashRetries()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    return v0
.end method

.method public final getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final getDidDisableSwipeForSurvey()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    return v0
.end method

.method public final getDismissCompletionBlock()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 46

    move-object/from16 v0, p0

    .line 51
    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    .line 52
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getInfo(Lcom/superwall/sdk/models/events/EventData;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v3

    .line 53
    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    const/16 v44, 0x3f

    const/16 v45, 0x0

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

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, -0x1

    move-object/from16 v42, v1

    invoke-static/range {v3 .. v45}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->copy-zhR-ERg$default(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;IILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    return-object v1
.end method

.method public final getInterceptTouchEvents()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    return v0
.end method

.method public final getLastOpen()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    return-object v0
.end method

.method public final getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    return-object v0
.end method

.method public final getPaywallResult()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    return-object v0
.end method

.method public final getPaywallStatePublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public final getPresentationDidFinishPrepare()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    return v0
.end method

.method public final getPresentationStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    return-object v0
.end method

.method public final getPresentationWillPrepare()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    return v0
.end method

.method public final getRequest()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    return-object v0
.end method

.method public final getSurveyPresentationResult()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    return-object v0
.end method

.method public final getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-object v0
.end method

.method public final getUseMultipleUrls()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    return v0
.end method

.method public final getViewCreatedCompletion()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->locale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->didDisableSwipeForSurvey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->crashRetries:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->lastOpen:Ljava/util/Date;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final isBrowserViewPresented()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    return v0
.end method

.method public final isPresented()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 59
    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    .line 61
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->loadingState:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    .line 62
    iget-boolean v4, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented:Z

    .line 63
    iget-boolean v5, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationWillPrepare:Z

    .line 64
    iget-boolean v6, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->presentationDidFinishPrepare:Z

    .line 65
    iget-boolean v7, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->callbackInvoked:Z

    .line 66
    iget-boolean v8, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented:Z

    .line 67
    iget-boolean v9, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->interceptTouchEvents:Z

    .line 68
    iget-object v10, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->surveyPresentationResult:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    .line 69
    iget-object v11, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallResult:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 70
    iget-object v12, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 71
    :goto_0
    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 72
    :goto_1
    iget-object v13, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 73
    :goto_2
    iget-object v14, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->viewCreatedCompletion:Lkotlin/jvm/functions/Function1;

    if-eqz v14, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    .line 74
    :goto_3
    iget-object v14, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->dismissCompletionBlock:Lkotlin/jvm/functions/Function0;

    if-eqz v14, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 75
    :goto_4
    iget-boolean v14, v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;->useMultipleUrls:Z

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v18, v14

    const-string v14, "PaywallViewState(\n            |  paywallId: "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  presentationStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  loadingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  isPresented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  presentationWillPrepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  presentationDidFinishPrepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  callbackInvoked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  isBrowserViewPresented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  interceptTouchEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  surveyPresentationResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  paywallResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  hasRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  hasStatePublisher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  hasUnsavedOccurrence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  hasViewCreatedCompletion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  hasDismissCompletionBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |  useMultipleUrls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            |)\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-static {v0, v1, v2, v1}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
