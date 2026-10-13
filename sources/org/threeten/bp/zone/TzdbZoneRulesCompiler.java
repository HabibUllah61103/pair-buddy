package org.threeten.bp.zone;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.PlaybackException;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.jar.JarOutputStream;
import java.util.zip.ZipEntry;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Month;
import org.threeten.bp.Year;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.ChronoLocalDate;
import org.threeten.bp.format.DateTimeFormatter;
import org.threeten.bp.format.DateTimeFormatterBuilder;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.TemporalAccessor;
import org.threeten.bp.temporal.TemporalAdjusters;

/* JADX INFO: loaded from: classes7.dex */
final class TzdbZoneRulesCompiler {
    private static final DateTimeFormatter TIME_PARSER = new DateTimeFormatterBuilder().appendValue(ChronoField.HOUR_OF_DAY).optionalStart().appendLiteral(AbstractJsonLexerKt.COLON).appendValue(ChronoField.MINUTE_OF_HOUR, 2).optionalStart().appendLiteral(AbstractJsonLexerKt.COLON).appendValue(ChronoField.SECOND_OF_MINUTE, 2).toFormatter();
    private final File leapSecondsFile;
    private final List<File> sourceFiles;
    private final boolean verbose;
    private final String version;
    private final Map<String, List<TZDBRule>> rules = new HashMap();
    private final Map<String, List<TZDBZone>> zones = new HashMap();
    private final Map<String, String> links = new HashMap();
    private final SortedMap<String, ZoneRules> builtZones = new TreeMap();
    private Map<Object, Object> deduplicateMap = new HashMap();
    private final SortedMap<LocalDate, Byte> leapSeconds = new TreeMap();

