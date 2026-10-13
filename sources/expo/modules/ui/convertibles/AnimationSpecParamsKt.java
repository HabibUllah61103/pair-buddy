package expo.modules.ui.convertibles;

import androidx.compose.animation.core.AnimationSpec;
import expo.modules.kotlin.exception.MissingTypeConverter;
import expo.modules.kotlin.records.RecordTypeConverter;
import expo.modules.kotlin.records.RecordTypeConverterKt;
import expo.modules.kotlin.types.TypeConverter;
import expo.modules.kotlin.types.TypeConverterProviderImpl;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: AnimationSpecParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000¨\u0006\u0005"}, d2 = {"parseAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "raw", "", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AnimationSpecParamsKt {
    public static final AnimationSpec<Float> parseAnimationSpec(Object obj) throws MissingTypeConverter {
        if (!(obj instanceof Map)) {
            return null;
        }
        Map<?, ?> map = (Map) obj;
        Object obj2 = map.get("$type");
        if (!Intrinsics.areEqual(obj2, "spring")) {
            if (!Intrinsics.areEqual(obj2, "tween")) {
                if (!Intrinsics.areEqual(obj2, "snap")) {
                    if (!Intrinsics.areEqual(obj2, "keyframes")) {
                        return null;
                    }
                    TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(KeyframesSpecParams.class));
                    Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                    return ((KeyframesSpecParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).toAnimationSpec(map);
                }
                TypeConverter<?> typeConverterObtainTypeConverter2 = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(SnapSpecParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter2, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                return ((SnapSpecParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter2)).toAnimationSpec();
            }
            TypeConverter<?> typeConverterObtainTypeConverter3 = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(TweenSpecParams.class));
            Intrinsics.checkNotNull(typeConverterObtainTypeConverter3, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
            return ((TweenSpecParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter3)).toAnimationSpec();
        }
        TypeConverter<?> typeConverterObtainTypeConverter4 = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(SpringSpecParams.class));
        Intrinsics.checkNotNull(typeConverterObtainTypeConverter4, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
        return ((SpringSpecParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter4)).toAnimationSpec();
    }
}
