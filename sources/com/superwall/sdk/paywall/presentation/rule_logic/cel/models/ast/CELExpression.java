package com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast;

import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.notifications.service.NotificationsService;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CELRelationOp.kt */
/* JADX INFO: loaded from: classes6.dex */
@Polymorphic
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\r\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004B\u001b\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0003\u0010\tJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u0082\u0001\f\u001e\u001f !\"#$%&'()¨\u0006*"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELNode;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Arithmetic", "Relation", "Ternary", "Or", "And", "Unary", "Member", "FunctionCall", "List", "Map", "Atom", "Ident", "Companion", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$And;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Arithmetic;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Or;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Relation;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ternary;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Unary;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
@SerialName("CELExpression")
public abstract class CELExpression implements CELNode, ToExprString {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELExpression$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CELExpression._init_$_anonymous_();
        }
    });

    public /* synthetic */ CELExpression(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(CELExpression self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) CELExpression.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<CELExpression> serializer() {
            return get$cachedSerializer();
        }
    }

    private CELExpression() {
    }

    public /* synthetic */ CELExpression(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("CELExpression", Reflection.getOrCreateKotlinClass(CELExpression.class), new KClass[]{Reflection.getOrCreateKotlinClass(And.class), Reflection.getOrCreateKotlinClass(Arithmetic.class), Reflection.getOrCreateKotlinClass(Atom.class), Reflection.getOrCreateKotlinClass(FunctionCall.class), Reflection.getOrCreateKotlinClass(Ident.class), Reflection.getOrCreateKotlinClass(List.class), Reflection.getOrCreateKotlinClass(Map.class), Reflection.getOrCreateKotlinClass(Member.class), Reflection.getOrCreateKotlinClass(Or.class), Reflection.getOrCreateKotlinClass(Relation.class), Reflection.getOrCreateKotlinClass(Ternary.class), Reflection.getOrCreateKotlinClass(Unary.class)}, new KSerializer[]{CELExpression$And$$serializer.INSTANCE, CELExpression$Arithmetic$$serializer.INSTANCE, CELExpression$Atom$$serializer.INSTANCE, CELExpression$FunctionCall$$serializer.INSTANCE, CELExpression$Ident$$serializer.INSTANCE, CELExpression$List$$serializer.INSTANCE, CELExpression$Map$$serializer.INSTANCE, CELExpression$Member$$serializer.INSTANCE, CELExpression$Or$$serializer.INSTANCE, CELExpression$Relation$$serializer.INSTANCE, CELExpression$Ternary$$serializer.INSTANCE, CELExpression$Unary$$serializer.INSTANCE}, new Annotation[0]);
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 .2\u00020\u0001:\u0002-.B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u001c\u0010\u0016\u001a\u00020\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\t\u0010\u001b\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0001HÆ\u0003J'\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\tHÖ\u0001J\t\u0010$\u001a\u00020\u001aHÖ\u0001J%\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0005\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010¨\u0006/"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Arithmetic;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "left", "op", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;", "right", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getLeft$annotations", "()V", "getLeft", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getOp$annotations", "getOp", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;", "getRight$annotations", "getRight", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Arithmetic")
    public static final /* data */ class Arithmetic extends CELExpression {
        private final CELExpression left;
        private final CELArithmeticOp op;
        private final CELExpression right;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELArithmeticOp.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0])};

        public static /* synthetic */ Arithmetic copy$default(Arithmetic arithmetic, CELExpression cELExpression, CELArithmeticOp cELArithmeticOp, CELExpression cELExpression2, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = arithmetic.left;
            }
            if ((i & 2) != 0) {
                cELArithmeticOp = arithmetic.op;
            }
            if ((i & 4) != 0) {
                cELExpression2 = arithmetic.right;
            }
            return arithmetic.copy(cELExpression, cELArithmeticOp, cELExpression2);
        }

        @SerialName("left")
        public static /* synthetic */ void getLeft$annotations() {
        }

        @SerialName("op")
        public static /* synthetic */ void getOp$annotations() {
        }

        @SerialName("right")
        public static /* synthetic */ void getRight$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getLeft() {
            return this.left;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELArithmeticOp getOp() {
            return this.op;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final CELExpression getRight() {
            return this.right;
        }

        public final Arithmetic copy(CELExpression left, CELArithmeticOp op, CELExpression right) {
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(op, "op");
            Intrinsics.checkNotNullParameter(right, "right");
            return new Arithmetic(left, op, right);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Arithmetic)) {
                return false;
            }
            Arithmetic arithmetic = (Arithmetic) other;
            return Intrinsics.areEqual(this.left, arithmetic.left) && Intrinsics.areEqual(this.op, arithmetic.op) && Intrinsics.areEqual(this.right, arithmetic.right);
        }

        public int hashCode() {
            return (((this.left.hashCode() * 31) + this.op.hashCode()) * 31) + this.right.hashCode();
        }

        public String toString() {
            return "Arithmetic(left=" + this.left + ", op=" + this.op + ", right=" + this.right + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Arithmetic$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Arithmetic;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Arithmetic> serializer() {
                return CELExpression$Arithmetic$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Arithmetic(int i, CELExpression cELExpression, CELArithmeticOp cELArithmeticOp, CELExpression cELExpression2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, CELExpression$Arithmetic$$serializer.INSTANCE.getDescriptor());
            }
            this.left = cELExpression;
            this.op = cELArithmeticOp;
            this.right = cELExpression2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Arithmetic self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.left);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.op);
            output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.right);
        }

        public final CELExpression getLeft() {
            return this.left;
        }

        public final CELArithmeticOp getOp() {
            return this.op;
        }

        public final CELExpression getRight() {
            return this.right;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Arithmetic(CELExpression left, CELArithmeticOp op, CELExpression right) {
            super(null);
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(op, "op");
            Intrinsics.checkNotNullParameter(right, "right");
            this.left = left;
            this.op = op;
            this.right = right;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new Arithmetic(this.left.mapAll(transform), this.op, this.right.mapAll(transform)));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "(" + this.left.toExprString() + " " + this.op.toExprString() + " " + this.right.toExprString() + ")";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 .2\u00020\u0001:\u0002-.B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u001c\u0010\u0016\u001a\u00020\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\t\u0010\u001b\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0001HÆ\u0003J'\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\tHÖ\u0001J\t\u0010$\u001a\u00020\u001aHÖ\u0001J%\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0005\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010¨\u0006/"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Relation;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "left", "op", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "right", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getLeft$annotations", "()V", "getLeft", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getOp$annotations", "getOp", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "getRight$annotations", "getRight", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Relation")
    public static final /* data */ class Relation extends CELExpression {
        private final CELExpression left;
        private final CELRelationOp op;
        private final CELExpression right;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELRelationOp.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0])};

        public static /* synthetic */ Relation copy$default(Relation relation, CELExpression cELExpression, CELRelationOp cELRelationOp, CELExpression cELExpression2, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = relation.left;
            }
            if ((i & 2) != 0) {
                cELRelationOp = relation.op;
            }
            if ((i & 4) != 0) {
                cELExpression2 = relation.right;
            }
            return relation.copy(cELExpression, cELRelationOp, cELExpression2);
        }

        @SerialName("left")
        public static /* synthetic */ void getLeft$annotations() {
        }

        @SerialName("op")
        public static /* synthetic */ void getOp$annotations() {
        }

        @SerialName("right")
        public static /* synthetic */ void getRight$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getLeft() {
            return this.left;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELRelationOp getOp() {
            return this.op;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final CELExpression getRight() {
            return this.right;
        }

        public final Relation copy(CELExpression left, CELRelationOp op, CELExpression right) {
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(op, "op");
            Intrinsics.checkNotNullParameter(right, "right");
            return new Relation(left, op, right);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Relation)) {
                return false;
            }
            Relation relation = (Relation) other;
            return Intrinsics.areEqual(this.left, relation.left) && Intrinsics.areEqual(this.op, relation.op) && Intrinsics.areEqual(this.right, relation.right);
        }

        public int hashCode() {
            return (((this.left.hashCode() * 31) + this.op.hashCode()) * 31) + this.right.hashCode();
        }

        public String toString() {
            return "Relation(left=" + this.left + ", op=" + this.op + ", right=" + this.right + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Relation$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Relation;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Relation> serializer() {
                return CELExpression$Relation$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Relation(int i, CELExpression cELExpression, CELRelationOp cELRelationOp, CELExpression cELExpression2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, CELExpression$Relation$$serializer.INSTANCE.getDescriptor());
            }
            this.left = cELExpression;
            this.op = cELRelationOp;
            this.right = cELExpression2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Relation self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.left);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.op);
            output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.right);
        }

        public final CELExpression getLeft() {
            return this.left;
        }

        public final CELRelationOp getOp() {
            return this.op;
        }

        public final CELExpression getRight() {
            return this.right;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Relation(CELExpression left, CELRelationOp op, CELExpression right) {
            super(null);
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(op, "op");
            Intrinsics.checkNotNullParameter(right, "right");
            this.left = left;
            this.op = op;
            this.right = right;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new Relation(this.left.mapAll(transform), this.op, this.right.mapAll(transform)));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "(" + this.left.toExprString() + " " + this.op.toExprString() + " " + this.right.toExprString() + ")";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0002+,B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006B9\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\u001c\u0010\u0014\u001a\u00020\u00012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\t\u0010\u0019\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0001HÆ\u0003J'\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\bHÖ\u0001J\t\u0010\"\u001a\u00020\u0018HÖ\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0001¢\u0006\u0002\b*R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0003\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f¨\u0006-"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ternary;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "condition", "trueExpr", "falseExpr", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCondition$annotations", "()V", "getCondition", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getTrueExpr$annotations", "getTrueExpr", "getFalseExpr$annotations", "getFalseExpr", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Ternary")
    public static final /* data */ class Ternary extends CELExpression {
        private final CELExpression condition;
        private final CELExpression falseExpr;
        private final CELExpression trueExpr;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0])};

        public static /* synthetic */ Ternary copy$default(Ternary ternary, CELExpression cELExpression, CELExpression cELExpression2, CELExpression cELExpression3, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = ternary.condition;
            }
            if ((i & 2) != 0) {
                cELExpression2 = ternary.trueExpr;
            }
            if ((i & 4) != 0) {
                cELExpression3 = ternary.falseExpr;
            }
            return ternary.copy(cELExpression, cELExpression2, cELExpression3);
        }

        @SerialName("condition")
        public static /* synthetic */ void getCondition$annotations() {
        }

        @SerialName("falseExpr")
        public static /* synthetic */ void getFalseExpr$annotations() {
        }

        @SerialName("trueExpr")
        public static /* synthetic */ void getTrueExpr$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getCondition() {
            return this.condition;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELExpression getTrueExpr() {
            return this.trueExpr;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final CELExpression getFalseExpr() {
            return this.falseExpr;
        }

        public final Ternary copy(CELExpression condition, CELExpression trueExpr, CELExpression falseExpr) {
            Intrinsics.checkNotNullParameter(condition, "condition");
            Intrinsics.checkNotNullParameter(trueExpr, "trueExpr");
            Intrinsics.checkNotNullParameter(falseExpr, "falseExpr");
            return new Ternary(condition, trueExpr, falseExpr);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Ternary)) {
                return false;
            }
            Ternary ternary = (Ternary) other;
            return Intrinsics.areEqual(this.condition, ternary.condition) && Intrinsics.areEqual(this.trueExpr, ternary.trueExpr) && Intrinsics.areEqual(this.falseExpr, ternary.falseExpr);
        }

        public int hashCode() {
            return (((this.condition.hashCode() * 31) + this.trueExpr.hashCode()) * 31) + this.falseExpr.hashCode();
        }

        public String toString() {
            return "Ternary(condition=" + this.condition + ", trueExpr=" + this.trueExpr + ", falseExpr=" + this.falseExpr + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ternary$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ternary;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Ternary> serializer() {
                return CELExpression$Ternary$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Ternary(int i, CELExpression cELExpression, CELExpression cELExpression2, CELExpression cELExpression3, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, CELExpression$Ternary$$serializer.INSTANCE.getDescriptor());
            }
            this.condition = cELExpression;
            this.trueExpr = cELExpression2;
            this.falseExpr = cELExpression3;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Ternary self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.condition);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.trueExpr);
            output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.falseExpr);
        }

        public final CELExpression getCondition() {
            return this.condition;
        }

        public final CELExpression getTrueExpr() {
            return this.trueExpr;
        }

        public final CELExpression getFalseExpr() {
            return this.falseExpr;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ternary(CELExpression condition, CELExpression trueExpr, CELExpression falseExpr) {
            super(null);
            Intrinsics.checkNotNullParameter(condition, "condition");
            Intrinsics.checkNotNullParameter(trueExpr, "trueExpr");
            Intrinsics.checkNotNullParameter(falseExpr, "falseExpr");
            this.condition = condition;
            this.trueExpr = trueExpr;
            this.falseExpr = falseExpr;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new Ternary(this.condition.mapAll(transform), this.trueExpr.mapAll(transform), this.falseExpr.mapAll(transform)));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "(" + this.condition.toExprString() + " ? " + this.trueExpr.toExprString() + " : " + this.falseExpr.toExprString() + ")";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 (2\u00020\u0001:\u0002'(B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\u001c\u0010\u0011\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0001HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0001HÆ\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0015HÖ\u0001J%\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b&R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0003\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000e¨\u0006)"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Or;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "left", "right", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getLeft$annotations", "()V", "getLeft", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getRight$annotations", "getRight", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Or")
    public static final /* data */ class Or extends CELExpression {
        private final CELExpression left;
        private final CELExpression right;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0])};

        public static /* synthetic */ Or copy$default(Or or, CELExpression cELExpression, CELExpression cELExpression2, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = or.left;
            }
            if ((i & 2) != 0) {
                cELExpression2 = or.right;
            }
            return or.copy(cELExpression, cELExpression2);
        }

        @SerialName("left")
        public static /* synthetic */ void getLeft$annotations() {
        }

        @SerialName("right")
        public static /* synthetic */ void getRight$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getLeft() {
            return this.left;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELExpression getRight() {
            return this.right;
        }

        public final Or copy(CELExpression left, CELExpression right) {
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(right, "right");
            return new Or(left, right);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Or)) {
                return false;
            }
            Or or = (Or) other;
            return Intrinsics.areEqual(this.left, or.left) && Intrinsics.areEqual(this.right, or.right);
        }

        public int hashCode() {
            return (this.left.hashCode() * 31) + this.right.hashCode();
        }

        public String toString() {
            return "Or(left=" + this.left + ", right=" + this.right + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Or$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Or;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Or> serializer() {
                return CELExpression$Or$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Or(int i, CELExpression cELExpression, CELExpression cELExpression2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, CELExpression$Or$$serializer.INSTANCE.getDescriptor());
            }
            this.left = cELExpression;
            this.right = cELExpression2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Or self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.left);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.right);
        }

        public final CELExpression getLeft() {
            return this.left;
        }

        public final CELExpression getRight() {
            return this.right;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Or(CELExpression left, CELExpression right) {
            super(null);
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(right, "right");
            this.left = left;
            this.right = right;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new Or(this.left.mapAll(transform), this.right.mapAll(transform)));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "(" + this.left.toExprString() + " || " + this.right.toExprString() + ")";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 (2\u00020\u0001:\u0002'(B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\u001c\u0010\u0011\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0001HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0001HÆ\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0015HÖ\u0001J%\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b&R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0003\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000e¨\u0006)"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$And;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "left", "right", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getLeft$annotations", "()V", "getLeft", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getRight$annotations", "getRight", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("And")
    public static final /* data */ class And extends CELExpression {
        private final CELExpression left;
        private final CELExpression right;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0])};

        public static /* synthetic */ And copy$default(And and, CELExpression cELExpression, CELExpression cELExpression2, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = and.left;
            }
            if ((i & 2) != 0) {
                cELExpression2 = and.right;
            }
            return and.copy(cELExpression, cELExpression2);
        }

        @SerialName("left")
        public static /* synthetic */ void getLeft$annotations() {
        }

        @SerialName("right")
        public static /* synthetic */ void getRight$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getLeft() {
            return this.left;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELExpression getRight() {
            return this.right;
        }

        public final And copy(CELExpression left, CELExpression right) {
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(right, "right");
            return new And(left, right);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof And)) {
                return false;
            }
            And and = (And) other;
            return Intrinsics.areEqual(this.left, and.left) && Intrinsics.areEqual(this.right, and.right);
        }

        public int hashCode() {
            return (this.left.hashCode() * 31) + this.right.hashCode();
        }

        public String toString() {
            return "And(left=" + this.left + ", right=" + this.right + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$And$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$And;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<And> serializer() {
                return CELExpression$And$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ And(int i, CELExpression cELExpression, CELExpression cELExpression2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, CELExpression$And$$serializer.INSTANCE.getDescriptor());
            }
            this.left = cELExpression;
            this.right = cELExpression2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(And self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.left);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.right);
        }

        public final CELExpression getLeft() {
            return this.left;
        }

        public final CELExpression getRight() {
            return this.right;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public And(CELExpression left, CELExpression right) {
            super(null);
            Intrinsics.checkNotNullParameter(left, "left");
            Intrinsics.checkNotNullParameter(right, "right");
            this.left = left;
            this.right = right;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new And(this.left.mapAll(transform), this.right.mapAll(transform)));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "(" + this.left.toExprString() + " && " + this.right.toExprString() + ")";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0002)*B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\u001c\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0001HÆ\u0003J\u001d\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\bHÖ\u0001J\t\u0010 \u001a\u00020\u0017HÖ\u0001J%\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0001¢\u0006\u0002\b(R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006+"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Unary;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "op", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "expr", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getOp$annotations", "()V", "getOp", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "getExpr$annotations", "getExpr", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Unary")
    public static final /* data */ class Unary extends CELExpression {
        private final CELExpression expr;
        private final CELUnaryOp op;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELUnaryOp.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0])};

        public static /* synthetic */ Unary copy$default(Unary unary, CELUnaryOp cELUnaryOp, CELExpression cELExpression, int i, Object obj) {
            if ((i & 1) != 0) {
                cELUnaryOp = unary.op;
            }
            if ((i & 2) != 0) {
                cELExpression = unary.expr;
            }
            return unary.copy(cELUnaryOp, cELExpression);
        }

        @SerialName("expr")
        public static /* synthetic */ void getExpr$annotations() {
        }

        @SerialName("op")
        public static /* synthetic */ void getOp$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELUnaryOp getOp() {
            return this.op;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELExpression getExpr() {
            return this.expr;
        }

        public final Unary copy(CELUnaryOp op, CELExpression expr) {
            Intrinsics.checkNotNullParameter(op, "op");
            Intrinsics.checkNotNullParameter(expr, "expr");
            return new Unary(op, expr);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Unary)) {
                return false;
            }
            Unary unary = (Unary) other;
            return Intrinsics.areEqual(this.op, unary.op) && Intrinsics.areEqual(this.expr, unary.expr);
        }

        public int hashCode() {
            return (this.op.hashCode() * 31) + this.expr.hashCode();
        }

        public String toString() {
            return "Unary(op=" + this.op + ", expr=" + this.expr + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Unary$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Unary;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Unary> serializer() {
                return CELExpression$Unary$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Unary(int i, CELUnaryOp cELUnaryOp, CELExpression cELExpression, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, CELExpression$Unary$$serializer.INSTANCE.getDescriptor());
            }
            this.op = cELUnaryOp;
            this.expr = cELExpression;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Unary self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.op);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.expr);
        }

        public final CELUnaryOp getOp() {
            return this.op;
        }

        public final CELExpression getExpr() {
            return this.expr;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unary(CELUnaryOp op, CELExpression expr) {
            super(null);
            Intrinsics.checkNotNullParameter(op, "op");
            Intrinsics.checkNotNullParameter(expr, "expr");
            this.op = op;
            this.expr = expr;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new Unary(this.op, this.expr.mapAll(transform)));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return this.op.toExprString() + "(" + this.expr.toExprString() + ")";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0002)*B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\u001c\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u0018\u001a\u00020\u0001HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\bHÖ\u0001J\t\u0010 \u001a\u00020\u0017HÖ\u0001J%\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0001¢\u0006\u0002\b(R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006+"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "expr", "member", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getExpr$annotations", "()V", "getExpr", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getMember$annotations", "getMember", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Member")
    public static final /* data */ class Member extends CELExpression {
        private final CELExpression expr;
        private final CELMember member;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELMember.class), new Annotation[0])};

        public static /* synthetic */ Member copy$default(Member member, CELExpression cELExpression, CELMember cELMember, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = member.expr;
            }
            if ((i & 2) != 0) {
                cELMember = member.member;
            }
            return member.copy(cELExpression, cELMember);
        }

        @SerialName("expr")
        public static /* synthetic */ void getExpr$annotations() {
        }

        @SerialName("member")
        public static /* synthetic */ void getMember$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getExpr() {
            return this.expr;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELMember getMember() {
            return this.member;
        }

        public final Member copy(CELExpression expr, CELMember member) {
            Intrinsics.checkNotNullParameter(expr, "expr");
            Intrinsics.checkNotNullParameter(member, "member");
            return new Member(expr, member);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Member)) {
                return false;
            }
            Member member = (Member) other;
            return Intrinsics.areEqual(this.expr, member.expr) && Intrinsics.areEqual(this.member, member.member);
        }

        public int hashCode() {
            return (this.expr.hashCode() * 31) + this.member.hashCode();
        }

        public String toString() {
            return "Member(expr=" + this.expr + ", member=" + this.member + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Member> serializer() {
                return CELExpression$Member$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Member(int i, CELExpression cELExpression, CELMember cELMember, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, CELExpression$Member$$serializer.INSTANCE.getDescriptor());
            }
            this.expr = cELExpression;
            this.member = cELMember;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Member self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.expr);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.member);
        }

        public final CELExpression getExpr() {
            return this.expr;
        }

        public final CELMember getMember() {
            return this.member;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Member(CELExpression expr, CELMember member) {
            super(null);
            Intrinsics.checkNotNullParameter(expr, "expr");
            Intrinsics.checkNotNullParameter(member, "member");
            this.expr = expr;
            this.member = member;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(new Member(this.expr.mapAll(transform), this.member));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return this.expr.toExprString() + this.member.toExprString();
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 .2\u00020\u0001:\u0002-.B'\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007B?\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u001c\u0010\u0016\u001a\u00020\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\t\u0010\u001b\u001a\u00020\u0001HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005HÆ\u0003J/\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\tHÖ\u0001J\t\u0010$\u001a\u00020\u001aHÖ\u0001J%\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,R\u001c\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0015¨\u0006/"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "function", NotificationsService.RECEIVER_KEY, "arguments", "", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getFunction$annotations", "()V", "getFunction", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "getReceiver$annotations", "getReceiver", "getArguments$annotations", "getArguments", "()Ljava/util/List;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("FunctionCall")
    public static final /* data */ class FunctionCall extends CELExpression {
        private final java.util.List<CELExpression> arguments;
        private final CELExpression function;
        private final CELExpression receiver;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CELExpression.class), new Annotation[0]), new ArrayListSerializer(CELExpression.INSTANCE.serializer())};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FunctionCall copy$default(FunctionCall functionCall, CELExpression cELExpression, CELExpression cELExpression2, java.util.List list, int i, Object obj) {
            if ((i & 1) != 0) {
                cELExpression = functionCall.function;
            }
            if ((i & 2) != 0) {
                cELExpression2 = functionCall.receiver;
            }
            if ((i & 4) != 0) {
                list = functionCall.arguments;
            }
            return functionCall.copy(cELExpression, cELExpression2, list);
        }

        @SerialName("arguments")
        public static /* synthetic */ void getArguments$annotations() {
        }

        @SerialName("function")
        public static /* synthetic */ void getFunction$annotations() {
        }

        @SerialName(NotificationsService.RECEIVER_KEY)
        public static /* synthetic */ void getReceiver$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELExpression getFunction() {
            return this.function;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CELExpression getReceiver() {
            return this.receiver;
        }

        public final java.util.List<CELExpression> component3() {
            return this.arguments;
        }

        public final FunctionCall copy(CELExpression function, CELExpression receiver, java.util.List<? extends CELExpression> arguments) {
            Intrinsics.checkNotNullParameter(function, "function");
            Intrinsics.checkNotNullParameter(arguments, "arguments");
            return new FunctionCall(function, receiver, arguments);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FunctionCall)) {
                return false;
            }
            FunctionCall functionCall = (FunctionCall) other;
            return Intrinsics.areEqual(this.function, functionCall.function) && Intrinsics.areEqual(this.receiver, functionCall.receiver) && Intrinsics.areEqual(this.arguments, functionCall.arguments);
        }

        public int hashCode() {
            int iHashCode = this.function.hashCode() * 31;
            CELExpression cELExpression = this.receiver;
            return ((iHashCode + (cELExpression == null ? 0 : cELExpression.hashCode())) * 31) + this.arguments.hashCode();
        }

        public String toString() {
            return "FunctionCall(function=" + this.function + ", receiver=" + this.receiver + ", arguments=" + this.arguments + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<FunctionCall> serializer() {
                return CELExpression$FunctionCall$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ FunctionCall(int i, CELExpression cELExpression, CELExpression cELExpression2, java.util.List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, CELExpression$FunctionCall$$serializer.INSTANCE.getDescriptor());
            }
            this.function = cELExpression;
            this.receiver = cELExpression2;
            this.arguments = list;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(FunctionCall self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.function);
            output.encodeNullableSerializableElement(serialDesc, 1, kSerializerArr[1], self.receiver);
            output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.arguments);
        }

        public final CELExpression getFunction() {
            return this.function;
        }

        public final CELExpression getReceiver() {
            return this.receiver;
        }

        public final java.util.List<CELExpression> getArguments() {
            return this.arguments;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public FunctionCall(CELExpression function, CELExpression cELExpression, java.util.List<? extends CELExpression> arguments) {
            super(null);
            Intrinsics.checkNotNullParameter(function, "function");
            Intrinsics.checkNotNullParameter(arguments, "arguments");
            this.function = function;
            this.receiver = cELExpression;
            this.arguments = arguments;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            CELExpression cELExpressionMapAll = this.function.mapAll(transform);
            CELExpression cELExpression = this.receiver;
            CELExpression cELExpressionMapAll2 = cELExpression != null ? cELExpression.mapAll(transform) : null;
            java.util.List<CELExpression> list = this.arguments;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((CELExpression) it.next()).mapAll(transform));
            }
            return transform.invoke(new FunctionCall(cELExpressionMapAll, cELExpressionMapAll2, arrayList));
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            String str;
            String exprString;
            CELExpression cELExpression = this.receiver;
            if (cELExpression == null || (exprString = cELExpression.toExprString()) == null || (str = exprString + ".") == null) {
                str = "";
            }
            return str + this.function.toExprString() + "(" + CollectionsKt.joinToString$default(this.arguments, ", ", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELExpression$FunctionCall$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CELExpression.FunctionCall.toExprString$lambda$1((CELExpression) obj);
                }
            }, 30, null) + ")";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CharSequence toExprString$lambda$1(CELExpression it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.toExprString();
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005B+\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0003J\u0019\u0010\u0015\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0013HÖ\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001¢\u0006\u0002\b#R\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006&"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "elements", "", "<init>", "(Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getElements$annotations", "()V", "getElements", "()Ljava/util/List;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("List")
    public static final /* data */ class List extends CELExpression {
        private final java.util.List<CELExpression> elements;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(CELExpression.INSTANCE.serializer())};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ List copy$default(List list, java.util.List list2, int i, Object obj) {
            if ((i & 1) != 0) {
                list2 = list.elements;
            }
            return list.copy(list2);
        }

        @SerialName("elements")
        public static /* synthetic */ void getElements$annotations() {
        }

        public final java.util.List<CELExpression> component1() {
            return this.elements;
        }

        public final List copy(java.util.List<? extends CELExpression> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return new List(elements);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof List) && Intrinsics.areEqual(this.elements, ((List) other).elements);
        }

        public int hashCode() {
            return this.elements.hashCode();
        }

        public String toString() {
            return "List(elements=" + this.elements + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<List> serializer() {
                return CELExpression$List$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ List(int i, java.util.List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CELExpression$List$$serializer.INSTANCE.getDescriptor());
            }
            this.elements = list;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(List self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.elements);
        }

        public final java.util.List<CELExpression> getElements() {
            return this.elements;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public List(java.util.List<? extends CELExpression> elements) {
            super(null);
            Intrinsics.checkNotNullParameter(elements, "elements");
            this.elements = elements;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            java.util.List<CELExpression> list = this.elements;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((CELExpression) it.next()).mapAll(transform));
            }
            return transform.invoke(new List(arrayList));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CharSequence toExprString$lambda$1(CELExpression it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.toExprString();
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "[" + CollectionsKt.joinToString$default(this.elements, ", ", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELExpression$List$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CELExpression.List.toExprString$lambda$1((CELExpression) obj);
                }
            }, 30, null) + "]";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B!\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006B7\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\u001c\u0010\u0010\u001a\u00020\u00012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u001b\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00040\u0003HÆ\u0003J%\u0010\u0016\u001a\u00020\u00002\u001a\b\u0002\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00040\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0014HÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R.\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00040\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006'"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "entries", "", "Lkotlin/Pair;", "<init>", "(Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEntries$annotations", "()V", "getEntries", "()Ljava/util/List;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Map")
    public static final /* data */ class Map extends CELExpression {
        private final java.util.List<Pair<CELExpression, CELExpression>> entries;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(new PairSerializer(CELExpression.INSTANCE.serializer(), CELExpression.INSTANCE.serializer()))};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Map copy$default(Map map, java.util.List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = map.entries;
            }
            return map.copy(list);
        }

        @SerialName("entries")
        public static /* synthetic */ void getEntries$annotations() {
        }

        public final java.util.List<Pair<CELExpression, CELExpression>> component1() {
            return this.entries;
        }

        public final Map copy(java.util.List<? extends Pair<? extends CELExpression, ? extends CELExpression>> entries) {
            Intrinsics.checkNotNullParameter(entries, "entries");
            return new Map(entries);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Map) && Intrinsics.areEqual(this.entries, ((Map) other).entries);
        }

        public int hashCode() {
            return this.entries.hashCode();
        }

        public String toString() {
            return "Map(entries=" + this.entries + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Map> serializer() {
                return CELExpression$Map$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Map(int i, java.util.List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CELExpression$Map$$serializer.INSTANCE.getDescriptor());
            }
            this.entries = list;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Map self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.entries);
        }

        public final java.util.List<Pair<CELExpression, CELExpression>> getEntries() {
            return this.entries;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Map(java.util.List<? extends Pair<? extends CELExpression, ? extends CELExpression>> entries) {
            super(null);
            Intrinsics.checkNotNullParameter(entries, "entries");
            this.entries = entries;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            java.util.List<Pair<CELExpression, CELExpression>> list = this.entries;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                arrayList.add(TuplesKt.to(((CELExpression) pair.component1()).mapAll(transform), ((CELExpression) pair.component2()).mapAll(transform)));
            }
            return transform.invoke(new Map(arrayList));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CharSequence toExprString$lambda$1(Pair pair) {
            Intrinsics.checkNotNullParameter(pair, "<destruct>");
            CELExpression cELExpression = (CELExpression) pair.component1();
            CELExpression cELExpression2 = (CELExpression) pair.component2();
            return cELExpression.toExprString() + ": " + cELExpression2.toExprString();
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "{" + CollectionsKt.joinToString$default(this.entries, ", ", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELExpression$Map$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CELExpression.Map.toExprString$lambda$1((Pair) obj);
                }
            }, 30, null) + "}";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0002$%B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0013HÖ\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001¢\u0006\u0002\b#R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006&"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", RNConstants.ARG_VALUE, "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getValue$annotations", "()V", "getValue", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Atom")
    public static final /* data */ class Atom extends CELExpression {
        private final CELAtom value;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {CELAtom.INSTANCE.serializer()};

        public static /* synthetic */ Atom copy$default(Atom atom, CELAtom cELAtom, int i, Object obj) {
            if ((i & 1) != 0) {
                cELAtom = atom.value;
            }
            return atom.copy(cELAtom);
        }

        @SerialName(RNConstants.ARG_VALUE)
        public static /* synthetic */ void getValue$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CELAtom getValue() {
            return this.value;
        }

        public final Atom copy(CELAtom value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new Atom(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Atom) && Intrinsics.areEqual(this.value, ((Atom) other).value);
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return "Atom(value=" + this.value + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Atom> serializer() {
                return CELExpression$Atom$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Atom(int i, CELAtom cELAtom, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CELExpression$Atom$$serializer.INSTANCE.getDescriptor());
            }
            this.value = cELAtom;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Atom self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.value);
        }

        public final CELAtom getValue() {
            return this.value;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Atom(CELAtom value) {
            super(null);
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(this);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return this.value.toExprString();
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002#$B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001¢\u0006\u0002\b\"R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006%"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "name", "", "<init>", "(Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getName$annotations", "()V", "getName", "()Ljava/lang/String;", "mapAll", ViewProps.TRANSFORM, "Lkotlin/Function1;", "toExprString", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Ident")
    public static final /* data */ class Ident extends CELExpression {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String name;

        public static /* synthetic */ Ident copy$default(Ident ident, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ident.name;
            }
            return ident.copy(str);
        }

        @SerialName("name")
        public static /* synthetic */ void getName$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        public final Ident copy(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new Ident(name);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Ident) && Intrinsics.areEqual(this.name, ((Ident) other).name);
        }

        public int hashCode() {
            return this.name.hashCode();
        }

        public String toString() {
            return "Ident(name=" + this.name + ")";
        }

        /* JADX INFO: compiled from: CELRelationOp.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Ident> serializer() {
                return CELExpression$Ident$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Ident(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CELExpression$Ident$$serializer.INSTANCE.getDescriptor());
            }
            this.name = str;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Ident self, CompositeEncoder output, SerialDescriptor serialDesc) {
            CELExpression.write$Self(self, output, serialDesc);
            output.encodeStringElement(serialDesc, 0, self.name);
        }

        public final String getName() {
            return this.name;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ident(String name) {
            super(null);
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELNode
        public CELExpression mapAll(Function1<? super CELExpression, ? extends CELExpression> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return transform.invoke(this);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return this.name;
        }
    }
}
