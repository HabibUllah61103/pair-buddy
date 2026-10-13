package expo.modules.superwallexpo.json;

import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.SurveyOption;
import com.superwall.sdk.config.models.SurveyShowCondition;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Survey.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0005\u001a\n\u0010\u0000\u001a\u00020\u0002*\u00020\u0006¨\u0006\u0007"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/config/models/Survey;", "Lcom/superwall/sdk/config/models/SurveyOption;", "Lcom/superwall/sdk/config/models/SurveyShowCondition;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SurveyKt {

    /* JADX INFO: compiled from: Survey.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SurveyShowCondition.values().length];
            try {
                iArr[SurveyShowCondition.ON_MANUAL_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SurveyShowCondition.ON_PURCHASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Map<String, Object> toJson(Survey survey) {
        Intrinsics.checkNotNullParameter(survey, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("id", survey.getId());
        linkedHashMap.put("assignmentKey", survey.getAssignmentKey());
        linkedHashMap.put("title", survey.getTitle());
        linkedHashMap.put("message", survey.getMessage());
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = survey.getOptions().iterator();
        while (it.hasNext()) {
            arrayList.add(toJson((SurveyOption) it.next()));
        }
        linkedHashMap.put("options", arrayList);
        linkedHashMap.put("presentationCondition", toJson(survey.getPresentationCondition()));
        linkedHashMap.put("presentationProbability", Double.valueOf(survey.getPresentationProbability()));
        linkedHashMap.put("includeOtherOption", Boolean.valueOf(survey.getIncludeOtherOption()));
        linkedHashMap.put("includeCloseOption", Boolean.valueOf(survey.getIncludeCloseOption()));
        return linkedHashMap;
    }

    public static final Map<String, Object> toJson(SurveyOption surveyOption) {
        Intrinsics.checkNotNullParameter(surveyOption, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("id", surveyOption.getId());
        linkedHashMap.put("title", surveyOption.getTitle());
        return linkedHashMap;
    }

    public static final String toJson(SurveyShowCondition surveyShowCondition) {
        Intrinsics.checkNotNullParameter(surveyShowCondition, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[surveyShowCondition.ordinal()];
        if (i == 1) {
            return "ON_MANUAL_CLOSE";
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "ON_PURCHASE";
    }
}
