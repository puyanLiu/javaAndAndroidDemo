.class Lorg/luaj/vm2/lib/OsLib$OsLibFunc;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/OsLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/OsLib;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    iput p2, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->opcode:I

    iput-object p3, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    :try_start_0
    iget v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->opcode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/OsLib;->clock()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    const-string/jumbo v1, "%c"

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->isnumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->todouble(I)D

    move-result-wide v0

    :goto_1
    const-string/jumbo v3, "*t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Lorg/luaj/vm2/LuaValue;->tableOf()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    const-string/jumbo v1, "year"

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "month"

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "day"

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "hour"

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "min"

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "sec"

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "wday"

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "yday"

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "isdst"

    iget-object v3, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    invoke-static {v3, v2}, Lorg/luaj/vm2/lib/OsLib;->access$000(Lorg/luaj/vm2/lib/OsLib;Ljava/util/Calendar;)Z

    move-result v2

    invoke-static {v2}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->time(Lorg/luaj/vm2/LuaTable;)D

    move-result-wide v0

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->time(Lorg/luaj/vm2/LuaTable;)D

    move-result-wide v0

    :cond_2
    invoke-virtual {v3, v2, v0, v1}, Lorg/luaj/vm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkdouble(I)D

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkdouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/luaj/vm2/lib/OsLib;->difftime(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->execute(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->exit(I)V

    sget-object v0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->NONE:Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->NIL:Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->remove(Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/OsLib;->rename(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string/jumbo v3, "all"

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/OsLib;->setlocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->NIL:Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/luaj/vm2/Varargs;->opttable(ILorg/luaj/vm2/LuaTable;)Lorg/luaj/vm2/LuaTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/OsLib;->time(Lorg/luaj/vm2/LuaTable;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->a:Lorg/luaj/vm2/lib/OsLib;

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/OsLib;->tmpname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/OsLib$OsLibFunc;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
