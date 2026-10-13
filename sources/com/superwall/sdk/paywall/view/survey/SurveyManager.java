package com.superwall.sdk.paywall.view.survey;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.NotificationCompat;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.superwall.sdk.R;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingLogic;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.SurveyOption;
import com.superwall.sdk.config.models.SurveyShowCondition;
import com.superwall.sdk.dependencies.TriggerFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.storage.SurveyAssignmentKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SurveyManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003Jr\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00070\u001eJV\u0010 \u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00070\u001eH\u0002J(\u0010&\u001a\u0004\u0018\u00010\n2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/superwall/sdk/paywall/view/survey/SurveyManager;", "", "<init>", "()V", "otherAlertDialog", "Landroidx/appcompat/app/AlertDialog;", "presentSurveyIfAvailable", "", "surveys", "", "Lcom/superwall/sdk/config/models/Survey;", "paywallResult", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "paywallCloseReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "activity", "Landroid/app/Activity;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "loadingState", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "isDebuggerLaunched", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "factory", "Lcom/superwall/sdk/dependencies/TriggerFactory;", "completion", "Lkotlin/Function1;", "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "handleDialogDismissal", "survey", "option", "Lcom/superwall/sdk/config/models/SurveyOption;", "customResponse", "", "selectSurvey", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SurveyManager {
    public static final SurveyManager INSTANCE = new SurveyManager();
    private static AlertDialog otherAlertDialog;

    /* JADX INFO: compiled from: SurveyManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SurveyShowCondition.values().length];
            try {
                iArr[SurveyShowCondition.ON_MANUAL_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SurveyShowCondition.ON_PURCHASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10$lambda$5(DialogInterface dialogInterface, int i) {
    }

    private SurveyManager() {
    }

    public final void presentSurveyIfAvailable(List<Survey> surveys, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, final Activity activity, final PaywallView paywallView, PaywallLoadingState loadingState, final boolean isDebuggerLaunched, final PaywallInfo paywallInfo, LocalStorage storage, final TriggerFactory factory, final Function1<? super SurveyPresentationResult, Unit> completion) {
        Intrinsics.checkNotNullParameter(surveys, "surveys");
        Intrinsics.checkNotNullParameter(paywallResult, "paywallResult");
        Intrinsics.checkNotNullParameter(paywallCloseReason, "paywallCloseReason");
        Intrinsics.checkNotNullParameter(paywallView, "paywallView");
        Intrinsics.checkNotNullParameter(loadingState, "loadingState");
        Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(completion, "completion");
        if (activity == null) {
            completion.invoke(SurveyPresentationResult.NOSHOW);
            return;
        }
        final Survey surveySelectSurvey = selectSurvey(surveys, paywallResult, paywallCloseReason);
        if (surveySelectSurvey == null) {
            completion.invoke(SurveyPresentationResult.NOSHOW);
            return;
        }
        if (!(loadingState instanceof PaywallLoadingState.Ready) && !(loadingState instanceof PaywallLoadingState.LoadingPurchase)) {
            completion.invoke(SurveyPresentationResult.NOSHOW);
            return;
        }
        if (surveySelectSurvey.hasSeenSurvey(storage)) {
            completion.invoke(SurveyPresentationResult.NOSHOW);
            return;
        }
        boolean zShouldAssignHoldout = surveySelectSurvey.shouldAssignHoldout(isDebuggerLaunched);
        if (!isDebuggerLaunched) {
            storage.write(SurveyAssignmentKey.INSTANCE, surveySelectSurvey.getAssignmentKey());
        }
        if (zShouldAssignHoldout) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.paywallView, "The survey will not present.", null, null, 24, null);
            completion.invoke(SurveyPresentationResult.HOLDOUT);
            return;
        }
        Activity activity2 = activity;
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(activity2);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        View viewInflate = LayoutInflater.from(activity2).inflate(R.layout.survey_bottom_sheet, (ViewGroup) null);
        bottomSheetDialog.setContentView(viewInflate);
        final ArrayList arrayList = new ArrayList();
        List<SurveyOption> options = surveySelectSurvey.getOptions();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(options, 10));
        Iterator<T> it = options.iterator();
        while (it.hasNext()) {
            arrayList2.add(((SurveyOption) it.next()).getTitle());
        }
        arrayList.addAll(arrayList2);
        if (surveySelectSurvey.getIncludeOtherOption()) {
            arrayList.add("Other");
        }
        if (surveySelectSurvey.getIncludeCloseOption()) {
            arrayList.add("Close");
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.message);
        textView.setText(surveySelectSurvey.getTitle());
        textView2.setText(surveySelectSurvey.getMessage());
        View viewFindViewById = viewInflate.findViewById(R.id.surveyListView);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        ListView listView = (ListView) viewFindViewById;
        listView.setAdapter((ListAdapter) new ArrayAdapter(activity2, R.layout.list_item, arrayList));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                SurveyManager.presentSurveyIfAvailable$lambda$10(surveySelectSurvey, bottomSheetDialog, arrayList, activity, completion, isDebuggerLaunched, paywallInfo, factory, paywallView, adapterView, view, i, j);
            }
        });
        bottomSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10(final Survey survey, BottomSheetDialog bottomSheetDialog, List list, Activity activity, final Function1 function1, final boolean z, final PaywallInfo paywallInfo, final TriggerFactory triggerFactory, final PaywallView paywallView, AdapterView adapterView, View view, final int i, long j) {
        if (i < survey.getOptions().size()) {
            bottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    SurveyManager.presentSurveyIfAvailable$lambda$10$lambda$4(z, survey, i, paywallInfo, triggerFactory, paywallView, function1, dialogInterface);
                }
            });
            bottomSheetDialog.dismiss();
            return;
        }
        String str = (String) list.get(i);
        if (Intrinsics.areEqual(str, "Other")) {
            Activity activity2 = activity;
            View viewInflate = LayoutInflater.from(activity2).inflate(R.layout.custom_alert_dialog_layout, (ViewGroup) null);
            AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
            builder.setCancelable(false);
            builder.setView(viewInflate);
            final SurveyOption surveyOption = new SurveyOption("000", "Other");
            builder.setPositiveButton("Submit", new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    SurveyManager.presentSurveyIfAvailable$lambda$10$lambda$5(dialogInterface, i2);
                }
            });
            final AlertDialog alertDialogCreate = builder.create();
            Intrinsics.checkNotNullExpressionValue(alertDialogCreate, "create(...)");
            TextView textView = (TextView) viewInflate.findViewById(R.id.customDialogTitle);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.customDialogMessage);
            final EditText editText = (EditText) viewInflate.findViewById(R.id.editText);
            textView.setText(survey.getTitle());
            textView2.setText(survey.getMessage());
            editText.addTextChangedListener(new TextWatcher() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$presentSurveyIfAvailable$2$3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                    String string;
                    String string2 = (s == null || (string = s.toString()) == null) ? null : StringsKt.trim((CharSequence) string).toString();
                    alertDialogCreate.getButton(-1).setEnabled(!(string2 == null || string2.length() == 0));
                }
            });
            alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    SurveyManager.presentSurveyIfAvailable$lambda$10$lambda$6(alertDialogCreate, dialogInterface);
                }
            });
            bottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    SurveyManager.presentSurveyIfAvailable$lambda$10$lambda$7(alertDialogCreate, editText, dialogInterface);
                }
            });
            alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    SurveyManager.presentSurveyIfAvailable$lambda$10$lambda$9(alertDialogCreate, z, survey, surveyOption, editText, paywallInfo, triggerFactory, paywallView, function1, dialogInterface);
                }
            });
            bottomSheetDialog.dismiss();
            return;
        }
        if (Intrinsics.areEqual(str, "Close")) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new SurveyManager$presentSurveyIfAvailable$2$7(null), 3, null);
            bottomSheetDialog.dismiss();
            function1.invoke(SurveyPresentationResult.SHOW);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10$lambda$4(boolean z, Survey survey, int i, PaywallInfo paywallInfo, TriggerFactory triggerFactory, PaywallView paywallView, Function1 function1, DialogInterface dialogInterface) {
        INSTANCE.handleDialogDismissal(z, survey, survey.getOptions().get(i), null, paywallInfo, triggerFactory, paywallView, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10$lambda$6(AlertDialog alertDialog, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10$lambda$7(AlertDialog alertDialog, EditText editText, DialogInterface dialogInterface) {
        alertDialog.show();
        alertDialog.getButton(-1).setEnabled(false);
        editText.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10$lambda$9(final AlertDialog alertDialog, final boolean z, final Survey survey, final SurveyOption surveyOption, final EditText editText, final PaywallInfo paywallInfo, final TriggerFactory triggerFactory, final PaywallView paywallView, final Function1 function1, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.paywall.view.survey.SurveyManager$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SurveyManager.presentSurveyIfAvailable$lambda$10$lambda$9$lambda$8(z, survey, surveyOption, editText, paywallInfo, triggerFactory, paywallView, function1, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentSurveyIfAvailable$lambda$10$lambda$9$lambda$8(boolean z, Survey survey, SurveyOption surveyOption, EditText editText, PaywallInfo paywallInfo, TriggerFactory triggerFactory, PaywallView paywallView, Function1 function1, AlertDialog alertDialog, View view) {
        INSTANCE.handleDialogDismissal(z, survey, surveyOption, editText.getText().toString(), paywallInfo, triggerFactory, paywallView, function1);
        alertDialog.dismiss();
    }

    private final void handleDialogDismissal(boolean isDebuggerLaunched, Survey survey, SurveyOption option, String customResponse, PaywallInfo paywallInfo, TriggerFactory factory, PaywallView paywallView, Function1<? super SurveyPresentationResult, Unit> completion) {
        if (!isDebuggerLaunched) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(survey, option, customResponse, paywallInfo, factory, paywallView, completion, null), 3, null);
        } else {
            completion.invoke(SurveyPresentationResult.SHOW);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.survey.SurveyManager$handleDialogDismissal$1, reason: invalid class name */
    /* JADX INFO: compiled from: SurveyManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.survey.SurveyManager$handleDialogDismissal$1", f = "SurveyManager.kt", i = {0, 1}, l = {260, 264}, m = "invokeSuspend", n = {NotificationCompat.CATEGORY_EVENT, "outcome"}, s = {"L$0", "L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<SurveyPresentationResult, Unit> $completion;
        final /* synthetic */ String $customResponse;
        final /* synthetic */ TriggerFactory $factory;
        final /* synthetic */ SurveyOption $option;
        final /* synthetic */ PaywallInfo $paywallInfo;
        final /* synthetic */ PaywallView $paywallView;
        final /* synthetic */ Survey $survey;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Survey survey, SurveyOption surveyOption, String str, PaywallInfo paywallInfo, TriggerFactory triggerFactory, PaywallView paywallView, Function1<? super SurveyPresentationResult, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$survey = survey;
            this.$option = surveyOption;
            this.$customResponse = str;
            this.$paywallInfo = paywallInfo;
            this.$factory = triggerFactory;
            this.$paywallView = paywallView;
            this.$completion = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$survey, this.$option, this.$customResponse, this.$paywallInfo, this.$factory, this.$paywallView, this.$completion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x008b  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            InternalSuperwallEvent.SurveyResponse surveyResponse;
            InternalSuperwallEvent.SurveyResponse surveyResponse2;
            TrackingLogic.Companion companion;
            TrackingLogic.ImplicitTriggerOutcome implicitTriggerOutcome;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                surveyResponse = new InternalSuperwallEvent.SurveyResponse(this.$survey, this.$option, this.$customResponse, this.$paywallInfo);
                TrackingLogic.Companion companion2 = TrackingLogic.INSTANCE;
                surveyResponse2 = surveyResponse;
                this.L$0 = surveyResponse;
                this.L$1 = companion2;
                this.L$2 = surveyResponse2;
                this.label = 1;
                Object objMakeTriggers = this.$factory.makeTriggers(this);
                if (objMakeTriggers != coroutine_suspended) {
                    companion = companion2;
                    obj = objMakeTriggers;
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                surveyResponse2 = (Trackable) this.L$2;
                companion = (TrackingLogic.Companion) this.L$1;
                surveyResponse = (InternalSuperwallEvent.SurveyResponse) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                implicitTriggerOutcome = (TrackingLogic.ImplicitTriggerOutcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            if (Intrinsics.areEqual(implicitTriggerOutcome, TrackingLogic.ImplicitTriggerOutcome.DontTriggerPaywall.INSTANCE)) {
                this.$completion.invoke(SurveyPresentationResult.SHOW);
            }
            return Unit.INSTANCE;
            TrackingLogic.ImplicitTriggerOutcome implicitTriggerOutcomeCanTriggerPaywall = companion.canTriggerPaywall(surveyResponse2, (Set) obj, this.$paywallView);
            this.L$0 = implicitTriggerOutcomeCanTriggerPaywall;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            if (TrackingKt.track(Superwall.INSTANCE.getInstance(), surveyResponse, this) != coroutine_suspended) {
                implicitTriggerOutcome = implicitTriggerOutcomeCanTriggerPaywall;
                if (Intrinsics.areEqual(implicitTriggerOutcome, TrackingLogic.ImplicitTriggerOutcome.DontTriggerPaywall.INSTANCE)) {
                    this.$completion.invoke(SurveyPresentationResult.SHOW);
                }
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        }
    }

    private final Survey selectSurvey(List<Survey> surveys, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason) {
        boolean z = paywallResult instanceof PaywallResult.Purchased;
        boolean z2 = paywallResult instanceof PaywallResult.Declined;
        boolean z3 = paywallCloseReason instanceof PaywallCloseReason.ManualClose;
        for (Survey survey : surveys) {
            int i = WhenMappings.$EnumSwitchMapping$0[survey.getPresentationCondition().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                if (z) {
                    return survey;
                }
            } else if (z2 && z3) {
                return survey;
            }
        }
        return null;
    }
}
