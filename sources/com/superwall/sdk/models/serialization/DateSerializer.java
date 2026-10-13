package com.superwall.sdk.models.serialization;

import com.google.common.net.HttpHeaders;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.utilities.DateUtils;
import com.superwall.sdk.utilities.DateUtilsKt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: DateSerializer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0002\n\r\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/models/serialization/DateSerializer;", "Lkotlinx/serialization/KSerializer;", "Ljava/util/Date;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "dateFormat", "com/superwall/sdk/models/serialization/DateSerializer$dateFormat$1", "Lcom/superwall/sdk/models/serialization/DateSerializer$dateFormat$1;", "dateFormats", "com/superwall/sdk/models/serialization/DateSerializer$dateFormats$1", "Lcom/superwall/sdk/models/serialization/DateSerializer$dateFormats$1;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "parseStringDate", "dateString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@ExperimentalSerializationApi
public final class DateSerializer implements KSerializer<Date> {
    public static final DateSerializer INSTANCE = new DateSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.PrimitiveSerialDescriptor(HttpHeaders.DATE, PrimitiveKind.STRING.INSTANCE);
    private static final DateSerializer$dateFormat$1 dateFormat = new ThreadLocal<SimpleDateFormat>() { // from class: com.superwall.sdk.models.serialization.DateSerializer$dateFormat$1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getISO_MILLIS());
            simpleDateFormatDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormatDateFormat;
        }
    };
    private static final DateSerializer$dateFormats$1 dateFormats = new ThreadLocal<List<? extends SimpleDateFormat>>() { // from class: com.superwall.sdk.models.serialization.DateSerializer$dateFormats$1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public List<? extends SimpleDateFormat> initialValue() {
            List listListOf = CollectionsKt.listOf((Object[]) new String[]{DateUtils.INSTANCE.getISO_MILLIS(), DateUtils.INSTANCE.getISO_MILLIS() + "'Z'", DateUtils.INSTANCE.getISO_SECONDS(), DateUtils.INSTANCE.getISO_SECONDS_TIMEZONE()});
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listListOf, 10));
            Iterator it = listListOf.iterator();
            while (it.hasNext()) {
                SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat((String) it.next());
                simpleDateFormatDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                arrayList.add(simpleDateFormatDateFormat);
            }
            return arrayList;
        }
    };

    private DateSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Date value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SimpleDateFormat simpleDateFormat = dateFormat.get();
        Intrinsics.checkNotNull(simpleDateFormat);
        String str = simpleDateFormat.format(value);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        encoder.encodeString(str);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Date deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
            if (jsonElementDecodeJsonElement instanceof JsonPrimitive) {
                JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementDecodeJsonElement;
                Long longOrNull = JsonElementKt.getLongOrNull(jsonPrimitive);
                if (longOrNull != null) {
                    return new Date(longOrNull.longValue());
                }
                return parseStringDate(jsonPrimitive.getContent());
            }
        }
        return parseStringDate(decoder.decodeString());
    }

    private final Date parseStringDate(String dateString) {
        List<? extends SimpleDateFormat> list = dateFormats.get();
        Intrinsics.checkNotNull(list);
        Iterator<? extends SimpleDateFormat> it = list.iterator();
        while (it.hasNext()) {
            try {
                Date date = it.next().parse(dateString);
                Intrinsics.checkNotNull(date);
                return date;
            } catch (Throwable unused) {
            }
        }
        throw new IllegalArgumentException("Invalid date format: " + dateString);
    }
}
