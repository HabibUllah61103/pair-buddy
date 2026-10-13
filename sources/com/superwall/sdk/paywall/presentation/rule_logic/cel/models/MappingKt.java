package com.superwall.sdk.paywall.presentation.rule_logic.cel.models;

import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELAtom;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELExpression;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: mapping.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0000¨\u0006\u0004"}, d2 = {"toPassableValue", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;", "toCELExpression", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class MappingKt {
    /* JADX WARN: Code duplicated, block: B:59:0x0120  */
    public static final PassableValue toPassableValue(CELExpression cELExpression) {
        String string;
        CELAtom value;
        Intrinsics.checkNotNullParameter(cELExpression, "<this>");
        if (cELExpression instanceof CELExpression.Atom) {
            CELAtom value2 = ((CELExpression.Atom) cELExpression).getValue();
            if (value2 instanceof CELAtom.Int) {
                return new PassableValue.IntValue((int) ((CELAtom.Int) value2).getValue());
            }
            if (value2 instanceof CELAtom.UInt) {
                return new PassableValue.UIntValue(((CELAtom.UInt) value2).m10719getValuesVKNKU(), null);
            }
            if (value2 instanceof CELAtom.Float) {
                return new PassableValue.FloatValue(((CELAtom.Float) value2).getValue());
            }
            if (value2 instanceof CELAtom.String) {
                return new PassableValue.StringValue(((CELAtom.String) value2).getValue());
            }
            if (value2 instanceof CELAtom.Bytes) {
                return new PassableValue.BytesValue(((CELAtom.Bytes) value2).getValue());
            }
            if (value2 instanceof CELAtom.Bool) {
                return new PassableValue.BoolValue(((CELAtom.Bool) value2).getValue());
            }
            if (Intrinsics.areEqual(value2, CELAtom.Null.INSTANCE)) {
                return PassableValue.NullValue.INSTANCE;
            }
            throw new NoWhenBranchMatchedException();
        }
        if (!(cELExpression instanceof CELExpression.List)) {
            if (cELExpression instanceof CELExpression.Map) {
                List<Pair<CELExpression, CELExpression>> entries = ((CELExpression.Map) cELExpression).getEntries();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(entries, 10));
                Iterator<T> it = entries.iterator();
                while (it.hasNext()) {
                    Pair pair = (Pair) it.next();
                    CELExpression cELExpression2 = (CELExpression) pair.component1();
                    CELExpression cELExpression3 = (CELExpression) pair.component2();
                    CELExpression.Atom atom = cELExpression2 instanceof CELExpression.Atom ? (CELExpression.Atom) cELExpression2 : null;
                    if (atom != null && (value = atom.getValue()) != null) {
                        string = value instanceof CELAtom.String ? ((CELAtom.String) value).getValue() : value.toString();
                        if (string == null) {
                            string = cELExpression2.toString();
                        }
                    } else {
                        string = cELExpression2.toString();
                    }
                    arrayList.add(TuplesKt.to(string, toPassableValue(cELExpression3)));
                }
                return new PassableValue.MapValue(MapsKt.toMap(arrayList));
            }
            throw new NotImplementedError("An operation is not implemented: Not yet implemented");
        }
        List<CELExpression> elements = ((CELExpression.List) cELExpression).getElements();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(elements, 10));
        Iterator<T> it2 = elements.iterator();
        while (it2.hasNext()) {
            arrayList2.add(toPassableValue((CELExpression) it2.next()));
        }
        return new PassableValue.ListValue(arrayList2);
    }

    public static final CELExpression toCELExpression(PassableValue passableValue) {
        Intrinsics.checkNotNullParameter(passableValue, "<this>");
        if (passableValue instanceof PassableValue.IntValue) {
            return new CELExpression.Atom(new CELAtom.Int(((PassableValue.IntValue) passableValue).getValue()));
        }
        if (passableValue instanceof PassableValue.UIntValue) {
            return new CELExpression.Atom(new CELAtom.UInt(((PassableValue.UIntValue) passableValue).m10711getValuesVKNKU(), null));
        }
        if (passableValue instanceof PassableValue.FloatValue) {
            return new CELExpression.Atom(new CELAtom.Float(((PassableValue.FloatValue) passableValue).getValue()));
        }
        if (passableValue instanceof PassableValue.StringValue) {
            return new CELExpression.Atom(new CELAtom.String(((PassableValue.StringValue) passableValue).getValue()));
        }
        if (passableValue instanceof PassableValue.BytesValue) {
            return new CELExpression.Atom(new CELAtom.Bytes(((PassableValue.BytesValue) passableValue).getValue()));
        }
        if (passableValue instanceof PassableValue.BoolValue) {
            return new CELExpression.Atom(new CELAtom.Bool(((PassableValue.BoolValue) passableValue).getValue()));
        }
        if (passableValue instanceof PassableValue.TimestampValue) {
            return new CELExpression.Atom(new CELAtom.Int(((PassableValue.TimestampValue) passableValue).getValue()));
        }
        if (Intrinsics.areEqual(passableValue, PassableValue.NullValue.INSTANCE)) {
            return new CELExpression.Atom(CELAtom.Null.INSTANCE);
        }
        if (!(passableValue instanceof PassableValue.ListValue)) {
            if (passableValue instanceof PassableValue.MapValue) {
                Map<String, PassableValue> value = ((PassableValue.MapValue) passableValue).getValue();
                ArrayList arrayList = new ArrayList(value.size());
                for (Map.Entry<String, PassableValue> entry : value.entrySet()) {
                    arrayList.add(TuplesKt.to(new CELExpression.Atom(new CELAtom.String(entry.getKey())), toCELExpression(entry.getValue())));
                }
                return new CELExpression.Map(CollectionsKt.toList(arrayList));
            }
            if (!(passableValue instanceof PassableValue.FunctionValue)) {
                throw new NoWhenBranchMatchedException();
            }
            throw new NotImplementedError("An operation is not implemented: Not yet implemented");
        }
        List<PassableValue> value2 = ((PassableValue.ListValue) passableValue).getValue();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(value2, 10));
        Iterator<T> it = value2.iterator();
        while (it.hasNext()) {
            arrayList2.add(toCELExpression((PassableValue) it.next()));
        }
        return new CELExpression.List(arrayList2);
    }
}
