package com.superwall.sdk.network;

import com.superwall.sdk.models.serialization.DateSerializer;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.modules.SerializersModuleBuilder;

/* JADX INFO: compiled from: JsonFactory.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/network/JsonFactory;", "", "json", "Lkotlinx/serialization/json/Json;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface JsonFactory {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    Json json();

    /* JADX INFO: compiled from: JsonFactory.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/network/JsonFactory$Companion;", "", "<init>", "()V", "JSON", "Lkotlinx/serialization/json/Json;", "getJSON", "()Lkotlinx/serialization/json/Json;", "JSON_POLYMORPHIC", "getJSON_POLYMORPHIC", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Json JSON;
        private static final Json JSON_POLYMORPHIC;

        private Companion() {
        }

        public final Json getJSON() {
            return JSON;
        }

        static {
            Json jsonJson$default = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.network.JsonFactory$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return JsonFactory.Companion.JSON$lambda$1((JsonBuilder) obj);
                }
            }, 1, null);
            JSON = jsonJson$default;
            JSON_POLYMORPHIC = JsonKt.Json(jsonJson$default, new Function1() { // from class: com.superwall.sdk.network.JsonFactory$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return JsonFactory.Companion.JSON_POLYMORPHIC$lambda$2((JsonBuilder) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit JSON$lambda$1(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.setIgnoreUnknownKeys(true);
            Json.setEncodeDefaults(true);
            Json.setNamingStrategy(JsonNamingStrategy.INSTANCE.getSnakeCase());
            SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
            serializersModuleBuilder.contextual(Reflection.getOrCreateKotlinClass(Date.class), DateSerializer.INSTANCE);
            Json.setSerializersModule(serializersModuleBuilder.build());
            return Unit.INSTANCE;
        }

        public final Json getJSON_POLYMORPHIC() {
            return JSON_POLYMORPHIC;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit JSON_POLYMORPHIC$lambda$2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.setClassDiscriminatorMode(ClassDiscriminatorMode.POLYMORPHIC);
            Json.setClassDiscriminator("type");
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: JsonFactory.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static Json json(JsonFactory jsonFactory) {
            return JsonFactory.INSTANCE.getJSON();
        }
    }
}
