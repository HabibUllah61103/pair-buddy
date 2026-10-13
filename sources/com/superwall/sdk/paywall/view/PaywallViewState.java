package com.superwall.sdk.paywall.view;

import com.facebook.hermes.intl.Constants;
import com.facebook.react.uimanager.ViewProps;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.PaywallPresentationStyle;
import com.superwall.sdk.models.triggers.TriggerRuleOccurrence;
import com.superwall.sdk.paywall.manager.PaywallCacheLogic;
import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.paywall.view.survey.SurveyPresentationResult;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: PaywallViewState.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b!\b\u0086\b\u0018\u00002\u00020\u0001:\u0001oB\u0085\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0016\b\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0015\u0012\b\b\u0002\u0010 \u001a\u00020\u0015\u0012\b\b\u0002\u0010!\u001a\u00020\u0015\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\b\b\u0002\u0010$\u001a\u00020\u0015\u0012\b\b\u0002\u0010%\u001a\u00020&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(¢\u0006\u0004\b)\u0010*J\b\u0010T\u001a\u00020\u0005H\u0016J\t\u0010U\u001a\u00020\u0003HÆ\u0003J\t\u0010V\u001a\u00020\u0005HÆ\u0003J\t\u0010W\u001a\u00020\u0007HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010Y\u001a\u00020\u000bHÆ\u0003J\u0011\u0010Z\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u0011\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012HÆ\u0003J\t\u0010]\u001a\u00020\u0015HÆ\u0003J\u0017\u0010^\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0017HÆ\u0003J\t\u0010_\u001a\u00020\u0015HÆ\u0003J\t\u0010`\u001a\u00020\u0015HÆ\u0003J\t\u0010a\u001a\u00020\u001bHÆ\u0003J\t\u0010b\u001a\u00020\u001dHÆ\u0003J\t\u0010c\u001a\u00020\u0015HÆ\u0003J\t\u0010d\u001a\u00020\u0015HÆ\u0003J\t\u0010e\u001a\u00020\u0015HÆ\u0003J\t\u0010f\u001a\u00020\u0015HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010#HÆ\u0003J\t\u0010h\u001a\u00020\u0015HÆ\u0003J\t\u0010i\u001a\u00020&HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010(HÆ\u0003J\u008b\u0002\u0010k\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u0016\b\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00152\b\b\u0002\u0010\u0019\u001a\u00020\u00152\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u00152\b\b\u0002\u0010\u001f\u001a\u00020\u00152\b\b\u0002\u0010 \u001a\u00020\u00152\b\b\u0002\u0010!\u001a\u00020\u00152\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\b\b\u0002\u0010$\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(HÆ\u0001J\u0013\u0010l\u001a\u00020\u00152\b\u0010m\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010n\u001a\u00020&HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0019\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u001f\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0011\u0010\u0018\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010<R\u0011\u0010\u0019\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b?\u0010<R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0011\u0010\u001e\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010<R\u0011\u0010\u001f\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\bD\u0010<R\u0011\u0010 \u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\bE\u0010<R\u0011\u0010!\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\bF\u0010<R\u0013\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u0011\u0010$\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\bI\u0010<R\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0013\u0010'\u001a\u0004\u0018\u00010(¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0011\u0010N\u001a\u00020O8F¢\u0006\u0006\u001a\u0004\bP\u0010QR\u0014\u0010R\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010.¨\u0006p"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState;", "", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", Constants.LOCALE, "", "customerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "presentationStyle", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "paywallResult", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "dismissCompletionBlock", "Lkotlin/Function0;", "", "callbackInvoked", "", "viewCreatedCompletion", "Lkotlin/Function1;", "isBrowserViewPresented", "interceptTouchEvents", "surveyPresentationResult", "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "loadingState", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "isPresented", "presentationWillPrepare", "presentationDidFinishPrepare", "didDisableSwipeForSurvey", "unsavedOccurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "useMultipleUrls", "crashRetries", "", "lastOpen", "Ljava/util/Date;", "<init>", "(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;)V", "getPaywall", "()Lcom/superwall/sdk/models/paywall/Paywall;", "getLocale", "()Ljava/lang/String;", "getCustomerInfo", "()Lcom/superwall/sdk/models/customer/CustomerInfo;", "getRequest", "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "getPresentationStyle", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "getPaywallStatePublisher", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "getPaywallResult", "()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "getDismissCompletionBlock", "()Lkotlin/jvm/functions/Function0;", "getCallbackInvoked", "()Z", "getViewCreatedCompletion", "()Lkotlin/jvm/functions/Function1;", "getInterceptTouchEvents", "getSurveyPresentationResult", "()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "getLoadingState", "()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "getPresentationWillPrepare", "getPresentationDidFinishPrepare", "getDidDisableSwipeForSurvey", "getUnsavedOccurrence", "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "getUseMultipleUrls", "getCrashRetries", "()I", "getLastOpen", "()Ljava/util/Date;", "info", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "cacheKey", "getCacheKey$superwall_release", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "copy", "equals", "other", "hashCode", "Updates", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class PaywallViewState {
    private final String cacheKey;
    private final boolean callbackInvoked;
    private final int crashRetries;
    private final CustomerInfo customerInfo;
    private final boolean didDisableSwipeForSurvey;
    private final Function0<Unit> dismissCompletionBlock;
    private final boolean interceptTouchEvents;
    private final boolean isBrowserViewPresented;
    private final boolean isPresented;
    private final Date lastOpen;
    private final PaywallLoadingState loadingState;
    private final String locale;
    private final Paywall paywall;
    private final PaywallResult paywallResult;
    private final MutableSharedFlow<PaywallState> paywallStatePublisher;
    private final boolean presentationDidFinishPrepare;
    private final PaywallPresentationStyle presentationStyle;
    private final boolean presentationWillPrepare;
    private final PresentationRequest request;
    private final SurveyPresentationResult surveyPresentationResult;
    private final TriggerRuleOccurrence unsavedOccurrence;
    private final boolean useMultipleUrls;
    private final Function1<Boolean, Unit> viewCreatedCompletion;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaywallViewState copy$default(PaywallViewState paywallViewState, Paywall paywall, String str, CustomerInfo customerInfo, PresentationRequest presentationRequest, PaywallPresentationStyle paywallPresentationStyle, MutableSharedFlow mutableSharedFlow, PaywallResult paywallResult, Function0 function0, boolean z, Function1 function1, boolean z2, boolean z3, SurveyPresentationResult surveyPresentationResult, PaywallLoadingState paywallLoadingState, boolean z4, boolean z5, boolean z6, boolean z7, TriggerRuleOccurrence triggerRuleOccurrence, boolean z8, int i, Date date, int i2, Object obj) {
        Date date2;
        int i3;
        Paywall paywall2 = (i2 & 1) != 0 ? paywallViewState.paywall : paywall;
        String str2 = (i2 & 2) != 0 ? paywallViewState.locale : str;
        CustomerInfo customerInfo2 = (i2 & 4) != 0 ? paywallViewState.customerInfo : customerInfo;
        PresentationRequest presentationRequest2 = (i2 & 8) != 0 ? paywallViewState.request : presentationRequest;
        PaywallPresentationStyle paywallPresentationStyle2 = (i2 & 16) != 0 ? paywallViewState.presentationStyle : paywallPresentationStyle;
        MutableSharedFlow mutableSharedFlow2 = (i2 & 32) != 0 ? paywallViewState.paywallStatePublisher : mutableSharedFlow;
        PaywallResult paywallResult2 = (i2 & 64) != 0 ? paywallViewState.paywallResult : paywallResult;
        Function0 function2 = (i2 & 128) != 0 ? paywallViewState.dismissCompletionBlock : function0;
        boolean z9 = (i2 & 256) != 0 ? paywallViewState.callbackInvoked : z;
        Function1 function3 = (i2 & 512) != 0 ? paywallViewState.viewCreatedCompletion : function1;
        boolean z10 = (i2 & 1024) != 0 ? paywallViewState.isBrowserViewPresented : z2;
        boolean z11 = (i2 & 2048) != 0 ? paywallViewState.interceptTouchEvents : z3;
        SurveyPresentationResult surveyPresentationResult2 = (i2 & 4096) != 0 ? paywallViewState.surveyPresentationResult : surveyPresentationResult;
        PaywallLoadingState paywallLoadingState2 = (i2 & 8192) != 0 ? paywallViewState.loadingState : paywallLoadingState;
        Paywall paywall3 = paywall2;
        boolean z12 = (i2 & 16384) != 0 ? paywallViewState.isPresented : z4;
        boolean z13 = (i2 & 32768) != 0 ? paywallViewState.presentationWillPrepare : z5;
        boolean z14 = (i2 & 65536) != 0 ? paywallViewState.presentationDidFinishPrepare : z6;
        boolean z15 = (i2 & 131072) != 0 ? paywallViewState.didDisableSwipeForSurvey : z7;
        TriggerRuleOccurrence triggerRuleOccurrence2 = (i2 & 262144) != 0 ? paywallViewState.unsavedOccurrence : triggerRuleOccurrence;
        boolean z16 = (i2 & 524288) != 0 ? paywallViewState.useMultipleUrls : z8;
        int i4 = (i2 & 1048576) != 0 ? paywallViewState.crashRetries : i;
        if ((i2 & 2097152) != 0) {
            i3 = i4;
            date2 = paywallViewState.lastOpen;
        } else {
            date2 = date;
            i3 = i4;
        }
        return paywallViewState.copy(paywall3, str2, customerInfo2, presentationRequest2, paywallPresentationStyle2, mutableSharedFlow2, paywallResult2, function2, z9, function3, z10, z11, surveyPresentationResult2, paywallLoadingState2, z12, z13, z14, z15, triggerRuleOccurrence2, z16, i3, date2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Paywall getPaywall() {
        return this.paywall;
    }

    public final Function1<Boolean, Unit> component10() {
        return this.viewCreatedCompletion;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getIsBrowserViewPresented() {
        return this.isBrowserViewPresented;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getInterceptTouchEvents() {
        return this.interceptTouchEvents;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final SurveyPresentationResult getSurveyPresentationResult() {
        return this.surveyPresentationResult;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final PaywallLoadingState getLoadingState() {
        return this.loadingState;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final boolean getIsPresented() {
        return this.isPresented;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final boolean getPresentationWillPrepare() {
        return this.presentationWillPrepare;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final boolean getPresentationDidFinishPrepare() {
        return this.presentationDidFinishPrepare;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final boolean getDidDisableSwipeForSurvey() {
        return this.didDisableSwipeForSurvey;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final TriggerRuleOccurrence getUnsavedOccurrence() {
        return this.unsavedOccurrence;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLocale() {
        return this.locale;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final boolean getUseMultipleUrls() {
        return this.useMultipleUrls;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final int getCrashRetries() {
        return this.crashRetries;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final Date getLastOpen() {
        return this.lastOpen;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PresentationRequest getRequest() {
        return this.request;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final PaywallPresentationStyle getPresentationStyle() {
        return this.presentationStyle;
    }

    public final MutableSharedFlow<PaywallState> component6() {
        return this.paywallStatePublisher;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final PaywallResult getPaywallResult() {
        return this.paywallResult;
    }

    public final Function0<Unit> component8() {
        return this.dismissCompletionBlock;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getCallbackInvoked() {
        return this.callbackInvoked;
    }

    public final PaywallViewState copy(Paywall paywall, String locale, CustomerInfo customerInfo, PresentationRequest request, PaywallPresentationStyle presentationStyle, MutableSharedFlow<PaywallState> paywallStatePublisher, PaywallResult paywallResult, Function0<Unit> dismissCompletionBlock, boolean callbackInvoked, Function1<? super Boolean, Unit> viewCreatedCompletion, boolean isBrowserViewPresented, boolean interceptTouchEvents, SurveyPresentationResult surveyPresentationResult, PaywallLoadingState loadingState, boolean isPresented, boolean presentationWillPrepare, boolean presentationDidFinishPrepare, boolean didDisableSwipeForSurvey, TriggerRuleOccurrence unsavedOccurrence, boolean useMultipleUrls, int crashRetries, Date lastOpen) {
        Intrinsics.checkNotNullParameter(paywall, "paywall");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
        Intrinsics.checkNotNullParameter(presentationStyle, "presentationStyle");
        Intrinsics.checkNotNullParameter(surveyPresentationResult, "surveyPresentationResult");
        Intrinsics.checkNotNullParameter(loadingState, "loadingState");
        return new PaywallViewState(paywall, locale, customerInfo, request, presentationStyle, paywallStatePublisher, paywallResult, dismissCompletionBlock, callbackInvoked, viewCreatedCompletion, isBrowserViewPresented, interceptTouchEvents, surveyPresentationResult, loadingState, isPresented, presentationWillPrepare, presentationDidFinishPrepare, didDisableSwipeForSurvey, unsavedOccurrence, useMultipleUrls, crashRetries, lastOpen);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaywallViewState)) {
            return false;
        }
        PaywallViewState paywallViewState = (PaywallViewState) other;
        return Intrinsics.areEqual(this.paywall, paywallViewState.paywall) && Intrinsics.areEqual(this.locale, paywallViewState.locale) && Intrinsics.areEqual(this.customerInfo, paywallViewState.customerInfo) && Intrinsics.areEqual(this.request, paywallViewState.request) && Intrinsics.areEqual(this.presentationStyle, paywallViewState.presentationStyle) && Intrinsics.areEqual(this.paywallStatePublisher, paywallViewState.paywallStatePublisher) && Intrinsics.areEqual(this.paywallResult, paywallViewState.paywallResult) && Intrinsics.areEqual(this.dismissCompletionBlock, paywallViewState.dismissCompletionBlock) && this.callbackInvoked == paywallViewState.callbackInvoked && Intrinsics.areEqual(this.viewCreatedCompletion, paywallViewState.viewCreatedCompletion) && this.isBrowserViewPresented == paywallViewState.isBrowserViewPresented && this.interceptTouchEvents == paywallViewState.interceptTouchEvents && this.surveyPresentationResult == paywallViewState.surveyPresentationResult && Intrinsics.areEqual(this.loadingState, paywallViewState.loadingState) && this.isPresented == paywallViewState.isPresented && this.presentationWillPrepare == paywallViewState.presentationWillPrepare && this.presentationDidFinishPrepare == paywallViewState.presentationDidFinishPrepare && this.didDisableSwipeForSurvey == paywallViewState.didDisableSwipeForSurvey && Intrinsics.areEqual(this.unsavedOccurrence, paywallViewState.unsavedOccurrence) && this.useMultipleUrls == paywallViewState.useMultipleUrls && this.crashRetries == paywallViewState.crashRetries && Intrinsics.areEqual(this.lastOpen, paywallViewState.lastOpen);
    }

    public int hashCode() {
        int iHashCode = ((((this.paywall.hashCode() * 31) + this.locale.hashCode()) * 31) + this.customerInfo.hashCode()) * 31;
        PresentationRequest presentationRequest = this.request;
        int iHashCode2 = (((iHashCode + (presentationRequest == null ? 0 : presentationRequest.hashCode())) * 31) + this.presentationStyle.hashCode()) * 31;
        MutableSharedFlow<PaywallState> mutableSharedFlow = this.paywallStatePublisher;
        int iHashCode3 = (iHashCode2 + (mutableSharedFlow == null ? 0 : mutableSharedFlow.hashCode())) * 31;
        PaywallResult paywallResult = this.paywallResult;
        int iHashCode4 = (iHashCode3 + (paywallResult == null ? 0 : paywallResult.hashCode())) * 31;
        Function0<Unit> function0 = this.dismissCompletionBlock;
        int iHashCode5 = (((iHashCode4 + (function0 == null ? 0 : function0.hashCode())) * 31) + Boolean.hashCode(this.callbackInvoked)) * 31;
        Function1<Boolean, Unit> function1 = this.viewCreatedCompletion;
        int iHashCode6 = (((((((((((((((((iHashCode5 + (function1 == null ? 0 : function1.hashCode())) * 31) + Boolean.hashCode(this.isBrowserViewPresented)) * 31) + Boolean.hashCode(this.interceptTouchEvents)) * 31) + this.surveyPresentationResult.hashCode()) * 31) + this.loadingState.hashCode()) * 31) + Boolean.hashCode(this.isPresented)) * 31) + Boolean.hashCode(this.presentationWillPrepare)) * 31) + Boolean.hashCode(this.presentationDidFinishPrepare)) * 31) + Boolean.hashCode(this.didDisableSwipeForSurvey)) * 31;
        TriggerRuleOccurrence triggerRuleOccurrence = this.unsavedOccurrence;
        int iHashCode7 = (((((iHashCode6 + (triggerRuleOccurrence == null ? 0 : triggerRuleOccurrence.hashCode())) * 31) + Boolean.hashCode(this.useMultipleUrls)) * 31) + Integer.hashCode(this.crashRetries)) * 31;
        Date date = this.lastOpen;
        return iHashCode7 + (date != null ? date.hashCode() : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaywallViewState(Paywall paywall, String locale, CustomerInfo customerInfo, PresentationRequest presentationRequest, PaywallPresentationStyle presentationStyle, MutableSharedFlow<PaywallState> mutableSharedFlow, PaywallResult paywallResult, Function0<Unit> function0, boolean z, Function1<? super Boolean, Unit> function1, boolean z2, boolean z3, SurveyPresentationResult surveyPresentationResult, PaywallLoadingState loadingState, boolean z4, boolean z5, boolean z6, boolean z7, TriggerRuleOccurrence triggerRuleOccurrence, boolean z8, int i, Date date) {
        Intrinsics.checkNotNullParameter(paywall, "paywall");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
        Intrinsics.checkNotNullParameter(presentationStyle, "presentationStyle");
        Intrinsics.checkNotNullParameter(surveyPresentationResult, "surveyPresentationResult");
        Intrinsics.checkNotNullParameter(loadingState, "loadingState");
        this.paywall = paywall;
        this.locale = locale;
        this.customerInfo = customerInfo;
        this.request = presentationRequest;
        this.presentationStyle = presentationStyle;
        this.paywallStatePublisher = mutableSharedFlow;
        this.paywallResult = paywallResult;
        this.dismissCompletionBlock = function0;
        this.callbackInvoked = z;
        this.viewCreatedCompletion = function1;
        this.isBrowserViewPresented = z2;
        this.interceptTouchEvents = z3;
        this.surveyPresentationResult = surveyPresentationResult;
        this.loadingState = loadingState;
        this.isPresented = z4;
        this.presentationWillPrepare = z5;
        this.presentationDidFinishPrepare = z6;
        this.didDisableSwipeForSurvey = z7;
        this.unsavedOccurrence = triggerRuleOccurrence;
        this.useMultipleUrls = z8;
        this.crashRetries = i;
        this.lastOpen = date;
        this.cacheKey = PaywallCacheLogic.INSTANCE.key(paywall.getIdentifier(), locale);
    }

    public final Paywall getPaywall() {
        return this.paywall;
    }

    public final String getLocale() {
        return this.locale;
    }

    public /* synthetic */ PaywallViewState(Paywall paywall, String str, CustomerInfo customerInfo, PresentationRequest presentationRequest, PaywallPresentationStyle paywallPresentationStyle, MutableSharedFlow mutableSharedFlow, PaywallResult paywallResult, Function0 function0, boolean z, Function1 function1, boolean z2, boolean z3, SurveyPresentationResult surveyPresentationResult, PaywallLoadingState paywallLoadingState, boolean z4, boolean z5, boolean z6, boolean z7, TriggerRuleOccurrence triggerRuleOccurrence, boolean z8, int i, Date date, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(paywall, str, (i2 & 4) != 0 ? CustomerInfo.INSTANCE.empty() : customerInfo, (i2 & 8) != 0 ? null : presentationRequest, (i2 & 16) != 0 ? paywall.getPresentation().getStyle() : paywallPresentationStyle, (i2 & 32) != 0 ? null : mutableSharedFlow, (i2 & 64) != 0 ? null : paywallResult, (i2 & 128) != 0 ? null : function0, (i2 & 256) != 0 ? false : z, (i2 & 512) != 0 ? null : function1, (i2 & 1024) != 0 ? false : z2, (i2 & 2048) != 0 ? false : z3, (i2 & 4096) != 0 ? SurveyPresentationResult.NOSHOW : surveyPresentationResult, (i2 & 8192) != 0 ? PaywallLoadingState.Unknown.INSTANCE : paywallLoadingState, (i2 & 16384) != 0 ? false : z4, (32768 & i2) != 0 ? true : z5, (65536 & i2) != 0 ? false : z6, (131072 & i2) != 0 ? false : z7, (262144 & i2) != 0 ? null : triggerRuleOccurrence, (524288 & i2) != 0 ? false : z8, (1048576 & i2) != 0 ? 0 : i, (i2 & 2097152) != 0 ? null : date);
    }

    public final CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }

    public final PresentationRequest getRequest() {
        return this.request;
    }

    public final PaywallPresentationStyle getPresentationStyle() {
        return this.presentationStyle;
    }

    public final MutableSharedFlow<PaywallState> getPaywallStatePublisher() {
        return this.paywallStatePublisher;
    }

    public final PaywallResult getPaywallResult() {
        return this.paywallResult;
    }

    public final Function0<Unit> getDismissCompletionBlock() {
        return this.dismissCompletionBlock;
    }

    public final boolean getCallbackInvoked() {
        return this.callbackInvoked;
    }

    public final Function1<Boolean, Unit> getViewCreatedCompletion() {
        return this.viewCreatedCompletion;
    }

    public final boolean isBrowserViewPresented() {
        return this.isBrowserViewPresented;
    }

    public final boolean getInterceptTouchEvents() {
        return this.interceptTouchEvents;
    }

    public final SurveyPresentationResult getSurveyPresentationResult() {
        return this.surveyPresentationResult;
    }

    public final PaywallLoadingState getLoadingState() {
        return this.loadingState;
    }

    public final boolean isPresented() {
        return this.isPresented;
    }

    public final boolean getPresentationWillPrepare() {
        return this.presentationWillPrepare;
    }

    public final boolean getPresentationDidFinishPrepare() {
        return this.presentationDidFinishPrepare;
    }

    public final boolean getDidDisableSwipeForSurvey() {
        return this.didDisableSwipeForSurvey;
    }

    public final TriggerRuleOccurrence getUnsavedOccurrence() {
        return this.unsavedOccurrence;
    }

    public final boolean getUseMultipleUrls() {
        return this.useMultipleUrls;
    }

    public final int getCrashRetries() {
        return this.crashRetries;
    }

    public final Date getLastOpen() {
        return this.lastOpen;
    }

    public final PaywallInfo getInfo() {
        PresentationInfo presentationInfo;
        Paywall paywall = this.paywall;
        PresentationRequest presentationRequest = this.request;
        return PaywallInfo.m10698copyzhRERg$default(paywall.getInfo((presentationRequest == null || (presentationInfo = presentationRequest.getPresentationInfo()) == null) ? null : presentationInfo.getEventData()), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, null, null, false, null, this.customerInfo, -1, 63, null);
    }

    /* JADX INFO: renamed from: getCacheKey$superwall_release, reason: from getter */
    public final String getCacheKey() {
        return this.cacheKey;
    }

    public String toString() {
        return StringsKt.trimMargin$default("PaywallViewState(\n            |  paywallId: " + this.paywall.getIdentifier() + "\n            |  presentationStyle: " + this.presentationStyle + "\n            |  loadingState: " + this.loadingState + "\n            |  isPresented: " + this.isPresented + "\n            |  presentationWillPrepare: " + this.presentationWillPrepare + "\n            |  presentationDidFinishPrepare: " + this.presentationDidFinishPrepare + "\n            |  callbackInvoked: " + this.callbackInvoked + "\n            |  isBrowserViewPresented: " + this.isBrowserViewPresented + "\n            |  interceptTouchEvents: " + this.interceptTouchEvents + "\n            |  surveyPresentationResult: " + this.surveyPresentationResult + "\n            |  paywallResult: " + this.paywallResult + "\n            |  hasRequest: " + (this.request != null) + "\n            |  hasStatePublisher: " + (this.paywallStatePublisher != null) + "\n            |  hasUnsavedOccurrence: " + (this.unsavedOccurrence != null) + "\n            |  hasViewCreatedCompletion: " + (this.viewCreatedCompletion != null) + "\n            |  hasDismissCompletionBlock: " + (this.dismissCompletionBlock != null) + "\n            |  useMultipleUrls: " + this.useMultipleUrls + "\n            |)\n        ", null, 1, null);
    }

    /* JADX INFO: compiled from: PaywallViewState.kt */
    @Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u001c\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$B\u001d\b\u0004\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u0082\u0001\u001c%&'()*+,-./0123456789:;<=>?@¨\u0006A"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "", ViewProps.TRANSFORM, "Lkotlin/Function1;", "Lcom/superwall/sdk/paywall/view/PaywallViewState;", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "getTransform", "()Lkotlin/jvm/functions/Function1;", "MergePaywall", "SetCustomerInfo", "SetRequest", "SetPresentationConfig", "PresentationWillBegin", "ShimmerStarted", "ResetPresentationPreparations", "InitiateDismiss", "CallbackInvoked", "UpdateSurveyState", "CleanupAfterDestroy", "ClearViewCreatedCompletion", "ClearUnsavedOccurrence", "SetPresentedAndFinished", "SetLastOpen", "ShimmerEnded", "WebLoadingStarted", "WebLoadingFailed", "WebLoadingEnded", "SetPaywallJsVersion", "SetInterceptTouchEvents", "SetBrowserPresented", "SetLoadingState", "ClearStatePublisher", "CrashRetry", "ResetCrashRetry", "SetPaywallState", "ToggleSpinner", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CallbackInvoked;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CleanupAfterDestroy;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearStatePublisher;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearUnsavedOccurrence;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearViewCreatedCompletion;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CrashRetry;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$MergePaywall;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$PresentationWillBegin;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ResetCrashRetry;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ResetPresentationPreparations;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetCustomerInfo;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetInterceptTouchEvents;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLastOpen;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallJsVersion;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallState;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentedAndFinished;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerEnded;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerStarted;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$UpdateSurveyState;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingEnded;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingFailed;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingStarted;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Updates {
        private final Function1<PaywallViewState, PaywallViewState> transform;

        public /* synthetic */ Updates(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
            this(function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Updates(Function1<? super PaywallViewState, PaywallViewState> function1) {
            this.transform = function1;
        }

        public final Function1<PaywallViewState, PaywallViewState> getTransform() {
            return this.transform;
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$MergePaywall;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", com.google.firebase.messaging.Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/models/paywall/Paywall;", "<init>", "(Lcom/superwall/sdk/models/paywall/Paywall;)V", "getFrom", "()Lcom/superwall/sdk/models/paywall/Paywall;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class MergePaywall extends Updates {
            private final Paywall from;

            public final Paywall getFrom() {
                return this.from;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public MergePaywall(final Paywall from) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$MergePaywall$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.MergePaywall._init_$lambda$0(from, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(from, "from");
                this.from = from;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(Paywall paywall, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                Paywall paywallM10657copyzhRERg$default = Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, paywall.get_productItemsV3$superwall_release(), null, null, null, null, paywall.getProductsLoadingInfo(), null, paywall.getProductVariables(), paywall.getSwProductVariablesTemplate(), null, paywall.isFreeTrialAvailable(), paywall.getPresentationSourceType(), null, null, null, null, paywall.getExperiment(), null, null, null, null, null, null, null, null, null, -565452801, 127, null);
                paywallM10657copyzhRERg$default.setProductItems(paywall.getProductItems());
                return PaywallViewState.copy$default(state, paywallM10657copyzhRERg$default, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetCustomerInfo;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "customerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "<init>", "(Lcom/superwall/sdk/models/customer/CustomerInfo;)V", "getCustomerInfo", "()Lcom/superwall/sdk/models/customer/CustomerInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetCustomerInfo extends Updates {
            private final CustomerInfo customerInfo;

            public final CustomerInfo getCustomerInfo() {
                return this.customerInfo;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetCustomerInfo(final CustomerInfo customerInfo) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetCustomerInfo$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetCustomerInfo._init_$lambda$0(customerInfo, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
                this.customerInfo = customerInfo;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(CustomerInfo customerInfo, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, customerInfo, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194299, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "req", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "occurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V", "getReq", "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "getPublisher", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "getOccurrence", "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetRequest extends Updates {
            private final TriggerRuleOccurrence occurrence;
            private final MutableSharedFlow<PaywallState> publisher;
            private final PresentationRequest req;

            public final PresentationRequest getReq() {
                return this.req;
            }

            public final MutableSharedFlow<PaywallState> getPublisher() {
                return this.publisher;
            }

            public final TriggerRuleOccurrence getOccurrence() {
                return this.occurrence;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetRequest(final PresentationRequest req, final MutableSharedFlow<PaywallState> mutableSharedFlow, final TriggerRuleOccurrence triggerRuleOccurrence) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetRequest._init_$lambda$0(req, mutableSharedFlow, triggerRuleOccurrence, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(req, "req");
                this.req = req;
                this.publisher = mutableSharedFlow;
                this.occurrence = triggerRuleOccurrence;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, TriggerRuleOccurrence triggerRuleOccurrence, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, presentationRequest, null, mutableSharedFlow, null, null, false, null, false, false, null, null, false, false, false, false, triggerRuleOccurrence, false, 0, null, 3932119, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "styleOverride", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "completion", "Lkotlin/Function1;", "", "", "<init>", "(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/jvm/functions/Function1;)V", "getStyleOverride", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "getCompletion", "()Lkotlin/jvm/functions/Function1;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetPresentationConfig extends Updates {
            private final Function1<Boolean, Unit> completion;
            private final PaywallPresentationStyle styleOverride;

            public final PaywallPresentationStyle getStyleOverride() {
                return this.styleOverride;
            }

            public final Function1<Boolean, Unit> getCompletion() {
                return this.completion;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public SetPresentationConfig(final PaywallPresentationStyle paywallPresentationStyle, final Function1<? super Boolean, Unit> function1) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetPresentationConfig$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetPresentationConfig._init_$lambda$0(paywallPresentationStyle, function1, (PaywallViewState) obj);
                    }
                }, null);
                this.styleOverride = paywallPresentationStyle;
                this.completion = function1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallPresentationStyle paywallPresentationStyle, Function1 function1, PaywallViewState state) {
                PaywallPresentationStyle style = paywallPresentationStyle;
                Intrinsics.checkNotNullParameter(state, "state");
                if (style == null || (style instanceof PaywallPresentationStyle.None)) {
                    style = state.getPaywall().getPresentation().getStyle();
                }
                return PaywallViewState.copy$default(state, null, null, null, null, style, null, null, null, false, function1, false, false, null, null, false, false, false, false, null, false, 0, null, 4193775, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$PresentationWillBegin;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class PresentationWillBegin extends Updates {
            public static final PresentationWillBegin INSTANCE = new PresentationWillBegin();

            private PresentationWillBegin() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$PresentationWillBegin$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.PresentationWillBegin._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, PaywallCloseReason.None.INSTANCE, null, null, null, null, null, null, null, null, -1073741825, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194046, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerStarted;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ShimmerStarted extends Updates {
            public static final ShimmerStarted INSTANCE = new ShimmerStarted();

            private ShimmerStarted() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ShimmerStarted$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ShimmerStarted._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, Paywall.LoadingInfo.copy$default(state.getPaywall().getShimmerLoadingInfo(), new Date(), null, null, 6, null), null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -524289, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4161534, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ResetPresentationPreparations;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ResetPresentationPreparations extends Updates {
            public static final ResetPresentationPreparations INSTANCE = new ResetPresentationPreparations();

            private ResetPresentationPreparations() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ResetPresentationPreparations$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ResetPresentationPreparations._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, true, false, false, null, false, 0, null, 4095999, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "closeReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "completion", "Lkotlin/Function0;", "", "<init>", "(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;)V", "getResult", "()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "getCloseReason", "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "getCompletion", "()Lkotlin/jvm/functions/Function0;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class InitiateDismiss extends Updates {
            private final PaywallCloseReason closeReason;
            private final Function0<Unit> completion;
            private final PaywallResult result;

            public final PaywallResult getResult() {
                return this.result;
            }

            public final PaywallCloseReason getCloseReason() {
                return this.closeReason;
            }

            public final Function0<Unit> getCompletion() {
                return this.completion;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public InitiateDismiss(final PaywallResult result, final PaywallCloseReason closeReason, final Function0<Unit> function0) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.InitiateDismiss._init_$lambda$0(closeReason, result, function0, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(result, "result");
                Intrinsics.checkNotNullParameter(closeReason, "closeReason");
                this.result = result;
                this.closeReason = closeReason;
                this.completion = function0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallCloseReason paywallCloseReason, PaywallResult paywallResult, Function0 function0, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, paywallCloseReason, null, null, null, null, null, null, null, null, -1073741825, 127, null), null, null, null, null, null, paywallResult, function0, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194110, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CallbackInvoked;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class CallbackInvoked extends Updates {
            public static final CallbackInvoked INSTANCE = new CallbackInvoked();

            private CallbackInvoked() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$CallbackInvoked$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.CallbackInvoked._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, true, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194047, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$UpdateSurveyState;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "result", "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "<init>", "(Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)V", "getResult", "()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class UpdateSurveyState extends Updates {
            private final SurveyPresentationResult result;

            public final SurveyPresentationResult getResult() {
                return this.result;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public UpdateSurveyState(final SurveyPresentationResult result) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$UpdateSurveyState$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.UpdateSurveyState._init_$lambda$0(result, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(result, "result");
                this.result = result;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(SurveyPresentationResult surveyPresentationResult, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, surveyPresentationResult, null, false, false, false, false, null, false, 0, null, 4190207, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CleanupAfterDestroy;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class CleanupAfterDestroy extends Updates {
            public static final CleanupAfterDestroy INSTANCE = new CleanupAfterDestroy();

            private CleanupAfterDestroy() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$CleanupAfterDestroy$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.CleanupAfterDestroy._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                Function0<Unit> dismissCompletionBlock = state.getDismissCompletionBlock();
                if (dismissCompletionBlock != null) {
                    dismissCompletionBlock.invoke();
                }
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 2080575, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearViewCreatedCompletion;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ClearViewCreatedCompletion extends Updates {
            public static final ClearViewCreatedCompletion INSTANCE = new ClearViewCreatedCompletion();

            private ClearViewCreatedCompletion() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ClearViewCreatedCompletion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ClearViewCreatedCompletion._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4193791, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearUnsavedOccurrence;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ClearUnsavedOccurrence extends Updates {
            public static final ClearUnsavedOccurrence INSTANCE = new ClearUnsavedOccurrence();

            private ClearUnsavedOccurrence() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ClearUnsavedOccurrence$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ClearUnsavedOccurrence._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 3932159, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentedAndFinished;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetPresentedAndFinished extends Updates {
            public static final SetPresentedAndFinished INSTANCE = new SetPresentedAndFinished();

            private SetPresentedAndFinished() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetPresentedAndFinished$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetPresentedAndFinished._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, null, true, false, true, false, null, false, 0, null, 4112383, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLastOpen;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetLastOpen extends Updates {
            public static final SetLastOpen INSTANCE = new SetLastOpen();

            private SetLastOpen() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetLastOpen$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetLastOpen._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, new Date(), 2097151, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerEnded;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ShimmerEnded extends Updates {
            public static final ShimmerEnded INSTANCE = new ShimmerEnded();

            private ShimmerEnded() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ShimmerEnded$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ShimmerEnded._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, Paywall.LoadingInfo.copy$default(state.getPaywall().getShimmerLoadingInfo(), null, new Date(), null, 5, null), null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -524289, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingStarted;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class WebLoadingStarted extends Updates {
            public static final WebLoadingStarted INSTANCE = new WebLoadingStarted();

            private WebLoadingStarted() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$WebLoadingStarted$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.WebLoadingStarted._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                Paywall.LoadingInfo webviewLoadingInfo = state.getPaywall().getWebviewLoadingInfo();
                if (webviewLoadingInfo.getStartAt() == null) {
                    webviewLoadingInfo = Paywall.LoadingInfo.copy$default(webviewLoadingInfo, new Date(), null, null, 6, null);
                }
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, webviewLoadingInfo, null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -131073, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingFailed;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class WebLoadingFailed extends Updates {
            public static final WebLoadingFailed INSTANCE = new WebLoadingFailed();

            private WebLoadingFailed() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$WebLoadingFailed$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.WebLoadingFailed._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                Paywall.LoadingInfo webviewLoadingInfo = state.getPaywall().getWebviewLoadingInfo();
                if (webviewLoadingInfo.getFailAt() == null) {
                    webviewLoadingInfo = Paywall.LoadingInfo.copy$default(webviewLoadingInfo, null, null, new Date(), 3, null);
                }
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, webviewLoadingInfo, null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -131073, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingEnded;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "endAt", "Ljava/util/Date;", "<init>", "(Ljava/util/Date;)V", "getEndAt", "()Ljava/util/Date;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class WebLoadingEnded extends Updates {
            private final Date endAt;

            public final Date getEndAt() {
                return this.endAt;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public WebLoadingEnded(final Date endAt) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$WebLoadingEnded$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.WebLoadingEnded._init_$lambda$0(endAt, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(endAt, "endAt");
                this.endAt = endAt;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(Date date, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, Paywall.LoadingInfo.copy$default(state.getPaywall().getWebviewLoadingInfo(), null, date, null, 5, null), null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -131073, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallJsVersion;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "version", "", "<init>", "(Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetPaywallJsVersion extends Updates {
            private final String version;

            public final String getVersion() {
                return this.version;
            }

            public SetPaywallJsVersion(final String str) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetPaywallJsVersion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetPaywallJsVersion._init_$lambda$0(str, (PaywallViewState) obj);
                    }
                }, null);
                this.version = str;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(String str, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, Paywall.m10657copyzhRERg$default(state.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -4194305, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetInterceptTouchEvents;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "intercept", "", "<init>", "(Z)V", "getIntercept", "()Z", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetInterceptTouchEvents extends Updates {
            private final boolean intercept;

            public final boolean getIntercept() {
                return this.intercept;
            }

            public SetInterceptTouchEvents(final boolean z) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetInterceptTouchEvents$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetInterceptTouchEvents._init_$lambda$0(z, (PaywallViewState) obj);
                    }
                }, null);
                this.intercept = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(boolean z, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, z, null, null, false, false, false, false, null, false, 0, null, 4192255, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "presented", "", "<init>", "(Z)V", "getPresented", "()Z", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetBrowserPresented extends Updates {
            private final boolean presented;

            public final boolean getPresented() {
                return this.presented;
            }

            public SetBrowserPresented(final boolean z) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetBrowserPresented$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetBrowserPresented._init_$lambda$0(z, (PaywallViewState) obj);
                    }
                }, null);
                this.presented = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(boolean z, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, z, false, null, null, false, false, false, false, null, false, 0, null, 4193279, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "newState", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "<init>", "(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V", "getNewState", "()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetLoadingState extends Updates {
            private final PaywallLoadingState newState;

            public final PaywallLoadingState getNewState() {
                return this.newState;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetLoadingState(final PaywallLoadingState newState) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetLoadingState$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetLoadingState._init_$lambda$0(newState, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(newState, "newState");
                this.newState = newState;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallLoadingState paywallLoadingState, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, paywallLoadingState, false, false, false, false, null, false, 0, null, 4186111, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearStatePublisher;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ClearStatePublisher extends Updates {
            public static final ClearStatePublisher INSTANCE = new ClearStatePublisher();

            private ClearStatePublisher() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ClearStatePublisher$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ClearStatePublisher._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return PaywallViewState.copy$default(it, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194271, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CrashRetry;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class CrashRetry extends Updates {
            public static final CrashRetry INSTANCE = new CrashRetry();

            private CrashRetry() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$CrashRetry$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.CrashRetry._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return PaywallViewState.copy$default(it, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, it.getCrashRetries() + 1, null, 3145727, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ResetCrashRetry;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ResetCrashRetry extends Updates {
            public static final ResetCrashRetry INSTANCE = new ResetCrashRetry();

            private ResetCrashRetry() {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ResetCrashRetry$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ResetCrashRetry._init_$lambda$0((PaywallViewState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(PaywallViewState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return PaywallViewState.copy$default(it, null, null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 3145727, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallState;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "state", "", "", "", "<init>", "(Ljava/util/Map;)V", "getState", "()Ljava/util/Map;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetPaywallState extends Updates {
            private final Map<String, Object> state;

            public final Map<String, Object> getState() {
                return this.state;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetPaywallState(final Map<String, ? extends Object> state) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$SetPaywallState$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.SetPaywallState._init_$lambda$1(state, (PaywallViewState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(state, "state");
                this.state = state;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$1(Map map, PaywallViewState viewState) {
                Intrinsics.checkNotNullParameter(viewState, "viewState");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    if (!Intrinsics.areEqual(entry.getKey(), "style")) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                return PaywallViewState.copy$default(viewState, Paywall.m10657copyzhRERg$default(viewState.getPaywall(), null, null, null, null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, null, linkedHashMap, null, null, null, null, null, null, null, Integer.MAX_VALUE, 127, null), null, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, false, 0, null, 4194302, null);
            }
        }

        /* JADX INFO: compiled from: PaywallViewState.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", ViewProps.HIDDEN, "", "<init>", "(Z)V", "getHidden", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class ToggleSpinner extends Updates {
            private final boolean hidden;

            public static /* synthetic */ ToggleSpinner copy$default(ToggleSpinner toggleSpinner, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = toggleSpinner.hidden;
                }
                return toggleSpinner.copy(z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getHidden() {
                return this.hidden;
            }

            public final ToggleSpinner copy(boolean hidden) {
                return new ToggleSpinner(hidden);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ToggleSpinner) && this.hidden == ((ToggleSpinner) other).hidden;
            }

            public int hashCode() {
                return Boolean.hashCode(this.hidden);
            }

            public String toString() {
                return "ToggleSpinner(hidden=" + this.hidden + ")";
            }

            public final boolean getHidden() {
                return this.hidden;
            }

            public ToggleSpinner(final boolean z) {
                super(new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallViewState$Updates$ToggleSpinner$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PaywallViewState.Updates.ToggleSpinner._init_$lambda$0(z, (PaywallViewState) obj);
                    }
                }, null);
                this.hidden = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final PaywallViewState _init_$lambda$0(boolean z, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                if (z) {
                    if ((state.getLoadingState() instanceof PaywallLoadingState.ManualLoading) || (state.getLoadingState() instanceof PaywallLoadingState.LoadingPurchase)) {
                        return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, PaywallLoadingState.Ready.INSTANCE, false, false, false, false, null, false, 0, null, 4186111, null);
                    }
                } else if (state.getLoadingState() instanceof PaywallLoadingState.Ready) {
                    return PaywallViewState.copy$default(state, null, null, null, null, null, null, null, null, false, null, false, false, null, PaywallLoadingState.ManualLoading.INSTANCE, false, false, false, false, null, false, 0, null, 4186111, null);
                }
                return state;
            }
        }
    }
}
