package com.superwall.sdk.store.testmode.ui;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.superwall.sdk.R;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.serialization.AnyMapSerializer;
import com.superwall.sdk.storage.TestModeSettings;
import com.superwall.sdk.store.testmode.FreeTrialOverride;
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
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: TestModeModal.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JT\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\r2\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0086@¢\u0006\u0002\u0010\u0012J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0002¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/TestModeModal;", "", "<init>", "()V", "show", "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;", "activity", "Landroid/app/Activity;", "reason", "", "hasPurchaseController", "", "availableEntitlements", "", "apiKey", "dashboardBaseUrl", "savedSettings", "Lcom/superwall/sdk/storage/TestModeSettings;", "(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/storage/TestModeSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "copyToClipboard", "", "context", "Landroid/content/Context;", "label", "text", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestModeModal {
    public static final TestModeModal INSTANCE = new TestModeModal();

    private TestModeModal() {
    }

    public static /* synthetic */ Object show$default(TestModeModal testModeModal, Activity activity, String str, boolean z, List list, String str2, String str3, TestModeSettings testModeSettings, Continuation continuation, int i, Object obj) {
        if ((i & 16) != 0) {
            str2 = "";
        }
        if ((i & 32) != 0) {
            str3 = "";
        }
        if ((i & 64) != 0) {
            testModeSettings = null;
        }
        return testModeModal.show(activity, str, z, list, str2, str3, testModeSettings, continuation);
    }

    public final Object show(Activity activity, String str, boolean z, List<String> list, String str2, String str3, TestModeSettings testModeSettings, Continuation<? super TestModeModalResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(activity, testModeSettings, str, Superwall.INSTANCE.getInstance().getUserId(), z, list, str3, str2, Json.INSTANCE.encodeToString(AnyMapSerializer.INSTANCE, Superwall.INSTANCE.getInstance().getUserAttributes()), null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2, reason: invalid class name */
    /* JADX INFO: compiled from: TestModeModal.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.ui.TestModeModal$show$2", f = "TestModeModal.kt", i = {}, l = {191}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TestModeModalResult>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ String $apiKey;
        final /* synthetic */ List<String> $availableEntitlements;
        final /* synthetic */ String $dashboardBaseUrl;
        final /* synthetic */ boolean $hasPurchaseController;
        final /* synthetic */ String $reason;
        final /* synthetic */ TestModeSettings $savedSettings;
        final /* synthetic */ String $userAttributes;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Activity activity, TestModeSettings testModeSettings, String str, String str2, boolean z, List<String> list, String str3, String str4, String str5, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.$savedSettings = testModeSettings;
            this.$reason = str;
            this.$userId = str2;
            this.$hasPurchaseController = z;
            this.$availableEntitlements = list;
            this.$dashboardBaseUrl = str3;
            this.$apiKey = str4;
            this.$userAttributes = str5;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$activity, this.$savedSettings, this.$reason, this.$userId, this.$hasPurchaseController, this.$availableEntitlements, this.$dashboardBaseUrl, this.$apiKey, this.$userAttributes, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TestModeModalResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            LinkedHashMap linkedHashMapEmptyMap;
            T t;
            String str;
            EntitlementSelection entitlementSelection;
            FreeTrialOverride freeTrialOverride;
            List<EntitlementSelection> entitlementSelections;
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
            final IOScope iOScope = new IOScope(null, 1, null);
            final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this.$activity);
            bottomSheetDialog.setCancelable(false);
            View viewInflate = LayoutInflater.from(this.$activity).inflate(R.layout.test_mode_modal, (ViewGroup) null);
            viewInflate.setBackground(ContextCompat.getDrawable(this.$activity, R.drawable.test_mode_sheet_bg));
            TestModeSettings testModeSettings = this.$savedSettings;
            if (testModeSettings == null || (entitlementSelections = testModeSettings.getEntitlementSelections()) == null) {
                linkedHashMapEmptyMap = MapsKt.emptyMap();
            } else {
                List<EntitlementSelection> list = entitlementSelections;
                linkedHashMapEmptyMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
                for (Object obj2 : list) {
                    linkedHashMapEmptyMap.put(((EntitlementSelection) obj2).getIdentifier(), obj2);
                }
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            TestModeSettings testModeSettings2 = this.$savedSettings;
            if (testModeSettings2 == null || (freeTrialOverride = testModeSettings2.getFreeTrialOverride()) == null) {
                t = freeTrialOverride;
                t = FreeTrialOverride.UseDefault;
            }
            t = freeTrialOverride;
            objectRef.element = t;
            ((TextView) viewInflate.findViewById(R.id.reason_text)).setText(this.$reason);
            TextView textView = (TextView) viewInflate.findViewById(R.id.user_id_value);
            String str2 = this.$userId;
            if (str2 == null) {
                str2 = "(anonymous)";
            }
            textView.setText(str2);
            ((TextView) viewInflate.findViewById(R.id.purchase_controller_value)).setText(this.$hasPurchaseController ? "Provided" : "Not provided");
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.copy_user_id_button);
            final Activity activity = this.$activity;
            final String str3 = this.$userId;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModeModal.AnonymousClass2.invokeSuspend$lambda$1(activity, str3, view);
                }
            });
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.view_dashboard_button);
            final String str4 = this.$dashboardBaseUrl;
            final String str5 = this.$apiKey;
            final String str6 = this.$userId;
            final Activity activity2 = this.$activity;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModeModal.AnonymousClass2.invokeSuspend$lambda$2(str4, str5, str6, activity2, view);
                }
            });
            BuildersKt__Builders_commonKt.launch$default(iOScope, null, null, new AnonymousClass3(viewInflate, this.$activity, null), 3, null);
            View viewFindViewById = viewInflate.findViewById(R.id.user_attributes_row);
            final Activity activity3 = this.$activity;
            final String str7 = this.$userAttributes;
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModeModal.AnonymousClass2.invokeSuspend$lambda$3(activity3, str7, view);
                }
            });
            Spinner spinner = (Spinner) viewInflate.findViewById(R.id.free_trial_spinner);
            final List list2 = CollectionsKt.toList(FreeTrialOverride.getEntries());
            Activity activity4 = this.$activity;
            int i2 = R.layout.test_mode_spinner_item;
            List list3 = list2;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                arrayList.add(((FreeTrialOverride) it.next()).getDisplayName());
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(activity4, i2, arrayList);
            arrayAdapter.setDropDownViewResource(R.layout.test_mode_spinner_dropdown_item);
            spinner.setAdapter((SpinnerAdapter) arrayAdapter);
            spinner.setSelection(RangesKt.coerceAtLeast(list2.indexOf(objectRef.element), 0));
            spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal.show.2.5
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> parent) {
                }

                /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> parent, View itemView, int position, long id) {
                    objectRef.element = list2.get(position);
                }
            });
            final ArrayList arrayList2 = new ArrayList();
            if (!this.$availableEntitlements.isEmpty()) {
                ((LinearLayout) viewInflate.findViewById(R.id.entitlements_section)).setVisibility(0);
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.entitlements_container);
                for (String str8 : this.$availableEntitlements) {
                    EntitlementSelection entitlementSelection2 = (EntitlementSelection) linkedHashMapEmptyMap.get(str8);
                    if (entitlementSelection2 == null) {
                        str = str8;
                        entitlementSelection = new EntitlementSelection(str, (EntitlementStateOption) null, (OfferTypeOption) null, 6, (DefaultConstructorMarker) null);
                    } else {
                        str = str8;
                        entitlementSelection = entitlementSelection2;
                    }
                    Activity activity5 = this.$activity;
                    Intrinsics.checkNotNull(linearLayout);
                    EntitlementRowViewHolder entitlementRowViewHolder = new EntitlementRowViewHolder(activity5, linearLayout, str, entitlementSelection, new Function1() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return TestModeModal.AnonymousClass2.invokeSuspend$lambda$5((EntitlementSelection) obj3);
                        }
                    });
                    arrayList2.add(entitlementRowViewHolder);
                    linearLayout.addView(entitlementRowViewHolder.getView());
                }
            }
            ((TextView) viewInflate.findViewById(R.id.continue_button)).setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestModeModal.AnonymousClass2.invokeSuspend$lambda$7(arrayList2, completableDeferredCompletableDeferred$default, objectRef, bottomSheetDialog, view);
                }
            });
            bottomSheetDialog.setContentView(viewInflate);
            bottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    TestModeModal.AnonymousClass2.invokeSuspend$lambda$8(iOScope, completableDeferredCompletableDeferred$default, dialogInterface);
                }
            });
            bottomSheetDialog.show();
            this.label = 1;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(Activity activity, String str, View view) {
            TestModeModal testModeModal = TestModeModal.INSTANCE;
            Activity activity2 = activity;
            if (str == null) {
                str = "";
            }
            testModeModal.copyToClipboard(activity2, "User ID", str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$2(String str, String str2, String str3, Activity activity, View view) {
            String str4;
            if (str.length() <= 0 || str2.length() <= 0 || (str4 = str3) == null || str4.length() == 0) {
                return;
            }
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str + "/sdk-link/applications/" + str2 + "/users/" + str3)));
            } catch (Exception unused) {
                Toast.makeText(activity, "Could not open browser", 0).show();
            }
        }

        /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3, reason: invalid class name */
        /* JADX INFO: compiled from: TestModeModal.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3", f = "TestModeModal.kt", i = {}, l = {98, 99}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Activity $activity;
            final /* synthetic */ View $view;
            Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(View view, Activity activity, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$view = view;
                this.$activity = activity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass3(this.$view, this.$activity, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code restructure failed: missing block: B:15:0x006b, code lost:
            
                if (kotlinx.coroutines.BuildersKt.withContext(kotlinx.coroutines.Dispatchers.getMain(), new com.superwall.sdk.store.testmode.ui.TestModeModal.AnonymousClass2.AnonymousClass3.AnonymousClass1(r8.$view, r8.$activity, r9, null), r8) == r0) goto L16;
             */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r9) {
                /*
                    r8 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r1 = r8.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L26
                    if (r1 == r3) goto L1a
                    if (r1 != r2) goto L12
                    kotlin.ResultKt.throwOnFailure(r9)
                    goto L6e
                L12:
                    java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r9.<init>(r0)
                    throw r9
                L1a:
                    java.lang.Object r1 = r8.L$1
                    kotlinx.serialization.SerializationStrategy r1 = (kotlinx.serialization.SerializationStrategy) r1
                    java.lang.Object r3 = r8.L$0
                    kotlinx.serialization.json.Json$Default r3 = (kotlinx.serialization.json.Json.Companion) r3
                    kotlin.ResultKt.throwOnFailure(r9)
                    goto L48
                L26:
                    kotlin.ResultKt.throwOnFailure(r9)
                    kotlinx.serialization.json.Json$Default r9 = kotlinx.serialization.json.Json.INSTANCE
                    com.superwall.sdk.models.serialization.AnyMapSerializer r1 = com.superwall.sdk.models.serialization.AnyMapSerializer.INSTANCE
                    kotlinx.serialization.SerializationStrategy r1 = (kotlinx.serialization.SerializationStrategy) r1
                    com.superwall.sdk.Superwall$Companion r4 = com.superwall.sdk.Superwall.INSTANCE
                    com.superwall.sdk.Superwall r4 = r4.getInstance()
                    r5 = r8
                    kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                    r8.L$0 = r9
                    r8.L$1 = r1
                    r8.label = r3
                    java.lang.Object r3 = r4.deviceAttributes(r5)
                    if (r3 != r0) goto L45
                    goto L6d
                L45:
                    r7 = r3
                    r3 = r9
                    r9 = r7
                L48:
                    java.lang.String r9 = r3.encodeToString(r1, r9)
                    kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
                    kotlin.coroutines.CoroutineContext r1 = (kotlin.coroutines.CoroutineContext) r1
                    com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3$1 r3 = new com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3$1
                    android.view.View r4 = r8.$view
                    android.app.Activity r5 = r8.$activity
                    r6 = 0
                    r3.<init>(r4, r5, r9, r6)
                    kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3
                    r9 = r8
                    kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
                    r8.L$0 = r6
                    r8.L$1 = r6
                    r8.label = r2
                    java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r9)
                    if (r9 != r0) goto L6e
                L6d:
                    return r0
                L6e:
                    kotlin.Unit r9 = kotlin.Unit.INSTANCE
                    return r9
                */
                throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.testmode.ui.TestModeModal.AnonymousClass2.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3$1, reason: invalid class name */
            /* JADX INFO: compiled from: TestModeModal.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3$1", f = "TestModeModal.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Activity $activity;
                final /* synthetic */ String $deviceAttributes;
                final /* synthetic */ View $view;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(View view, Activity activity, String str, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$view = view;
                    this.$activity = activity;
                    this.$deviceAttributes = str;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$view, this.$activity, this.$deviceAttributes, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    View viewFindViewById = this.$view.findViewById(R.id.device_attributes_row);
                    final Activity activity = this.$activity;
                    final String str = this.$deviceAttributes;
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3$1$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            TestModeModal.AnonymousClass2.AnonymousClass3.AnonymousClass1.invokeSuspend$lambda$0(activity, str, view);
                        }
                    });
                    return Unit.INSTANCE;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final void invokeSuspend$lambda$0(Activity activity, String str, View view) {
                    TestModeAttributesViewer.INSTANCE.show(activity, "Device Attributes", str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$3(Activity activity, String str, View view) {
            TestModeAttributesViewer.INSTANCE.show(activity, "User Attributes", str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$5(EntitlementSelection entitlementSelection) {
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final void invokeSuspend$lambda$7(List list, CompletableDeferred completableDeferred, Ref.ObjectRef objectRef, BottomSheetDialog bottomSheetDialog, View view) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((EntitlementRowViewHolder) it.next()).getCurrentSelection());
            }
            completableDeferred.complete(new TestModeModalResult(arrayList, (FreeTrialOverride) objectRef.element));
            bottomSheetDialog.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$8(IOScope iOScope, CompletableDeferred completableDeferred, DialogInterface dialogInterface) {
            CoroutineScopeKt.cancel$default(iOScope, null, 1, null);
            if (completableDeferred.isCompleted()) {
                return;
            }
            completableDeferred.complete(new TestModeModalResult(CollectionsKt.emptyList(), FreeTrialOverride.UseDefault));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void copyToClipboard(Context context, String label, String text) {
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(label, text));
        Toast.makeText(context, label + " copied", 0).show();
    }
}
