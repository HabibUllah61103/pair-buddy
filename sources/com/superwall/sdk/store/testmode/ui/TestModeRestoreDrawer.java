package com.superwall.sdk.store.testmode.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.superwall.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: TestModeRestoreDrawer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J2\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\tH\u0086@¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer;", "", "<init>", "()V", "show", "Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult;", "activity", "Landroid/app/Activity;", "availableEntitlements", "", "", "currentSelections", "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;", "(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestModeRestoreDrawer {
    public static final TestModeRestoreDrawer INSTANCE = new TestModeRestoreDrawer();

    private TestModeRestoreDrawer() {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2, reason: invalid class name */
    /* JADX INFO: compiled from: TestModeRestoreDrawer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2", f = "TestModeRestoreDrawer.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RestoreSimulationResult>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ List<String> $availableEntitlements;
        final /* synthetic */ List<EntitlementSelection> $currentSelections;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Activity activity, List<EntitlementSelection> list, List<String> list2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.$currentSelections = list;
            this.$availableEntitlements = list2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$activity, this.$currentSelections, this.$availableEntitlements, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RestoreSimulationResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            EntitlementSelection entitlementSelection;
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
            View viewInflate = LayoutInflater.from(this.$activity).inflate(R.layout.test_mode_restore_drawer, (ViewGroup) null);
            viewInflate.setBackground(ContextCompat.getDrawable(this.$activity, R.drawable.test_mode_sheet_bg));
            List<EntitlementSelection> list = this.$currentSelections;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
            for (Object obj2 : list) {
                linkedHashMap.put(((EntitlementSelection) obj2).getIdentifier(), obj2);
            }
            ((TextView) viewInflate.findViewById(R.id.close_button)).setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModeRestoreDrawer.AnonymousClass2.invokeSuspend$lambda$1(completableDeferredCompletableDeferred$default, bottomSheetDialog, view);
                }
            });
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.entitlements_container);
            final ArrayList arrayList = new ArrayList();
            if (!this.$availableEntitlements.isEmpty()) {
                for (String str2 : this.$availableEntitlements) {
                    EntitlementSelection entitlementSelection2 = (EntitlementSelection) linkedHashMap.get(str2);
                    if (entitlementSelection2 == null) {
                        str = str2;
                        entitlementSelection = new EntitlementSelection(str, (EntitlementStateOption) null, (OfferTypeOption) null, 6, (DefaultConstructorMarker) null);
                    } else {
                        str = str2;
                        entitlementSelection = entitlementSelection2;
                    }
                    Activity activity = this.$activity;
                    Intrinsics.checkNotNull(linearLayout);
                    EntitlementRowViewHolder entitlementRowViewHolder = new EntitlementRowViewHolder(activity, linearLayout, str, entitlementSelection, new Function1() { // from class: com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return TestModeRestoreDrawer.AnonymousClass2.invokeSuspend$lambda$2((EntitlementSelection) obj3);
                        }
                    });
                    arrayList.add(entitlementRowViewHolder);
                    linearLayout.addView(entitlementRowViewHolder.getView());
                }
            } else {
                ((TextView) viewInflate.findViewById(R.id.no_entitlements_text)).setVisibility(0);
            }
            ((TextView) viewInflate.findViewById(R.id.restore_button)).setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModeRestoreDrawer.AnonymousClass2.invokeSuspend$lambda$4(arrayList, completableDeferredCompletableDeferred$default, bottomSheetDialog, view);
                }
            });
            bottomSheetDialog.setContentView(viewInflate);
            bottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    TestModeRestoreDrawer.AnonymousClass2.invokeSuspend$lambda$5(completableDeferredCompletableDeferred$default, dialogInterface);
                }
            });
            bottomSheetDialog.show();
            this.label = 1;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(CompletableDeferred completableDeferred, BottomSheetDialog bottomSheetDialog, View view) {
            completableDeferred.complete(RestoreSimulationResult.Cancelled.INSTANCE);
            bottomSheetDialog.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$2(EntitlementSelection entitlementSelection) {
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$4(List list, CompletableDeferred completableDeferred, BottomSheetDialog bottomSheetDialog, View view) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((EntitlementRowViewHolder) it.next()).getCurrentSelection());
            }
            completableDeferred.complete(new RestoreSimulationResult.Restored(arrayList));
            bottomSheetDialog.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$5(CompletableDeferred completableDeferred, DialogInterface dialogInterface) {
            if (completableDeferred.isCompleted()) {
                return;
            }
            completableDeferred.complete(RestoreSimulationResult.Cancelled.INSTANCE);
        }
    }

    public final Object show(Activity activity, List<String> list, List<EntitlementSelection> list2, Continuation<? super RestoreSimulationResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(activity, list2, list, null), continuation);
    }
}
