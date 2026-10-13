package expo.modules.superwallexpo;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.exception.CodedException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SuperwallExpoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$9$1", f = "SuperwallExpoModule.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class SuperwallExpoModule$definition$1$9$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Promise $promise;
    final /* synthetic */ Map<String, Object> $status;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuperwallExpoModule$definition$1$9$1(Map<String, ? extends Object> map, Promise promise, Continuation<? super SuperwallExpoModule$definition$1$9$1> continuation) {
        super(2, continuation);
        this.$status = map;
        this.$promise = promise;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuperwallExpoModule$definition$1$9$1(this.$status, this.$promise, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SuperwallExpoModule$definition$1$9$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ab A[Catch: Exception -> 0x00e6, TryCatch #0 {Exception -> 0x00e6, blocks: (B:5:0x000a, B:7:0x0017, B:12:0x001f, B:15:0x002d, B:55:0x00d2, B:56:0x00d7, B:22:0x0042, B:25:0x004c, B:27:0x0058, B:30:0x005e, B:31:0x0071, B:33:0x0077, B:35:0x0087, B:38:0x008d, B:40:0x0094, B:41:0x0098, B:43:0x00a2, B:47:0x00af, B:46:0x00ab, B:48:0x00b7, B:51:0x00c0, B:52:0x00c6, B:54:0x00cc), top: B:64:0x000a }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String upperCase;
        SubscriptionStatus.Unknown active;
        Set setEmptySet;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            Object obj2 = this.$status.get("status");
            String str = obj2 instanceof String ? (String) obj2 : null;
            if (str != null) {
                upperCase = str.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (upperCase == null) {
                    upperCase = "UNKNOWN";
                }
            } else {
                upperCase = "UNKNOWN";
            }
            int iHashCode = upperCase.hashCode();
            if (iHashCode != 433141802) {
                if (iHashCode != 807292011) {
                    if (iHashCode == 1925346054 && upperCase.equals("ACTIVE")) {
                        Object obj3 = this.$status.get("entitlements");
                        List list = obj3 instanceof List ? (List) obj3 : null;
                        if (list != null) {
                            List list2 = list;
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                            Iterator it = list2.iterator();
                            while (it.hasNext()) {
                                Object obj4 = ((Map) it.next()).get("id");
                                String str2 = obj4 instanceof String ? (String) obj4 : null;
                                arrayList.add(str2 != null ? new Entitlement(str2) : null);
                            }
                            List listFilterNotNull = CollectionsKt.filterNotNull(arrayList);
                            if (listFilterNotNull == null || (setEmptySet = CollectionsKt.toSet(listFilterNotNull)) == null) {
                                setEmptySet = SetsKt.emptySet();
                            }
                        } else {
                            setEmptySet = SetsKt.emptySet();
                        }
                        active = new SubscriptionStatus.Active(setEmptySet);
                    } else {
                        active = SubscriptionStatus.Unknown.INSTANCE;
                    }
                } else if (upperCase.equals("INACTIVE")) {
                    active = SubscriptionStatus.Inactive.INSTANCE;
                } else {
                    active = SubscriptionStatus.Unknown.INSTANCE;
                }
            } else if (upperCase.equals("UNKNOWN")) {
                active = SubscriptionStatus.Unknown.INSTANCE;
            } else {
                active = SubscriptionStatus.Unknown.INSTANCE;
            }
            Superwall.INSTANCE.getInstance().setSubscriptionStatus(active);
            this.$promise.resolve((Object) null);
        } catch (Exception e) {
            this.$promise.reject(new CodedException(e));
        }
        return Unit.INSTANCE;
    }
}
