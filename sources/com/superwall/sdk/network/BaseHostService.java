package com.superwall.sdk.network;

import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.dependencies.ApiFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.models.assignment.AssignmentPostback;
import com.superwall.sdk.models.assignment.ConfirmedAssignmentResponse;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.Paywalls;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: BaseHostService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ*\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0096@¢\u0006\u0002\u0010\u0019JD\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010\u0018\u001a\u00020\u00032 \b\u0002\u0010\u001e\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010\u001fH\u0086@¢\u0006\u0002\u0010#J\u001a\u0010$\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001d0\u001bH\u0086@¢\u0006\u0002\u0010&J\"\u0010'\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010(\u001a\u00020)H\u0086@¢\u0006\u0002\u0010*J$\u0010+\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u001d0\u001b2\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0086@¢\u0006\u0002\u0010-J&\u0010.\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u001d0\u001b2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0003H\u0086@¢\u0006\u0002\u00101R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u00062"}, d2 = {"Lcom/superwall/sdk/network/BaseHostService;", "Lcom/superwall/sdk/network/NetworkService;", "host", "", "version", "factory", "Lcom/superwall/sdk/dependencies/ApiFactory;", "json", "Lkotlinx/serialization/json/Json;", "customHttpUrlConnection", "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V", "getHost", "()Ljava/lang/String;", "getVersion", "getFactory", "()Lcom/superwall/sdk/dependencies/ApiFactory;", "getCustomHttpUrlConnection", "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "makeHeaders", "", "isForDebugging", "", "requestId", "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "config", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/config/Config;", "Lcom/superwall/sdk/network/NetworkError;", "isRetryingCallback", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "assignments", "Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmAssignments", "confirmableAssignments", "Lcom/superwall/sdk/models/assignment/AssignmentPostback;", "(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "paywalls", "Lcom/superwall/sdk/models/paywall/Paywalls;", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", NotificationsService.IDENTIFIER_KEY, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BaseHostService extends NetworkService {
    private final CustomHttpUrlConnection customHttpUrlConnection;
    private final ApiFactory factory;
    private final String host;
    private final Json json;
    private final String version;

    @Override // com.superwall.sdk.network.NetworkService
    public String getHost() {
        return this.host;
    }

    @Override // com.superwall.sdk.network.NetworkService
    public String getVersion() {
        return this.version;
    }

    public final ApiFactory getFactory() {
        return this.factory;
    }

    @Override // com.superwall.sdk.network.NetworkService
    public CustomHttpUrlConnection getCustomHttpUrlConnection() {
        return this.customHttpUrlConnection;
    }

    public BaseHostService(String host, String version, ApiFactory factory, Json json, CustomHttpUrlConnection customHttpUrlConnection) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(customHttpUrlConnection, "customHttpUrlConnection");
        this.host = host;
        this.version = version;
        this.factory = factory;
        this.json = json;
        this.customHttpUrlConnection = customHttpUrlConnection;
    }

    @Override // com.superwall.sdk.network.NetworkService
    public Object makeHeaders(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
        return this.factory.makeHeaders(z, str, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object config$default(BaseHostService baseHostService, String str, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return baseHostService.config(str, function1, continuation);
    }

    public final Object config(String str, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Either<Config, NetworkError>> continuation) {
        BaseHostService baseHostService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), function1, new BaseHostService$config$$inlined$getrl3MWlM$default$1(baseHostService.getCustomHttpUrlConnection(), null, baseHostService, "static_config", CollectionsKt.listOf(new URLQueryItem("pk", this.factory.getStorage().getApiKey())), str, false, null), continuation);
    }

    public final Object confirmAssignments(AssignmentPostback assignmentPostback, Continuation<? super Either<ConfirmedAssignmentResponse, NetworkError>> continuation) {
        Json json = this.json;
        json.getSerializersModule();
        byte[] bytes = json.encodeToString(AssignmentPostback.INSTANCE.serializer(), assignmentPostback).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        BaseHostService baseHostService = this;
        return Task_RetryingKt.retrying(6, null, new BaseHostService$confirmAssignments$$inlined$post7Yrd8eY$default$1(baseHostService.getCustomHttpUrlConnection(), null, baseHostService, "confirm_assignments", bytes, UUID.randomUUID().toString(), false, null), continuation);
    }

    public static /* synthetic */ Object paywalls$default(BaseHostService baseHostService, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return baseHostService.paywalls(z, continuation);
    }

    public static /* synthetic */ Object paywall$default(BaseHostService baseHostService, String str, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return baseHostService.paywall(str, continuation);
    }

    public final Object paywall(String str, Continuation<? super Either<Paywall, NetworkError>> continuation) {
        List listMutableListOf = CollectionsKt.mutableListOf(new URLQueryItem("pk", this.factory.getStorage().getApiKey()));
        Config config = this.factory.getConfigManager().getConfig();
        if (config != null) {
            if (config.getLocales().contains(this.factory.getDeviceHelper().getLocale())) {
                listMutableListOf.add(new URLQueryItem(Constants.LOCALE, this.factory.getDeviceHelper().getLocale()));
            } else {
                String str2 = (String) StringsKt.split$default((CharSequence) this.factory.getDeviceHelper().getLocale(), new String[]{"_"}, false, 0, 6, (Object) null).get(0);
                if (config.getLocales().contains(str2)) {
                    listMutableListOf.add(new URLQueryItem(Constants.LOCALE, str2));
                }
            }
        }
        BaseHostService baseHostService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), null, new BaseHostService$paywall$$inlined$getrl3MWlM$default$1(baseHostService.getCustomHttpUrlConnection(), null, baseHostService, "paywall/" + str, listMutableListOf, UUID.randomUUID().toString(), true, null), continuation);
    }

    public final Object assignments(Continuation<? super Either<ConfirmedAssignmentResponse, NetworkError>> continuation) {
        BaseHostService baseHostService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), null, new BaseHostService$assignments$$inlined$getrl3MWlM$default$1(baseHostService.getCustomHttpUrlConnection(), null, baseHostService, "assignments", null, UUID.randomUUID().toString(), false, null), continuation);
    }

    public final Object paywalls(boolean z, Continuation<? super Either<Paywalls, NetworkError>> continuation) {
        BaseHostService baseHostService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), null, new BaseHostService$paywalls$$inlined$getrl3MWlM$default$1(baseHostService.getCustomHttpUrlConnection(), null, baseHostService, "paywalls", null, UUID.randomUUID().toString(), z, null), continuation);
    }
}
