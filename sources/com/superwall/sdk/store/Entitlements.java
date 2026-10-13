package com.superwall.sdk.store;

import com.facebook.react.modules.appstate.AppStateModule;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.billing.DecomposedProductIds;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.customer.CustomerInfoMergingKt;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.internal.WebRedemptionResponse;
import com.superwall.sdk.storage.LatestRedemptionResponse;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.storage.StoredEntitlementsByProductId;
import com.superwall.sdk.storage.StoredSubscriptionStatus;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: Entitlements.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010-\u001a\u00020.2\u0006\u0010\"\u001a\u00020\u0018J(\u0010/\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000f012\b\b\u0002\u00102\u001a\u000203H\u0002J\u001b\u00104\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u00105\u001a\u00020\u000fH\u0000¢\u0006\u0002\b6J\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u000f0\tJ'\u00109\u001a\u00020.2\u0018\u0010:\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0013H\u0000¢\u0006\u0002\b;R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR&\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\n0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R0\u0010#\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\t8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b$\u0010\f\"\u0004\b%\u0010&R\u0017\u0010'\u001a\b\u0012\u0004\u0012\u00020\n0\t8F¢\u0006\u0006\u001a\u0004\b(\u0010\fR\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020\n0\t8F¢\u0006\u0006\u001a\u0004\b*\u0010\fR\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00020\n0\t8F¢\u0006\u0006\u001a\u0004\b,\u0010\f¨\u0006<"}, d2 = {"Lcom/superwall/sdk/store/Entitlements;", "", "storage", "Lcom/superwall/sdk/storage/Storage;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lcom/superwall/sdk/storage/Storage;Lkotlinx/coroutines/CoroutineScope;)V", "web", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "getWeb", "()Ljava/util/Set;", "entitlementsByProduct", "Ljava/util/concurrent/ConcurrentHashMap;", "", "getEntitlementsByProduct$superwall_release", "()Ljava/util/concurrent/ConcurrentHashMap;", "entitlementsByProductId", "", "getEntitlementsByProductId", "()Ljava/util/Map;", "_status", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "status", "Lkotlinx/coroutines/flow/StateFlow;", "getStatus", "()Lkotlinx/coroutines/flow/StateFlow;", "backingActive", "", "_all", "_activeDeviceEntitlements", "_inactive", RNConstants.ARG_VALUE, "activeDeviceEntitlements", "getActiveDeviceEntitlements$superwall_release", "setActiveDeviceEntitlements$superwall_release", "(Ljava/util/Set;)V", "all", "getAll", AppStateModule.APP_STATE_ACTIVE, "getActive", "inactive", "getInactive", "setSubscriptionStatus", "", "checkFor", "toCheck", "", "isExact", "", "byProductId", "id", "byProductId$superwall_release", "byProductIds", "ids", "addEntitlementsByProductId", "idToEntitlements", "addEntitlementsByProductId$superwall_release", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Entitlements {
    private final Set<Entitlement> _activeDeviceEntitlements;
    private final Set<Entitlement> _all;
    private final Set<Entitlement> _inactive;
    private final MutableStateFlow<SubscriptionStatus> _status;
    private Set<Entitlement> backingActive;
    private final ConcurrentHashMap<String, Set<Entitlement>> entitlementsByProduct;
    private final CoroutineScope scope;
    private final Storage storage;

    public Entitlements(Storage storage, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.storage = storage;
        this.scope = scope;
        this.entitlementsByProduct = new ConcurrentHashMap<>();
        this._status = StateFlowKt.MutableStateFlow(SubscriptionStatus.Unknown.INSTANCE);
        this.backingActive = new LinkedHashSet();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this._all = linkedHashSet;
        this._activeDeviceEntitlements = new LinkedHashSet();
        this._inactive = CollectionsKt.toMutableSet(CollectionsKt.subtract(linkedHashSet, this.backingActive));
        try {
            SubscriptionStatus subscriptionStatus = (SubscriptionStatus) storage.read(StoredSubscriptionStatus.INSTANCE);
            if (subscriptionStatus != null) {
                setSubscriptionStatus(subscriptionStatus);
            }
        } catch (ClassCastException unused) {
            this.storage.delete(StoredSubscriptionStatus.INSTANCE);
            setSubscriptionStatus(SubscriptionStatus.Unknown.INSTANCE);
        }
        try {
            Map<? extends String, ? extends Set<Entitlement>> map = (Map) this.storage.read(StoredEntitlementsByProductId.INSTANCE);
            if (map != null) {
                this.entitlementsByProduct.putAll(map);
            }
        } catch (ClassCastException unused2) {
            this.storage.delete(StoredEntitlementsByProductId.INSTANCE);
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass3(null), 3, null);
    }

    public /* synthetic */ Entitlements(Storage storage, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, (i & 2) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()) : coroutineScope);
    }

    public final Set<Entitlement> getWeb() {
        CustomerInfo customerInfo;
        List<Entitlement> entitlements;
        WebRedemptionResponse webRedemptionResponse = (WebRedemptionResponse) this.storage.read(LatestRedemptionResponse.INSTANCE);
        if (webRedemptionResponse != null && (customerInfo = webRedemptionResponse.getCustomerInfo()) != null && (entitlements = customerInfo.getEntitlements()) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : entitlements) {
                if (((Entitlement) obj).isActive()) {
                    arrayList.add(obj);
                }
            }
            Set<Entitlement> set = CustomerInfoMergingKt.toSet(arrayList);
            if (set != null) {
                return set;
            }
        }
        return SetsKt.emptySet();
    }

    public final ConcurrentHashMap<String, Set<Entitlement>> getEntitlementsByProduct$superwall_release() {
        return this.entitlementsByProduct;
    }

    public final Map<String, Set<Entitlement>> getEntitlementsByProductId() {
        return MapsKt.toMap(this.entitlementsByProduct);
    }

    public final StateFlow<SubscriptionStatus> getStatus() {
        return FlowKt.asStateFlow(this._status);
    }

    public final Set<Entitlement> getActiveDeviceEntitlements$superwall_release() {
        return this._activeDeviceEntitlements;
    }

    public final void setActiveDeviceEntitlements$superwall_release(Set<Entitlement> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._activeDeviceEntitlements.clear();
        this._activeDeviceEntitlements.addAll(value);
    }

    public final Set<Entitlement> getAll() {
        Set set = CollectionsKt.toSet(this._all);
        Collection<Set<Entitlement>> collectionValues = this.entitlementsByProduct.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        return SetsKt.plus(SetsKt.plus(set, (Iterable) CollectionsKt.flatten(collectionValues)), (Iterable) CollectionsKt.toSet(getWeb()));
    }

    public final Set<Entitlement> getActive() {
        return CustomerInfoMergingKt.toSet(CustomerInfoMergingKt.mergeEntitlementsPrioritized(CollectionsKt.toList(SetsKt.plus(SetsKt.plus((Set) this.backingActive, (Iterable) this._activeDeviceEntitlements), (Iterable) getWeb()))));
    }

    public final Set<Entitlement> getInactive() {
        return SetsKt.plus(CollectionsKt.toSet(this._inactive), (Iterable) SetsKt.minus((Set) getAll(), (Iterable) getActive()));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.Entitlements$3, reason: invalid class name */
    /* JADX INFO: compiled from: Entitlements.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.Entitlements$3", f = "Entitlements.kt", i = {}, l = {118}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Entitlements.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StateFlow<SubscriptionStatus> status = Entitlements.this.getStatus();
                final Entitlements entitlements = Entitlements.this;
                this.label = 1;
                if (status.collect(new FlowCollector() { // from class: com.superwall.sdk.store.Entitlements.3.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((SubscriptionStatus) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(SubscriptionStatus subscriptionStatus, Continuation<? super Unit> continuation) {
                        entitlements.storage.write(StoredSubscriptionStatus.INSTANCE, subscriptionStatus);
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    public final void setSubscriptionStatus(SubscriptionStatus value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof SubscriptionStatus.Active) {
            SubscriptionStatus.Active active = (SubscriptionStatus.Active) value;
            if (active.getEntitlements().isEmpty()) {
                setSubscriptionStatus(SubscriptionStatus.Inactive.INSTANCE);
                return;
            }
            Set<Entitlement> set = CustomerInfoMergingKt.toSet(CollectionsKt.toList(active.getEntitlements()));
            Set<Entitlement> set2 = this.backingActive;
            ArrayList arrayList = new ArrayList();
            for (Object obj : set) {
                if (((Entitlement) obj).isActive()) {
                    arrayList.add(obj);
                }
            }
            set2.addAll(arrayList);
            Set<Entitlement> set3 = set;
            this._all.addAll(set3);
            this._inactive.removeAll(set3);
            this._status.setValue(value);
            return;
        }
        if (value instanceof SubscriptionStatus.Inactive) {
            this._activeDeviceEntitlements.clear();
            this.backingActive.clear();
            this._inactive.clear();
            this._status.setValue(value);
            return;
        }
        if (!(value instanceof SubscriptionStatus.Unknown)) {
            throw new NoWhenBranchMatchedException();
        }
        this.backingActive.clear();
        this._activeDeviceEntitlements.clear();
        this._inactive.clear();
        this._status.setValue(value);
    }

    static /* synthetic */ Set checkFor$default(Entitlements entitlements, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return entitlements.checkFor(list, z);
    }

    private final Set<Entitlement> checkFor(List<String> toCheck, boolean isExact) {
        Set<Entitlement> set;
        boolean zContains$default;
        Object obj = null;
        if (toCheck.isEmpty()) {
            return null;
        }
        String str = (String) CollectionsKt.first((List) toCheck);
        List<String> listDrop = CollectionsKt.drop(toCheck, 1);
        Set<Map.Entry<String, Set<Entitlement>>> setEntrySet = this.entitlementsByProduct.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        for (Object obj2 : setEntrySet) {
            Map.Entry entry = (Map.Entry) obj2;
            boolean z = false;
            if (isExact) {
                zContains$default = Intrinsics.areEqual(entry.getKey(), str);
            } else {
                Object key = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                zContains$default = StringsKt.contains$default((CharSequence) key, (CharSequence) str, false, 2, (Object) null);
            }
            if (zContains$default) {
                Object value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                if (!((Collection) value).isEmpty()) {
                    z = true;
                }
            }
            if (z) {
                obj = obj2;
                break;
            }
        }
        Map.Entry entry2 = (Map.Entry) obj;
        return (entry2 == null || (set = (Set) entry2.getValue()) == null) ? checkFor(listDrop, isExact) : set;
    }

    public final Set<Entitlement> byProductId$superwall_release(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        DecomposedProductIds decomposedProductIdsFrom = DecomposedProductIds.INSTANCE.from(id);
        String[] strArr = new String[3];
        strArr[0] = decomposedProductIdsFrom.getFullId();
        String subscriptionId = decomposedProductIdsFrom.getSubscriptionId();
        String basePlanId = decomposedProductIdsFrom.getBasePlanId();
        if (basePlanId == null) {
            basePlanId = "";
        }
        String specificId = decomposedProductIdsFrom.getOfferType().getSpecificId();
        if (specificId == null) {
            specificId = "";
        }
        strArr[1] = subscriptionId + ":" + basePlanId + ":" + specificId;
        String subscriptionId2 = decomposedProductIdsFrom.getSubscriptionId();
        String basePlanId2 = decomposedProductIdsFrom.getBasePlanId();
        if (basePlanId2 == null) {
            basePlanId2 = "";
        }
        strArr[2] = subscriptionId2 + ":" + basePlanId2;
        Set<Entitlement> setCheckFor$default = checkFor$default(this, CollectionsKt.listOf((Object[]) strArr), false, 2, null);
        if (setCheckFor$default != null) {
            return setCheckFor$default;
        }
        String[] strArr2 = new String[2];
        String subscriptionId3 = decomposedProductIdsFrom.getSubscriptionId();
        String basePlanId3 = decomposedProductIdsFrom.getBasePlanId();
        strArr2[0] = subscriptionId3 + ":" + (basePlanId3 != null ? basePlanId3 : "") + ":";
        strArr2[1] = decomposedProductIdsFrom.getSubscriptionId();
        Set<Entitlement> setCheckFor = checkFor(CollectionsKt.listOf((Object[]) strArr2), false);
        return setCheckFor == null ? SetsKt.emptySet() : setCheckFor;
    }

    public final Set<Entitlement> byProductIds(Set<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = ids.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, byProductId$superwall_release((String) it.next()));
        }
        return CustomerInfoMergingKt.toSet(arrayList);
    }

    public final void addEntitlementsByProductId$superwall_release(Map<String, ? extends Set<Entitlement>> idToEntitlements) {
        Intrinsics.checkNotNullParameter(idToEntitlements, "idToEntitlements");
        ConcurrentHashMap<String, Set<Entitlement>> concurrentHashMap = this.entitlementsByProduct;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(idToEntitlements.size()));
        Iterator<T> it = idToEntitlements.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), CollectionsKt.toSet((Set) entry.getValue()));
        }
        concurrentHashMap.putAll(MapsKt.toMap(linkedHashMap));
        this._all.clear();
        Set<Entitlement> set = this._all;
        Collection<Set<Entitlement>> collectionValues = this.entitlementsByProduct.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        set.addAll(CollectionsKt.flatten(collectionValues));
        this.storage.write(StoredEntitlementsByProductId.INSTANCE, this.entitlementsByProduct);
    }
}
