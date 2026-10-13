package com.superwall.sdk.store.testmode.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.superwall.sdk.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: TestModePurchaseDrawer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JL\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u0010H\u0086@¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/TestModePurchaseDrawer;", "", "<init>", "()V", "show", "Lcom/superwall/sdk/store/testmode/ui/PurchaseSimulationResult;", "activity", "Landroid/app/Activity;", "productIdentifier", "", "localizedPrice", TypedValues.Cycle.S_WAVE_PERIOD, "hasFreeTrial", "", "trialPeriodText", "entitlementNames", "", "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestModePurchaseDrawer {
    public static final TestModePurchaseDrawer INSTANCE = new TestModePurchaseDrawer();

    private TestModePurchaseDrawer() {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer$show$2, reason: invalid class name */
    /* JADX INFO: compiled from: TestModePurchaseDrawer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/store/testmode/ui/PurchaseSimulationResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer$show$2", f = "TestModePurchaseDrawer.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PurchaseSimulationResult>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ List<String> $entitlementNames;
        final /* synthetic */ boolean $hasFreeTrial;
        final /* synthetic */ String $localizedPrice;
        final /* synthetic */ String $period;
        final /* synthetic */ String $productIdentifier;
        final /* synthetic */ String $trialPeriodText;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Activity activity, String str, boolean z, String str2, String str3, String str4, List<String> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.$productIdentifier = str;
            this.$hasFreeTrial = z;
            this.$trialPeriodText = str2;
            this.$period = str3;
            this.$localizedPrice = str4;
            this.$entitlementNames = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$activity, this.$productIdentifier, this.$hasFreeTrial, this.$trialPeriodText, this.$period, this.$localizedPrice, this.$entitlementNames, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PurchaseSimulationResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this.$activity);
            View viewInflate = LayoutInflater.from(this.$activity).inflate(R.layout.test_mode_purchase_drawer, (ViewGroup) null);
            viewInflate.setBackground(ContextCompat.getDrawable(this.$activity, R.drawable.test_mode_sheet_bg));
            ((TextView) viewInflate.findViewById(R.id.product_id_text)).setText(this.$productIdentifier);
            if (this.$hasFreeTrial && this.$trialPeriodText.length() > 0) {
                TextView textView = (TextView) viewInflate.findViewById(R.id.trial_text);
                textView.setText(this.$trialPeriodText + " free trial");
                textView.setVisibility(0);
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.price_text);
            if (this.$period.length() > 0) {
                str = this.$localizedPrice + " / " + this.$period;
            } else {
                str = this.$localizedPrice;
            }
            textView2.setText(str);
            if (!this.$entitlementNames.isEmpty()) {
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.entitlements_text);
                textView3.setText("Entitlements: " + CollectionsKt.joinToString$default(this.$entitlementNames, ", ", null, null, 0, null, null, 62, null));
                textView3.setVisibility(0);
            }
            TextView textView4 = (TextView) viewInflate.findViewById(R.id.confirm_button);
            textView4.setText(this.$hasFreeTrial ? "Start Free Trial" : "Confirm Purchase");
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer$show$2$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModePurchaseDrawer.AnonymousClass2.invokeSuspend$lambda$3$lambda$2(completableDeferredCompletableDeferred$default, bottomSheetDialog, view);
                }
            });
            ((TextView) viewInflate.findViewById(R.id.close_button)).setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer$show$2$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModePurchaseDrawer.AnonymousClass2.invokeSuspend$lambda$4(completableDeferredCompletableDeferred$default, bottomSheetDialog, view);
                }
            });
            ((TextView) viewInflate.findViewById(R.id.fail_button)).setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer$show$2$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModePurchaseDrawer.AnonymousClass2.invokeSuspend$lambda$5(completableDeferredCompletableDeferred$default, bottomSheetDialog, view);
                }
            });
            bottomSheetDialog.setContentView(viewInflate);
            bottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer$show$2$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    TestModePurchaseDrawer.AnonymousClass2.invokeSuspend$lambda$6(completableDeferredCompletableDeferred$default, dialogInterface);
                }
            });
            bottomSheetDialog.show();
            this.label = 1;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$3$lambda$2(CompletableDeferred completableDeferred, BottomSheetDialog bottomSheetDialog, View view) {
            completableDeferred.complete(PurchaseSimulationResult.Purchased.INSTANCE);
            bottomSheetDialog.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$4(CompletableDeferred completableDeferred, BottomSheetDialog bottomSheetDialog, View view) {
            completableDeferred.complete(PurchaseSimulationResult.Abandoned.INSTANCE);
            bottomSheetDialog.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$5(CompletableDeferred completableDeferred, BottomSheetDialog bottomSheetDialog, View view) {
            completableDeferred.complete(PurchaseSimulationResult.Failed.INSTANCE);
            bottomSheetDialog.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$6(CompletableDeferred completableDeferred, DialogInterface dialogInterface) {
            if (completableDeferred.isCompleted()) {
                return;
            }
            completableDeferred.complete(PurchaseSimulationResult.Abandoned.INSTANCE);
        }
    }

    public final Object show(Activity activity, String str, String str2, String str3, boolean z, String str4, List<String> list, Continuation<? super PurchaseSimulationResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(activity, str, z, str4, str3, str2, list, null), continuation);
    }
}
