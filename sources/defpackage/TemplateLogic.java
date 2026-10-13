package defpackage;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.dependencies.VariablesFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.CrossplatformProduct;
import com.superwall.sdk.models.product.PlayStoreProduct;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.paywall.view.webview.templating.models.ExperimentTemplate;
import com.superwall.sdk.paywall.view.webview.templating.models.FreeTrialTemplate;
import com.superwall.sdk.paywall.view.webview.templating.models.JsonVariables;
import com.superwall.sdk.paywall.view.webview.templating.models.ProductTemplate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: TemplateLogic.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JD\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000fH\u0086@¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"LTemplateLogic;", "", "<init>", "()V", "getBase64EncodedTemplates", "", "json", "Lkotlinx/serialization/json/Json;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "factory", "Lcom/superwall/sdk/dependencies/VariablesFactory;", "encodeToBase64", "Lkotlin/Function1;", "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TemplateLogic {
    public static final TemplateLogic INSTANCE = new TemplateLogic();

    /* JADX INFO: renamed from: TemplateLogic$getBase64EncodedTemplates$1, reason: invalid class name */
    /* JADX INFO: compiled from: TemplateLogic.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "TemplateLogic", f = "TemplateLogic.kt", i = {0, 0, 0, 0}, l = {49}, m = "getBase64EncodedTemplates", n = {"json", "paywall", "encodeToBase64", "productsTemplate"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TemplateLogic.this.getBase64EncodedTemplates(null, null, null, null, null, this);
        }
    }

    private TemplateLogic() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object getBase64EncodedTemplates(Json json, Paywall paywall, EventData eventData, VariablesFactory variablesFactory, Function1<? super String, String> function1, Continuation<? super String> continuation) {
        AnonymousClass1 anonymousClass1;
        Function1<? super String, String> function2;
        ProductTemplate productTemplate;
        Json json2;
        Paywall paywall2;
        String id;
        String id2;
        Experiment experiment;
        String groupId;
        Experiment experiment2;
        Experiment.Variant variant;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            List<CrossplatformProduct> playStoreProducts = paywall.getPlayStoreProducts();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(playStoreProducts, 10));
            for (CrossplatformProduct crossplatformProduct : playStoreProducts) {
                String name = crossplatformProduct.getName();
                Set set = CollectionsKt.toSet(crossplatformProduct.getEntitlements());
                CrossplatformProduct.StoreProduct storeProduct = crossplatformProduct.getStoreProduct();
                Intrinsics.checkNotNull(storeProduct, "null cannot be cast to non-null type com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct.PlayStore");
                CrossplatformProduct.StoreProduct.PlayStore playStore = (CrossplatformProduct.StoreProduct.PlayStore) storeProduct;
                arrayList.add(new ProductItem(crossplatformProduct.getCompositeId(), name, new ProductItem.StoreProductType.PlayStore(new PlayStoreProduct(null, playStore.getProductIdentifier(), playStore.getBasePlanIdentifier(), playStore.getOffer(), 1, null)), set));
            }
            ProductTemplate productTemplate2 = new ProductTemplate("products", arrayList);
            List<ProductVariable> productVariables = paywall.getProductVariables();
            List<ComputedPropertyRequest> computedPropertyRequests = paywall.getComputedPropertyRequests();
            anonymousClass1.L$0 = json;
            anonymousClass1.L$1 = paywall;
            function2 = function1;
            anonymousClass1.L$2 = function2;
            anonymousClass1.L$3 = productTemplate2;
            anonymousClass1.label = 1;
            Object objMakeJsonVariables = variablesFactory.makeJsonVariables(productVariables, computedPropertyRequests, eventData, anonymousClass1);
            if (objMakeJsonVariables == coroutine_suspended) {
                return coroutine_suspended;
            }
            productTemplate = productTemplate2;
            obj = objMakeJsonVariables;
            json2 = json;
            paywall2 = paywall;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            productTemplate = (ProductTemplate) anonymousClass1.L$3;
            Function1<? super String, String> function3 = (Function1) anonymousClass1.L$2;
            paywall2 = (Paywall) anonymousClass1.L$1;
            json2 = (Json) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            function2 = function3;
        }
        JsonVariables jsonVariables = (JsonVariables) obj;
        FreeTrialTemplate freeTrialTemplate = new FreeTrialTemplate("template_substitutions_prefix", paywall2.isFreeTrialAvailable() ? "freeTrial" : null);
        Experiment experiment3 = paywall2.getExperiment();
        String str = "";
        if (experiment3 == null || (id = experiment3.getId()) == null) {
            id = "";
        }
        if (paywall2 == null || (experiment2 = paywall2.getExperiment()) == null || (variant = experiment2.getVariant()) == null || (id2 = variant.getId()) == null) {
            id2 = "";
        }
        if (paywall2 != null && (experiment = paywall2.getExperiment()) != null && (groupId = experiment.getGroupId()) != null) {
            str = groupId;
        }
        String str2 = "[" + CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) new String[]{json2.encodeToString(ProductTemplate.INSTANCE.serializer(), productTemplate), json2.encodeToString(JsonVariables.INSTANCE.serializer(), jsonVariables), json2.encodeToString(FreeTrialTemplate.INSTANCE.serializer(), freeTrialTemplate), json2.encodeToString(ExperimentTemplate.INSTANCE.serializer(), new ExperimentTemplate("experiment", id, id2, str))}), ",", null, null, 0, null, null, 62, null) + "]";
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "!!! Template Logic: " + str2, null, null, 24, null);
        return function2.invoke(str2);
    }
}
