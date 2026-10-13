package expo.modules.superwallexpo;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.models.attribution.AttributionProvider;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.superwallexpo.json.IntegrationAttributeKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SuperwallExpoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$26$1", f = "SuperwallExpoModule.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class SuperwallExpoModule$definition$1$26$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, String> $attributes;
    final /* synthetic */ Promise $promise;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuperwallExpoModule$definition$1$26$1(Map<String, String> map, Promise promise, Continuation<? super SuperwallExpoModule$definition$1$26$1> continuation) {
        super(2, continuation);
        this.$attributes = map;
        this.$promise = promise;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuperwallExpoModule$definition$1$26$1(this.$attributes, this.$promise, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SuperwallExpoModule$definition$1$26$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            Map<String, String> map = this.$attributes;
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                String key = next.getKey();
                String value = next.getValue();
                AttributionProvider attributionProviderAttributionProviderFromString = IntegrationAttributeKt.attributionProviderFromString(key);
                Pair pair = attributionProviderAttributionProviderFromString != null ? TuplesKt.to(attributionProviderAttributionProviderFromString, value) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            Superwall.INSTANCE.getInstance().setIntegrationAttributes(MapsKt.toMap(arrayList));
            this.$promise.resolve((Object) null);
        } catch (Exception e) {
            this.$promise.reject(new CodedException(e));
        }
        return Unit.INSTANCE;
    }
}