    public static void main(String[] strArr) throws Throwable {
        if (strArr.length < 2) {
            outputHelp();
            return;
        }
        File file = null;
        File file2 = null;
        String str = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (i < strArr.length) {
            String str2 = strArr[i];
            if (!str2.startsWith("-")) {
                break;
            }
            if ("-srcdir".equals(str2)) {
                if (file == null && (i = i + 1) < strArr.length) {
                    file = new File(strArr[i]);
                    i++;
                } else {
                    outputHelp();
                    return;
                }
            } else if ("-dstdir".equals(str2)) {
                if (file2 == null && (i = i + 1) < strArr.length) {
                    file2 = new File(strArr[i]);
                    i++;
                } else {
                    outputHelp();
                    return;
                }
            } else if ("-version".equals(str2)) {
                if (str == null && (i = i + 1) < strArr.length) {
                    str = strArr[i];
                    i++;
                } else {
                    outputHelp();
                    return;
                }
            } else {
                if (!"-unpacked".equals(str2)) {
                    if ("-verbose".equals(str2)) {
                        if (!z2) {
                            z2 = true;
                            i++;
                        }
                    } else if (!"-help".equals(str2)) {
                        System.out.println("Unrecognised option: " + str2);
                    }
                    outputHelp();
                    return;
                }
                if (z) {
                    outputHelp();
                    return;
                } else {
                    z = true;
                    i++;
                }
            }
        }
        if (file == null) {
            System.out.println("Source directory must be specified using -srcdir: " + file);
            return;
        }
        if (!file.isDirectory()) {
            System.out.println("Source does not exist or is not a directory: " + file);
            return;
        }
        if (file2 == null) {
            file2 = file;
        }
        List listAsList = Arrays.asList(Arrays.copyOfRange(strArr, i, strArr.length));
        if (listAsList.isEmpty()) {
            System.out.println("Source filenames not specified, using default set");
            System.out.println("(africa antarctica asia australasia backward etcetera europe northamerica southamerica)");
            listAsList = Arrays.asList("africa", "antarctica", "asia", "australasia", "backward", "etcetera", "europe", "northamerica", "southamerica");
        }
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            File file3 = new File(file, str);
            if (!file3.isDirectory()) {
                System.out.println("Version does not represent a valid source directory : " + file3);
                return;
            }
            arrayList.add(file3);
        } else {
            for (File file4 : file.listFiles()) {
                if (file4.isDirectory() && file4.getName().matches("[12][0-9][0-9][0-9][A-Za-z0-9._-]+")) {
                    arrayList.add(file4);
                }
            }
        }
        if (arrayList.isEmpty()) {
            System.out.println("Source directory contains no valid source folders: " + file);
            return;
        }
        if (!file2.exists() && !file2.mkdirs()) {
            System.out.println("Destination directory could not be created: " + file2);
        } else if (!file2.isDirectory()) {
            System.out.println("Destination is not a directory: " + file2);
        } else {
            process(arrayList, listAsList, file2, z, z2);
        }
    }

    private static void outputHelp() {
        System.out.println("Usage: TzdbZoneRulesCompiler <options> <tzdb source filenames>");
        System.out.println("where options include:");
        System.out.println("   -srcdir <directory>   Where to find source directories (required)");
        System.out.println("   -dstdir <directory>   Where to output generated files (default srcdir)");
        System.out.println("   -version <version>    Specify the version, such as 2009a (optional)");
        System.out.println("   -unpacked             Generate dat files without jar files");
        System.out.println("   -help                 Print this usage message");
        System.out.println("   -verbose              Output verbose information during compilation");
        System.out.println(" There must be one directory for each version in srcdir");
        System.out.println(" Each directory must have the name of the version, such as 2009a");
        System.out.println(" Each directory must contain the unpacked tzdb files, such as asia or europe");
        System.out.println(" Directories must match the regex [12][0-9][0-9][0-9][A-Za-z0-9._-]+");
        System.out.println(" There will be one jar file for each version and one combined jar in dstdir");
        System.out.println(" If the version is specified, only that version is processed");
    }

    private static void process(List<File> list, List<String> list2, File file, boolean z, boolean z2) throws Throwable {
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        TreeSet treeSet = new TreeSet();
        HashSet hashSet = new HashSet();
        SortedMap<LocalDate, Byte> sortedMap = null;
        for (File file2 : list) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                File file3 = new File(file2, it.next());
                if (file3.exists()) {
                    arrayList.add(file3);
                }
            }
            if (!arrayList.isEmpty()) {
                File file4 = new File(file2, "leapseconds");
                if (!file4.exists()) {
                    System.out.println("Version " + file2.getName() + " does not include leap seconds information.");
                    file4 = null;
                }
                String name = file2.getName();
                TzdbZoneRulesCompiler tzdbZoneRulesCompiler = new TzdbZoneRulesCompiler(name, arrayList, file4, z2);
                tzdbZoneRulesCompiler.setDeduplicateMap(map);
                try {
                    tzdbZoneRulesCompiler.compile();
                    SortedMap<String, ZoneRules> zones = tzdbZoneRulesCompiler.getZones();
                    SortedMap<LocalDate, Byte> leapSeconds = tzdbZoneRulesCompiler.getLeapSeconds();
                    if (!z) {
                        File file5 = new File(file, "threeten-TZDB-" + name + ".jar");
                        if (z2) {
                            System.out.println("Outputting file: " + file5);
                        }
                        outputFile(file5, name, zones, leapSeconds);
                    }
                    treeMap.put(name, zones);
                    treeSet.addAll(zones.keySet());
                    hashSet.addAll(zones.values());
                    if (tzdbZoneRulesCompiler.getMostRecentLeapSecond() != null && (sortedMap == null || tzdbZoneRulesCompiler.getMostRecentLeapSecond().compareTo((ChronoLocalDate) sortedMap.lastKey()) > 0)) {
                        sortedMap = leapSeconds;
                    }
                } catch (Exception e) {
                    System.out.println("Failed: " + e.toString());
                    e.printStackTrace();
                    System.exit(1);
                }
            }
        }
        if (z) {
            if (z2) {
                System.out.println("Outputting combined files: " + file);
            }
            outputFilesDat(file, treeMap, treeSet, hashSet, sortedMap);
        } else {
            File file6 = new File(file, "threeten-TZDB-all.jar");
            if (z2) {
                System.out.println("Outputting combined file: " + file6);
            }
            outputFile(file6, treeMap, treeSet, hashSet, sortedMap);
        }
    }

    private static void outputFilesDat(File file, Map<String, SortedMap<String, ZoneRules>> map, Set<String> set, Set<ZoneRules> set2, SortedMap<LocalDate, Byte> sortedMap) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th;
        File file2 = new File(file, "TZDB.dat");
        file2.delete();
        try {
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    outputTzdbDat(fileOutputStream, map, set, set2);
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                        throw th;
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
            }
        } catch (Exception e) {
            System.out.println("Failed: " + e.toString());
            e.printStackTrace();
            System.exit(1);
        }
    }

    private static void outputFile(File file, String str, SortedMap<String, ZoneRules> sortedMap, SortedMap<LocalDate, Byte> sortedMap2) throws Throwable {
        TreeMap treeMap = new TreeMap();
        treeMap.put(str, sortedMap);
        outputFile(file, treeMap, new TreeSet(sortedMap.keySet()), new HashSet(sortedMap.values()), sortedMap2);
    }

    private static void outputFile(File file, Map<String, SortedMap<String, ZoneRules>> map, Set<String> set, Set<ZoneRules> set2, SortedMap<LocalDate, Byte> sortedMap) throws Throwable {
        JarOutputStream jarOutputStream = null;
        try {
            try {
                try {
                    JarOutputStream jarOutputStream2 = new JarOutputStream(new FileOutputStream(file));
                    try {
                        outputTzdbEntry(jarOutputStream2, map, set, set2);
                        jarOutputStream2.close();
                    } catch (Exception e) {
                        e = e;
                        jarOutputStream = jarOutputStream2;
                        System.out.println("Failed: " + e.toString());
                        e.printStackTrace();
                        System.exit(1);
                        if (jarOutputStream != null) {
                            jarOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        jarOutputStream = jarOutputStream2;
                        if (jarOutputStream != null) {
                            try {
                                jarOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
    }

    private static void outputTzdbEntry(JarOutputStream jarOutputStream, Map<String, SortedMap<String, ZoneRules>> map, Set<String> set, Set<ZoneRules> set2) {
        try {
            jarOutputStream.putNextEntry(new ZipEntry("org/threeten/bp/TZDB.dat"));
            outputTzdbDat(jarOutputStream, map, set, set2);
            jarOutputStream.closeEntry();
        } catch (Exception e) {
            System.out.println("Failed: " + e.toString());
            e.printStackTrace();
            System.exit(1);
        }
    }

    private static void outputTzdbDat(OutputStream outputStream, Map<String, SortedMap<String, ZoneRules>> map, Set<String> set, Set<ZoneRules> set2) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeUTF("TZDB");
        String[] strArr = (String[]) map.keySet().toArray(new String[map.size()]);
        dataOutputStream.writeShort(strArr.length);
        for (String str : strArr) {
            dataOutputStream.writeUTF(str);
        }
        String[] strArr2 = (String[]) set.toArray(new String[set.size()]);
        dataOutputStream.writeShort(strArr2.length);
        for (String str2 : strArr2) {
            dataOutputStream.writeUTF(str2);
        }
        ArrayList<ZoneRules> arrayList = new ArrayList(set2);
        dataOutputStream.writeShort(arrayList.size());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        for (ZoneRules zoneRules : arrayList) {
            byteArrayOutputStream.reset();
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            Ser.write(zoneRules, dataOutputStream2);
            dataOutputStream2.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            dataOutputStream.writeShort(byteArray.length);
            dataOutputStream.write(byteArray);
        }
        for (String str3 : map.keySet()) {
            dataOutputStream.writeShort(map.get(str3).size());
            for (Map.Entry<String, ZoneRules> entry : map.get(str3).entrySet()) {
                int iBinarySearch = Arrays.binarySearch(strArr2, entry.getKey());
                int iIndexOf = arrayList.indexOf(entry.getValue());
                dataOutputStream.writeShort(iBinarySearch);
                dataOutputStream.writeShort(iIndexOf);
            }
        }
        dataOutputStream.flush();
    }

    public TzdbZoneRulesCompiler(String str, List<File> list, File file, boolean z) {
        this.version = str;
        this.sourceFiles = list;
        this.leapSecondsFile = file;
        this.verbose = z;
    }

    public void compile() throws Exception {
        printVerbose("Compiling TZDB version " + this.version);
        parseFiles();
        parseLeapSecondsFile();
        buildZoneRules();
        printVerbose("Compiled TZDB version " + this.version);
    }

    public SortedMap<String, ZoneRules> getZones() {
        return this.builtZones;
    }

    public SortedMap<LocalDate, Byte> getLeapSeconds() {
        return this.leapSeconds;
    }

    private LocalDate getMostRecentLeapSecond() {
        if (this.leapSeconds.isEmpty()) {
            return null;
        }
        return this.leapSeconds.lastKey();
    }

    void setDeduplicateMap(Map<Object, Object> map) {
        this.deduplicateMap = map;
    }

    private void parseFiles() throws Exception {
        for (File file : this.sourceFiles) {
            printVerbose("Parsing file: " + file);
            parseFile(file);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0094: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:25:0x0094 */
    private void parseLeapSecondsFile() throws Exception {
        BufferedReader bufferedReader;
        printVerbose("Parsing leap second file: " + this.leapSecondsFile);
        int i = 1;
        BufferedReader bufferedReader2 = null;
        line = null;
        String line = null;
        try {
            try {
                BufferedReader bufferedReader3 = new BufferedReader(new FileReader(this.leapSecondsFile));
                while (true) {
                    try {
                        line = bufferedReader3.readLine();
                        if (line != null) {
                            int iIndexOf = line.indexOf(35);
                            if (iIndexOf >= 0) {
                                line = line.substring(0, iIndexOf);
                            }
                            if (line.trim().length() != 0) {
                                LeapSecondRule leapSecondRule = parseLeapSecondRule(line);
                                this.leapSeconds.put(leapSecondRule.leapDate, Byte.valueOf(leapSecondRule.secondAdjustment));
                            }
                            i++;
                        } else {
                            try {
                                bufferedReader3.close();
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        throw new Exception("Failed while processing file '" + this.leapSecondsFile + "' on line " + i + " '" + line + "'", e);
                    }
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            throw th;
        }
    }

    private LeapSecondRule parseLeapSecondRule(String str) {
        byte b;
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t");
        if (stringTokenizer.nextToken().equals("Leap")) {
            if (stringTokenizer.countTokens() < 6) {
                printVerbose("Invalid leap second line in file: " + this.leapSecondsFile + ", line: " + str);
                throw new IllegalArgumentException("Invalid leap second line");
            }
            LocalDate localDateOf = LocalDate.of(Integer.parseInt(stringTokenizer.nextToken()), parseMonth(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()));
            String strNextToken = stringTokenizer.nextToken();
            String strNextToken2 = stringTokenizer.nextToken();
            if (strNextToken2.equals("+")) {
                if (!"23:59:60".equals(strNextToken)) {
                    throw new IllegalArgumentException("Leap seconds can only be inserted at 23:59:60 - Date:" + localDateOf);
                }
                b = 1;
            } else if (strNextToken2.equals("-")) {
                if (!"23:59:59".equals(strNextToken)) {
                    throw new IllegalArgumentException("Leap seconds can only be removed at 23:59:59 - Date:" + localDateOf);
                }
                b = -1;
            } else {
                throw new IllegalArgumentException("Invalid adjustment '" + strNextToken2 + "' in leap second rule for " + localDateOf);
            }
            String strNextToken3 = stringTokenizer.nextToken();
            if (!ExifInterface.LATITUDE_SOUTH.equalsIgnoreCase(strNextToken3)) {
                throw new IllegalArgumentException("Only stationary ('S') leap seconds are supported, not '" + strNextToken3 + "'");
            }
            return new LeapSecondRule(localDateOf, b);
        }
        throw new IllegalArgumentException("Unknown line");
    }

    private void parseFile(File file) throws Exception {
        String line;
        Exception e;
        int i = 1;
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            ArrayList arrayList = null;
            line = null;
            while (true) {
                try {
                    try {
                        line = bufferedReader2.readLine();
                        if (line != null) {
                            int iIndexOf = line.indexOf(35);
                            if (iIndexOf >= 0) {
                                line = line.substring(0, iIndexOf);
                            }
                            if (line.trim().length() != 0) {
                                StringTokenizer stringTokenizer = new StringTokenizer(line, " \t");
                                if (arrayList != null && Character.isWhitespace(line.charAt(0)) && stringTokenizer.hasMoreTokens()) {
                                    if (parseZoneLine(stringTokenizer, arrayList)) {
                                        arrayList = null;
                                    }
                                } else if (stringTokenizer.hasMoreTokens()) {
                                    String strNextToken = stringTokenizer.nextToken();
                                    if (strNextToken.equals("Zone")) {
                                        if (stringTokenizer.countTokens() < 3) {
                                            printVerbose("Invalid Zone line in file: " + file + ", line: " + line);
                                            throw new IllegalArgumentException("Invalid Zone line");
                                        }
                                        arrayList = new ArrayList();
                                        this.zones.put(stringTokenizer.nextToken(), arrayList);
                                        if (parseZoneLine(stringTokenizer, arrayList)) {
                                        }
                                    } else if (strNextToken.equals("Rule")) {
                                        if (stringTokenizer.countTokens() < 9) {
                                            printVerbose("Invalid Rule line in file: " + file + ", line: " + line);
                                            throw new IllegalArgumentException("Invalid Rule line");
                                        }
                                        parseRuleLine(stringTokenizer);
                                    } else if (strNextToken.equals(HttpHeaders.LINK)) {
                                        if (stringTokenizer.countTokens() < 2) {
                                            printVerbose("Invalid Link line in file: " + file + ", line: " + line);
                                            throw new IllegalArgumentException("Invalid Link line");
                                        }
                                        this.links.put(stringTokenizer.nextToken(), stringTokenizer.nextToken());
                                    } else {
                                        throw new IllegalArgumentException("Unknown line");
                                    }
                                    arrayList = null;
                                } else {
                                    continue;
                                }
                            }
                            i++;
                        } else {
                            bufferedReader2.close();
                            return;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        throw new Exception("Failed while processing file '" + file + "' on line " + i + " '" + line + "'", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Exception e3) {
            line = null;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void parseRuleLine(StringTokenizer stringTokenizer) {
        TZDBRule tZDBRule = new TZDBRule();
        String strNextToken = stringTokenizer.nextToken();
        if (!this.rules.containsKey(strNextToken)) {
            this.rules.put(strNextToken, new ArrayList());
        }
        this.rules.get(strNextToken).add(tZDBRule);
        tZDBRule.startYear = parseYear(stringTokenizer.nextToken(), 0);
        tZDBRule.endYear = parseYear(stringTokenizer.nextToken(), tZDBRule.startYear);
        if (tZDBRule.startYear > tZDBRule.endYear) {
            throw new IllegalArgumentException("Year order invalid: " + tZDBRule.startYear + " > " + tZDBRule.endYear);
        }
        parseOptional(stringTokenizer.nextToken());
        parseMonthDayTime(stringTokenizer, tZDBRule);
        tZDBRule.savingsAmount = parsePeriod(stringTokenizer.nextToken());
        tZDBRule.text = parseOptional(stringTokenizer.nextToken());
    }

    private boolean parseZoneLine(StringTokenizer stringTokenizer, List<TZDBZone> list) {
        TZDBZone tZDBZone = new TZDBZone();
        list.add(tZDBZone);
        tZDBZone.standardOffset = parseOffset(stringTokenizer.nextToken());
        String optional = parseOptional(stringTokenizer.nextToken());
        if (optional == null) {
            tZDBZone.fixedSavingsSecs = 0;
            tZDBZone.savingsRule = null;
        } else {
            try {
                tZDBZone.fixedSavingsSecs = Integer.valueOf(parsePeriod(optional));
                tZDBZone.savingsRule = null;
            } catch (Exception unused) {
                tZDBZone.fixedSavingsSecs = null;
                tZDBZone.savingsRule = optional;
            }
        }
        tZDBZone.text = stringTokenizer.nextToken();
        if (!stringTokenizer.hasMoreTokens()) {
            return true;
        }
        tZDBZone.year = Year.of(Integer.parseInt(stringTokenizer.nextToken()));
        if (stringTokenizer.hasMoreTokens()) {
            parseMonthDayTime(stringTokenizer, tZDBZone);
        }
        return false;
    }

    private void parseMonthDayTime(StringTokenizer stringTokenizer, TZDBMonthDayTime tZDBMonthDayTime) {
        tZDBMonthDayTime.month = parseMonth(stringTokenizer.nextToken());
        if (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.startsWith("last")) {
                tZDBMonthDayTime.dayOfMonth = -1;
                tZDBMonthDayTime.dayOfWeek = parseDayOfWeek(strNextToken.substring(4));
                tZDBMonthDayTime.adjustForwards = false;
            } else {
                int iIndexOf = strNextToken.indexOf(">=");
                if (iIndexOf > 0) {
                    tZDBMonthDayTime.dayOfWeek = parseDayOfWeek(strNextToken.substring(0, iIndexOf));
                    strNextToken = strNextToken.substring(iIndexOf + 2);
                } else {
                    int iIndexOf2 = strNextToken.indexOf("<=");
                    if (iIndexOf2 > 0) {
                        tZDBMonthDayTime.dayOfWeek = parseDayOfWeek(strNextToken.substring(0, iIndexOf2));
                        tZDBMonthDayTime.adjustForwards = false;
                        strNextToken = strNextToken.substring(iIndexOf2 + 2);
                    }
                }
                tZDBMonthDayTime.dayOfMonth = Integer.parseInt(strNextToken);
            }
            if (stringTokenizer.hasMoreTokens()) {
                String strNextToken2 = stringTokenizer.nextToken();
                int secs = parseSecs(strNextToken2);
                tZDBMonthDayTime.time = (LocalTime) deduplicate(LocalTime.ofSecondOfDay(Jdk8Methods.floorMod(secs, 86400)));
                tZDBMonthDayTime.adjustDays = Jdk8Methods.floorDiv(secs, 86400);
                tZDBMonthDayTime.timeDefinition = parseTimeDefinition(strNextToken2.charAt(strNextToken2.length() - 1));
            }
        }
    }

    private int parseYear(String str, int i) {
        String lowerCase = str.toLowerCase();
        if (matches(lowerCase, "minimum")) {
            return Year.MIN_VALUE;
        }
        if (matches(lowerCase, "maximum")) {
            return Year.MAX_VALUE;
        }
        return lowerCase.equals("only") ? i : Integer.parseInt(lowerCase);
    }

    private Month parseMonth(String str) {
        String lowerCase = str.toLowerCase();
        for (Month month : Month.values()) {
            if (matches(lowerCase, month.name().toLowerCase())) {
                return month;
            }
        }
        throw new IllegalArgumentException("Unknown month: " + lowerCase);
    }

    private DayOfWeek parseDayOfWeek(String str) {
        String lowerCase = str.toLowerCase();
        for (DayOfWeek dayOfWeek : DayOfWeek.values()) {
            if (matches(lowerCase, dayOfWeek.name().toLowerCase())) {
                return dayOfWeek;
            }
        }
        throw new IllegalArgumentException("Unknown day-of-week: " + lowerCase);
    }

    private boolean matches(String str, String str2) {
        return str.startsWith(str2.substring(0, 3)) && str2.startsWith(str) && str.length() <= str2.length();
    }

    private String parseOptional(String str) {
        if (str.equals("-")) {
            return null;
        }
        return str;
    }

    private int parseSecs(String str) {
        if (str.equals("-")) {
            return 0;
        }
        boolean zStartsWith = str.startsWith("-");
        ParsePosition parsePosition = new ParsePosition(zStartsWith ? 1 : 0);
        TemporalAccessor unresolved = TIME_PARSER.parseUnresolved(str, parsePosition);
        if (unresolved == null || parsePosition.getErrorIndex() >= 0) {
            throw new IllegalArgumentException(str);
        }
        long j = unresolved.getLong(ChronoField.HOUR_OF_DAY);
        Long lValueOf = unresolved.isSupported(ChronoField.MINUTE_OF_HOUR) ? Long.valueOf(unresolved.getLong(ChronoField.MINUTE_OF_HOUR)) : null;
        Long lValueOf2 = unresolved.isSupported(ChronoField.SECOND_OF_MINUTE) ? Long.valueOf(unresolved.getLong(ChronoField.SECOND_OF_MINUTE)) : null;
        int iLongValue = (int) ((j * 3600) + ((lValueOf != null ? lValueOf.longValue() : 0L) * 60) + (lValueOf2 != null ? lValueOf2.longValue() : 0L));
        return zStartsWith ? -iLongValue : iLongValue;
    }

    private ZoneOffset parseOffset(String str) {
        return ZoneOffset.ofTotalSeconds(parseSecs(str));
    }

    private int parsePeriod(String str) {
        return parseSecs(str);
    }

    private ZoneOffsetTransitionRule.TimeDefinition parseTimeDefinition(char c) {
        if (c != 'G') {
            if (c != 'S') {
                if (c != 'U' && c != 'Z' && c != 'g') {
                    if (c != 's') {
                        if (c != 'u' && c != 'z') {
                            return ZoneOffsetTransitionRule.TimeDefinition.WALL;
                        }
                    }
                }
            }
            return ZoneOffsetTransitionRule.TimeDefinition.STANDARD;
        }
        return ZoneOffsetTransitionRule.TimeDefinition.UTC;
    }

    private void buildZoneRules() throws Exception {
        for (String str : this.zones.keySet()) {
            printVerbose("Building zone " + str);
            String str2 = (String) deduplicate(str);
            List<TZDBZone> list = this.zones.get(str2);
            ZoneRulesBuilder zoneRulesBuilder = new ZoneRulesBuilder();
            Iterator<TZDBZone> it = list.iterator();
            while (it.hasNext()) {
                zoneRulesBuilder = it.next().addToBuilder(zoneRulesBuilder, this.rules);
            }
            this.builtZones.put(str2, (ZoneRules) deduplicate(zoneRulesBuilder.toRules(str2, this.deduplicateMap)));
        }
        Iterator<String> it2 = this.links.keySet().iterator();
        while (it2.hasNext()) {
            String str3 = (String) deduplicate(it2.next());
            String str4 = this.links.get(str3);
            printVerbose("Linking alias " + str3 + " to " + str4);
            ZoneRules zoneRules = this.builtZones.get(str4);
            if (zoneRules == null) {
                String str5 = this.links.get(str4);
                printVerbose("Relinking alias " + str3 + " to " + str5);
                zoneRules = this.builtZones.get(str5);
                if (zoneRules == null) {
                    throw new IllegalArgumentException("Alias '" + str3 + "' links to invalid zone '" + str5 + "' for '" + this.version + "'");
                }
            }
            this.builtZones.put(str3, zoneRules);
        }
        this.builtZones.remove("UTC");
        this.builtZones.remove("GMT");
        this.builtZones.remove("GMT0");
        this.builtZones.remove("GMT+0");
        this.builtZones.remove("GMT-0");
    }

    <T> T deduplicate(T t) {
        if (!this.deduplicateMap.containsKey(t)) {
            this.deduplicateMap.put(t, t);
        }
        return (T) this.deduplicateMap.get(t);
    }

    private void printVerbose(String str) {
        if (this.verbose) {
            System.out.println(str);
        }
    }

    abstract class TZDBMonthDayTime {
        int adjustDays;
        DayOfWeek dayOfWeek;
        Month month = Month.JANUARY;
        int dayOfMonth = 1;
        boolean adjustForwards = true;
        LocalTime time = LocalTime.MIDNIGHT;
        ZoneOffsetTransitionRule.TimeDefinition timeDefinition = ZoneOffsetTransitionRule.TimeDefinition.WALL;

        TZDBMonthDayTime() {
        }

        void adjustToFowards(int i) {
            int i2;
            if (this.adjustForwards || (i2 = this.dayOfMonth) <= 0) {
                return;
            }
            LocalDate localDateMinusDays = LocalDate.of(i, this.month, i2).minusDays(6L);
            this.dayOfMonth = localDateMinusDays.getDayOfMonth();
            this.month = localDateMinusDays.getMonth();
            this.adjustForwards = true;
        }
    }

    final class TZDBRule extends TZDBMonthDayTime {
        int endYear;
        int savingsAmount;
        int startYear;
        String text;

        TZDBRule() {
            super();
        }

        void addToBuilder(ZoneRulesBuilder zoneRulesBuilder) {
            adjustToFowards(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS);
            zoneRulesBuilder.addRuleToWindow(this.startYear, this.endYear, this.month, this.dayOfMonth, this.dayOfWeek, this.time, this.adjustDays, this.timeDefinition, this.savingsAmount);
        }
    }

    final class TZDBZone extends TZDBMonthDayTime {
        Integer fixedSavingsSecs;
        String savingsRule;
        ZoneOffset standardOffset;
        String text;
        Year year;

        TZDBZone() {
            super();
        }

        ZoneRulesBuilder addToBuilder(ZoneRulesBuilder zoneRulesBuilder, Map<String, List<TZDBRule>> map) {
            Year year = this.year;
            if (year != null) {
                zoneRulesBuilder.addWindow(this.standardOffset, toDateTime(year.getValue()), this.timeDefinition);
            } else {
                zoneRulesBuilder.addWindowForever(this.standardOffset);
            }
            Integer num = this.fixedSavingsSecs;
            if (num != null) {
                zoneRulesBuilder.setFixedSavingsToWindow(num.intValue());
                return zoneRulesBuilder;
            }
            List<TZDBRule> list = map.get(this.savingsRule);
            if (list == null) {
                throw new IllegalArgumentException("Rule not found: " + this.savingsRule);
            }
            Iterator<TZDBRule> it = list.iterator();
            while (it.hasNext()) {
                it.next().addToBuilder(zoneRulesBuilder);
            }
            return zoneRulesBuilder;
        }

        private LocalDateTime toDateTime(int i) {
            LocalDate localDateOf;
            adjustToFowards(i);
            if (this.dayOfMonth == -1) {
                this.dayOfMonth = this.month.length(Year.isLeap(i));
                localDateOf = LocalDate.of(i, this.month, this.dayOfMonth);
                if (this.dayOfWeek != null) {
                    localDateOf = localDateOf.with(TemporalAdjusters.previousOrSame(this.dayOfWeek));
                }
            } else {
                localDateOf = LocalDate.of(i, this.month, this.dayOfMonth);
                if (this.dayOfWeek != null) {
                    localDateOf = localDateOf.with(TemporalAdjusters.nextOrSame(this.dayOfWeek));
                }
            }
            return LocalDateTime.of((LocalDate) TzdbZoneRulesCompiler.this.deduplicate(localDateOf.plusDays(this.adjustDays)), this.time);
        }
    }

    static final class LeapSecondRule {
        final LocalDate leapDate;
        byte secondAdjustment;

        public LeapSecondRule(LocalDate localDate, byte b) {
            this.leapDate = localDate;
            this.secondAdjustment = b;
        }
    }
}
