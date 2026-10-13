package com.superwall.sdk.models.postback;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PostbackRequest.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 -2\u00020\u0001:\u0002-.B!\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\fJ\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J*\u0010\u001d\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0006HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001J%\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,R\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0014\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0010¨\u0006/"}, d2 = {"Lcom/superwall/sdk/models/postback/PostbackRequest;", "", "products", "", "Lcom/superwall/sdk/models/postback/PostbackProductIdentifier;", "delay", "", "<init>", "(Ljava/util/List;Ljava/lang/Integer;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProducts$annotations", "()V", "getProducts", "()Ljava/util/List;", "getDelay$annotations", "getDelay", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "postbackDelay", "", "getPostbackDelay", "()D", "productsToPostBack", "getProductsToPostBack", "component1", "component2", "copy", "(Ljava/util/List;Ljava/lang/Integer;)Lcom/superwall/sdk/models/postback/PostbackRequest;", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PostbackRequest {
    private final Integer delay;
    private final List<PostbackProductIdentifier> products;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(PostbackProductIdentifier$$serializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostbackRequest copy$default(PostbackRequest postbackRequest, List list, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            list = postbackRequest.products;
        }
        if ((i & 2) != 0) {
            num = postbackRequest.delay;
        }
        return postbackRequest.copy(list, num);
    }

    @SerialName("delay")
    public static /* synthetic */ void getDelay$annotations() {
    }

    @SerialName("products")
    public static /* synthetic */ void getProducts$annotations() {
    }

    public final List<PostbackProductIdentifier> component1() {
        return this.products;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getDelay() {
        return this.delay;
    }

    public final PostbackRequest copy(List<PostbackProductIdentifier> products, Integer delay) {
        Intrinsics.checkNotNullParameter(products, "products");
        return new PostbackRequest(products, delay);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PostbackRequest)) {
            return false;
        }
        PostbackRequest postbackRequest = (PostbackRequest) other;
        return Intrinsics.areEqual(this.products, postbackRequest.products) && Intrinsics.areEqual(this.delay, postbackRequest.delay);
    }

    public int hashCode() {
        int iHashCode = this.products.hashCode() * 31;
        Integer num = this.delay;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "PostbackRequest(products=" + this.products + ", delay=" + this.delay + ")";
    }

    public /* synthetic */ PostbackRequest(int i, List list, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PostbackRequest$$serializer.INSTANCE.getDescriptor());
        }
        this.products = list;
        if ((i & 2) == 0) {
            this.delay = null;
        } else {
            this.delay = num;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PostbackRequest self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.products);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.delay == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, IntSerializer.INSTANCE, self.delay);
    }

    public PostbackRequest(List<PostbackProductIdentifier> products, Integer num) {
        Intrinsics.checkNotNullParameter(products, "products");
        this.products = products;
        this.delay = num;
    }

    public /* synthetic */ PostbackRequest(List list, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : num);
    }

    public final List<PostbackProductIdentifier> getProducts() {
        return this.products;
    }

    public final Integer getDelay() {
        return this.delay;
    }

    public final double getPostbackDelay() {
        Integer num = this.delay;
        return num != null ? ((double) num.intValue()) / ((double) 1000) : Random.INSTANCE.nextDouble(2.0d, 10.0d);
    }

    public final List<PostbackProductIdentifier> getProductsToPostBack() {
        List<PostbackProductIdentifier> list = this.products;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((PostbackProductIdentifier) obj).getIsiOS()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX INFO: compiled from: PostbackRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/postback/PostbackRequest$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/postback/PostbackRequest;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PostbackRequest> serializer() {
            return PostbackRequest$$serializer.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final PostbackRequest stub() {
            return new PostbackRequest(CollectionsKt.listOf(new PostbackProductIdentifier("123", "ios")), (Integer) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }
    }
}
