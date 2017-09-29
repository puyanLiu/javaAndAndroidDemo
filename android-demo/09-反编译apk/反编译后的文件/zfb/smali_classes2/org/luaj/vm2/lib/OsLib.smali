.class public Lorg/luaj/vm2/lib/OsLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field public static TMP_PREFIX:Ljava/lang/String;

.field public static TMP_SUFFIX:Ljava/lang/String;

.field private static final a:[Ljava/lang/String;

.field private static final b:J

.field private static c:J

.field static class$org$luaj$vm2$lib$OsLib:Ljava/lang/Class;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field protected globals:Lorg/luaj/vm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, ".luaj"

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->TMP_PREFIX:Ljava/lang/String;

    const-string/jumbo v0, "tmp"

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->TMP_SUFFIX:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "clock"

    aput-object v1, v0, v3

    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    const-string/jumbo v1, "difftime"

    aput-object v1, v0, v5

    const-string/jumbo v1, "execute"

    aput-object v1, v0, v6

    const-string/jumbo v1, "exit"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "getenv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "remove"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rename"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "setlocale"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "tmpname"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->a:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/luaj/vm2/lib/OsLib;->b:J

    sput-wide v0, Lorg/luaj/vm2/lib/OsLib;->c:J

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Sun"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Mon"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Tue"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Wed"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Thu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->d:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Sunday"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Monday"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Tuesday"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Wednesday"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Thursday"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Friday"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Saturday"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->e:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Jan"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Feb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Mar"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Apr"

    aput-object v1, v0, v6

    const-string/jumbo v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->f:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "January"

    aput-object v1, v0, v3

    const-string/jumbo v1, "February"

    aput-object v1, v0, v4

    const-string/jumbo v1, "March"

    aput-object v1, v0, v5

    const-string/jumbo v1, "April"

    aput-object v1, v0, v6

    const-string/jumbo v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "June"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "July"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "August"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "September"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "October"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "November"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "December"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Calendar;I)I
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x1

    invoke-static {p0}, Lorg/luaj/vm2/lib/OsLib;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method static access$000(Lorg/luaj/vm2/lib/OsLib;Ljava/util/Calendar;)Z
    .locals 2

    invoke-static {p1}, Lorg/luaj/vm2/lib/OsLib;->b(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Calendar;)I
    .locals 7

    const/4 v1, 0x1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v0, v2

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit16 v6, v0, 0x3e8

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkglobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/OsLib;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/luaj/vm2/lib/OsLib;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/luaj/vm2/lib/OsLib;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;

    sget-object v4, Lorg/luaj/vm2/lib/OsLib;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, p0, v0, v4}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;-><init>(Lorg/luaj/vm2/lib/OsLib;ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "os"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "loaded"

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "os"

    invoke-virtual {v0, v2, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1
.end method

.method protected clock()D
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/luaj/vm2/lib/OsLib;->b:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public date(Ljava/lang/String;D)Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, p2

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string/jumbo v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lorg/luaj/vm2/lib/OsLib;->b(Ljava/util/Calendar;)I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr p2, v0

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, p2

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    new-instance v6, Lorg/luaj/vm2/Buffer;

    invoke-direct {v6, v5}, Lorg/luaj/vm2/Buffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v1

    goto :goto_0

    :sswitch_1
    if-ge v1, v5, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v4, v1

    sparse-switch v0, :sswitch_data_1

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "invalid conversion specifier \'%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v7, "\'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/LuaValue;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move v0, v2

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x25

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->d:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_4
    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_5
    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->f:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_6
    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->g:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "%a %b %d %H:%M:%S %Y"

    invoke-virtual {p0, v0, p2, p3}, Lorg/luaj/vm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_8
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_b
    invoke-static {v3}, Lorg/luaj/vm2/lib/OsLib;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v7, v0

    const-wide/32 v7, 0x5265c00

    div-long/2addr v0, v7

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x3e9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_c
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "AM"

    :goto_1
    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "PM"

    goto :goto_1

    :sswitch_f
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_10
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/luaj/vm2/lib/OsLib;->a(Ljava/util/Calendar;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_11
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_12
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/luaj/vm2/lib/OsLib;->a(Ljava/util/Calendar;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v0, "%m/%d/%y"

    invoke-virtual {p0, v0, p2, p3}, Lorg/luaj/vm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v0, "%H:%M:%S"

    invoke-virtual {p0, v0, p2, p3}, Lorg/luaj/vm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_15
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_16
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_17
    invoke-static {v3}, Lorg/luaj/vm2/lib/OsLib;->b(Ljava/util/Calendar;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v7, v1, 0x3c

    add-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    rem-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-ltz v0, :cond_2

    const-string/jumbo v0, "+"

    :goto_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "-"

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/luaj/vm2/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x25 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_2
        0x41 -> :sswitch_4
        0x42 -> :sswitch_6
        0x48 -> :sswitch_9
        0x49 -> :sswitch_a
        0x4d -> :sswitch_d
        0x53 -> :sswitch_f
        0x55 -> :sswitch_10
        0x57 -> :sswitch_12
        0x58 -> :sswitch_14
        0x59 -> :sswitch_16
        0x61 -> :sswitch_3
        0x62 -> :sswitch_5
        0x63 -> :sswitch_7
        0x64 -> :sswitch_8
        0x6a -> :sswitch_b
        0x6d -> :sswitch_c
        0x70 -> :sswitch_e
        0x77 -> :sswitch_11
        0x78 -> :sswitch_13
        0x79 -> :sswitch_15
        0x7a -> :sswitch_17
    .end sparse-switch
.end method

.method protected difftime(DD)D
    .locals 2

    sub-double v0, p1, p3

    return-wide v0
.end method

.method protected execute(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;
    .locals 3

    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->NIL:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v1, "exit"

    invoke-static {v1}, Lorg/luaj/vm2/lib/OsLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    sget-object v2, Lorg/luaj/vm2/lib/OsLib;->ONE:Lorg/luaj/vm2/LuaNumber;

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/OsLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method protected exit(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected remove(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setlocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "C"

    return-object v0
.end method

.method protected time(Lorg/luaj/vm2/LuaTable;)D
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "year"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaTable;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const-string/jumbo v2, "month"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaTable;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const-string/jumbo v2, "day"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaTable;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    const-string/jumbo v2, "hour"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaTable;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/luaj/vm2/LuaValue;->optint(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const-string/jumbo v1, "min"

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/LuaTable;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/luaj/vm2/LuaValue;->optint(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const-string/jumbo v2, "sec"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaTable;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/luaj/vm2/LuaValue;->optint(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method protected tmpname()Ljava/lang/String;
    .locals 6

    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->class$org$luaj$vm2$lib$OsLib:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.luaj.vm2.lib.OsLib"

    invoke-static {v0}, Lorg/luaj/vm2/lib/OsLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/OsLib;->class$org$luaj$vm2$lib$OsLib:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/luaj/vm2/lib/OsLib;->TMP_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-wide v2, Lorg/luaj/vm2/lib/OsLib;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lorg/luaj/vm2/lib/OsLib;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/luaj/vm2/lib/OsLib;->TMP_SUFFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/OsLib;->class$org$luaj$vm2$lib$OsLib:Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
